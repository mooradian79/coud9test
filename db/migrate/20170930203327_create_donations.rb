class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.date  :donation_date
      t.float     :amount
      t.string    :source
      t.text      :donation_memo
      t.timestamps
    end
  end
end
