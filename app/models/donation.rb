class Donation < ActiveRecord::Base
  validates :donation_date, :amount, presence: true
end