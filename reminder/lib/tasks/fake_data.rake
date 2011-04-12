namespace :db do
  
  desc "Erase and fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'
    
    Item.all.each(&:destroy)
    
    
    Item.populate 100 do |item|
      item.title = Populator.words(2..3).titleize
      item.description = Populator.sentences(2..5)
      item.link = Faker::Internet.domain_name()
      item.price = rand * 1000
    end
    
    Item.all.each do |item|
      item.options << Option.find(rand(42)+1)
      item.options << Option.find(rand(42)+1)
      item.options << Option.find(rand(42)+1)
      item.options << Option.find(rand(42)+1)
      item.options << Option.find(rand(42)+1)
    end
    
  end
  
end