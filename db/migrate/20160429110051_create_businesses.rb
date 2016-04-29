class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |c|
      c.string :vendor_formal_name
      c.string :business_description
      c.string :address1
      c.string :address2
      c.string :city
      c.string :state
      c.integer :zip
      c.string :website
      c.integer :telephone

      c.timestamps null: false
    end
  end
end
