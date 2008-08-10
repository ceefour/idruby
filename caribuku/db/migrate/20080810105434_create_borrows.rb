class CreateBorrows < ActiveRecord::Migration
  def self.up
    create_table :borrows do |t|
      t.integer :rules_id, :null => false
      t.integer :users_id, :null => false
      t.integer :books_types_id, :null => false
      t.integer :books_id, :null => false
      t.integer :books_publishers_id, :null => false
      t.date    :startDate
      t.date    :endDate
      t.integer :qty
      t.string  :last_status
      t.timestamps
    end
    
      add_index :borrows, :rules_id, :name => 'borrows_FKIndex1' 
      add_index :borrows, :users_id, :name => 'borrows_FKIndex2'
      add_index :borrows, [:books_id, :books_types_id, :books_publishers_id], :uniq => true, :name => 'borrows_FKIndex3'
  end

  def self.down
    drop_table :borrows
  end
end
