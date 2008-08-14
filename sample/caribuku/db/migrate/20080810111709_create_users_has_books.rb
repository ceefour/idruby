class CreateUsersHasBooks < ActiveRecord::Migration
  def self.up
    create_table :users_has_books do |t|
      t.integer :users_id, :null => false
      t.integer :books_types_id, :null => false
      t.integer :books_id, :null => false
      t.integer :books_publishers_id, :null => false
      t.text    :attacment
      t.timestamps
    end
    add_index :users_has_books , :users_id, :name => 'users_has_books_FKIndex1'
    add_index :users_has_books , [:books_id, :books_types_id, :books_publishers_id], :uniq => true, :name => 'users_has_books_FKIndex2'
  end

  def self.down
    drop_table :users_has_books
  end
end
