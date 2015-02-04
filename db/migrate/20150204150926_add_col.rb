class AddCol < ActiveRecord::Migration
  def change
  	add_column :vocab_items, :sound, :string
  end
end
