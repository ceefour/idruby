class UsersHasBooks < ActiveRecord::Base
  belongs_to :user, :foreign_key => 'users_id'
  has_one :book, :foreign_keys => ['books_id','books_types_id', 'books_publishers_id']
  
end
