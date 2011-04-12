module PassGenerator
    
  def generate
    schars = "0124356789abcdefghijklmnopqrstuvwqyz"
    password = ""
    1.upto(8) { password += schars[rand(schars.length),1] }
    password
  end
    
end