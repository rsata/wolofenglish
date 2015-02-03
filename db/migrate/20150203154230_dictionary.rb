class Dictionary < ActiveRecord::Migration
  def change
    create_table :dictionary do |t|
      t.string :wolof
      t.string :english
    end
  end
end