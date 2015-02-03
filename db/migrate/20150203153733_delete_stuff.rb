class DeleteStuff < ActiveRecord::Migration
  def change
  	remove_column :vocab_list_items, :kind
  	drop_table :counter
  	drop_table :dictionary
  	drop_table :todo_items
  	drop_table :vocab_items
  end
end
