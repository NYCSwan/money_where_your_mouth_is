class ConvertIntegerToString < ActiveRecord::Migration
  def change
    change_column :businesses, :zip, :string
    change_column :businesses, :telephone, :string
  end
end
