require 'open-uri'
class VirtualUser < ActiveRecord::Base
  
  validates_presence_of :ip_address
  
  before_save :detect_country
  
  def VirtualUser.get(ip_address)
    unless (user = VirtualUser.find_by_ip_address(ip_address))
      user = VirtualUser.create(:ip_address => ip_address)
    end
    user
  end
  
  private
  def detect_country
    self.country ||=  open("http://api.wipmania.com/#{self.ip_address}?podarkof.net").read.to_s
  end
  
end
