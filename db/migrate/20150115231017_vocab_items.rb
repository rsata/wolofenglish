class VocabItems < ActiveRecord::Migration
  def change
    create_table :vocab_list_items do |t|
      t.string :wolof
      t.string :english
      t.string :kind
    end
  end
end
