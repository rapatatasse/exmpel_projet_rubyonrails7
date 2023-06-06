class Client < ApplicationRecord
  belongs_to :user

  def fullname
    "#{self.username.capitalize} #{self.lastname.upcase}"
  end
  
end
