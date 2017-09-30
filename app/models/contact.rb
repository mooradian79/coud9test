class Contact < ActiveRecord::Base
  
  has_many :donations
  
  validates :last_name, presence: true, length: {minimum: 2, maximum: 15}
  validates :first_name, presence: true, length: {minimum: 2, maximum: 15}
  
end