class Donation < ActiveRecord::Base
  
  belongs_to :contact
  
  validates :donation_date, :amount, presence: true
  validates :contact_id, presence: true
end