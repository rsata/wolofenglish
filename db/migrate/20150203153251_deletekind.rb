class Deletekind < ActiveRecord::Migration
  def down
  	remove_column :vocab_list_items, :kind
  end
end
