class AddContactItToDonations < ActiveRecord::Migration
  def change
    add_column :donations, :contact_id, :integer
  end
end
