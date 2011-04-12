class Question < ActiveRecord::Base
  has_and_belongs_to_many :options, :uniq => true, :before_add => :fire_before_answer_add, :order => 'level DESC'
  
  belongs_to :follow_after, :class_name => 'Option'
  
#  after_update :save_options
#  before_validation :destroy_options
  
  validates_presence_of :title
  validates_presence_of :level
  validates_associated :options
  
  validates_uniqueness_of :level, :scope => :follow_after_id
  
  named_scope :level, lambda {|level| {:conditions => {:level => level} } }
  
  QC_PERSON   = 1
  QC_OCCASION = 2
  
  AT_RADIO = 1
  AT_CHECK = 2
  
  def Question.unaswered_question(options)
    levels = options.collect{|o| o.level}.uniq
    for level in 1..max_level do
      return next_by_level(level, options.collect{|o| o.id}) unless levels.include? level
    end
    nil
  end
  
  def Question.next_by_level(level, option_ids=[])
    return nil if level > max_level
    sequence_question(level, option_ids) or default_question(level) or Question.next_by_level(level+1)
  end
  
  def options_attributes=(answer_names)
    answer_names.each do |name|
      options.build(:name => name, :level => self.level) unless name.blank?
    end
  end
  
  private
  def save_options
    options.each do |a|
      a.save(true)
    end
  end
  
  def destroy_options
    options.each do |a|
      a.destroy if a.should_destroy?
    end
  end
  
  def Question.default_question(level)
    Question.level(level).find(:all, :include => [:options]).detect{|q| q.follow_after == nil}
  end
  
  def Question.max_level
    @max_level ||= Question.maximum(:level)
    @max_level
  end
  
  def Question.sequence_question(level, option_ids)
    return nil if option_ids.empty?
    questions = Question.level(level).to_a.find_all{|q| not q.follow_after.nil?}
    return nil if questions.empty?
    questions.detect{|q| option_ids.include?(q.follow_after.id)}
  end
  
  def fire_before_answer_add(record)
    raise ActiveRecord::ActiveRecordError if self.level != record.level
  end
  
end
