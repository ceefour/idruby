class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books  do |t|
      t.integer  :types_id, :null => false
      t.integer  :publishers_id, :null => false
      t.string   :title
      t.string   :isbn
      t.text     :description
      t.integer  :code
      t.integer  :pages
      t.date     :buyDate
      t.string   :author
      t.text     :screenshot
      t.date     :created_at
      t.date     :updated_at
      t.timestamps
   end
   add_index :books, :types_id
   add_index :books, :publishers_id
  end

  def self.down
    drop_table :books
  end
end
