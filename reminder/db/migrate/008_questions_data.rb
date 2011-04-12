class QuestionsData < ActiveRecord::Migration
  def self.up
#    ############# LEVEL 1
#    question = Question.create(:code=>'whom', :title => 'Who is the gift for?', 
#      :question_category => Question::QC_PERSON, :answer_type => Question::AT_RADIO,
#      :level => 1)
#    question.options << Option.create(:name => 'Her', :level => 1)
#    question.options << Option.create(:name => 'Him', :level => 1)
#    question.options << Option.create(:name => 'Them', :level => 1)
#    
#    
#    ############# LEVEL 2
#    question = Question.create(:code=>'relation_they', :title => 'They are?', 
#      :question_category => Question::QC_PERSON, :answer_type => Question::AT_RADIO,
#      :level => 2, :follow_after => Option.find_by_code('whom_them'))
#    question.options << Option.create(:name => 'friends', :level => 2)
#    question.options << Option.create(:name => 'grandparents', :level => 2)
#    question.options << Option.create(:name => 'a couple', :level => 2)
#    question.options << Option.create(:name => 'a family', :level => 2)
#    question.options << Option.create(:name => 'your parents', :level => 2)
#    question.options << Option.create(:name => 'your children', :level => 2)
#    question.options << Option.create(:name => 'your team', :level => 2)
#    
#    
#    question = Question.create(:code=>'relation_he', :title => 'He is your?', 
#      :question_category => Question::QC_PERSON, :answer_type => Question::AT_RADIO,
#      :level => 2, :follow_after => Option.find_by_code('whom_him'))
#    question.options << Option.create(:name => 'Husband', :level => 2)
#    question.options << Option.create(:name => 'Boyfriend', :level => 2)
#    question.options << Option.create(:name => 'Dad', :level => 2)
#    question.options << Option.create(:name => 'Brother', :level => 2)
#    question.options << Option.create(:name => 'Son', :level => 2)
#    question.options << Option.create(:name => 'Nephew', :level => 2) # Племянник
#    question.options << Option.create(:name => 'Grandchild', :level => 2)
#    question.options << Option.create(:name => 'Grandparent', :level => 2)    
#    question.options << Option.create(:name => 'Friend', :level => 2)
#    question.options << Option.create(:name => 'Client', :level => 2)
#    question.options << Option.create(:name => 'Co-Worker', :level => 2)
#    question.options << Option.create(:name => 'Emploee', :level => 2)
#    question.options << Option.create(:name => 'Teacher', :level => 2)
#    question.options << Option.create(:name => 'Relative', :level => 2)
#    
#    
#    question = Question.create(:code=>'relation_she', :title => 'She is your?', 
#      :question_category => Question::QC_PERSON, :answer_type => Question::AT_RADIO,
#      :level => 2, :follow_after => Option.find_by_code('whom_her'))
#    question.options << Option.create(:name => 'Girlfriend', :level => 2)
#    question.options << Option.create(:name => 'Wife', :level => 2)
#    question.options << Option.create(:name => 'Mom', :level => 2)
#    question.options << Option.create(:name => 'Sister', :level => 2)
#    question.options << Option.create(:name => 'Daughter', :level => 2)
#    question.options << Option.create(:name => 'Niece', :level => 2)
#    question.options << Option.find_by_name('Grandchild')
#    question.options << Option.find_by_name('Grandparent')    
#    question.options << Option.find_by_name('Friend')
#    question.options << Option.find_by_name('Client')
#    question.options << Option.find_by_name('Co-Worker')
#    question.options << Option.find_by_name('Emploee')
#    question.options << Option.find_by_name('Teacher')
#    question.options << Option.find_by_name('Relative')
#    
#    
#    ############# LEVEL 3
#    question = Question.create(:code=>'age', :title => 'What is the recipient\'s age?', 
#      :question_category => Question::QC_PERSON, :answer_type => Question::AT_RADIO,
#      :level => 3)
#    question.options << Option.create(:name => 'Under 17', :level => 3)
#    question.options << Option.create(:name => 'Ages 19-20', :level => 3)
#    question.options << Option.create(:name => 'Ages 21-24', :level => 3)
#    question.options << Option.create(:name => 'Ages 25-30', :level => 3)
#    question.options << Option.create(:name => 'Ages 31-40', :level => 3)
#    question.options << Option.create(:name => 'Ages 41-50', :level => 3)
#    question.options << Option.create(:name => 'Ages 51-65', :level => 3)
#    question.options << Option.create(:name => 'Ages 65 & Over', :level => 3)
#    
#    
#    ############# LEVEL 4
#    question = Question.create(:code=>'reason', :title => 'Reason for the gift?', 
#      :question_category => Question::QC_OCCASION, :answer_type => Question::AT_RADIO,
#      :level => 4)
#    question.options << Option.create(:name => 'Anniversary', :level => 4)
#    question.options << Option.create(:name => 'Engagement', :level => 4)
#    question.options << Option.create(:name => 'Wedding', :level => 4)
#    question.options << Option.create(:name => 'Baby born', :level => 4)
#    
#    
#    
#    ############# Holidays
#    Holiday.create(:title => 'Halloween', :month => 10, :day => 31)
#    Holiday.create(:title => 'Christmas', :month => 12, :day => 25)
#    Holiday.create(:title => 'New year', :month => 1, :day => 1)
#    Holiday.create(:title => 'Valentine\'s Day', :month => 2, :day => 14)
#    Holiday.create(:title => 'Ligo', :month => 6, :day => 23)
  end

  def self.down
  end
end
