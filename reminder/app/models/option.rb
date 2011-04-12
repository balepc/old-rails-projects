class Option < ActiveRecord::Base
  attr_accessor :should_destroy
  
  validates_presence_of :name
  validates_presence_of :option_type
  
  AGE = "age"
  PERSON = "person"
  REASON = "reason"
  
  def select!
    self.update_attribute(:selection_count, self.selection_count + 1)
  end
  
  def Option.option_types
    [AGE, PERSON, REASON]
  end
  
  def indicate_person?
    self.option_type == PERSON
  end
  
  def indicate_reason?
    self.option_type == REASON
  end
  
end
