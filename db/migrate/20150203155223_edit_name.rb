class EditName < ActiveRecord::Migration
  def change
  	rename_table :dictionary, :vocab_items
  end
end
