class Clear < ActiveRecord::Migration
  def change
  	drop_table :vocab_list_items
  end
end
