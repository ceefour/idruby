class Publisher < ActiveRecord::Base
  has_many :books, :foreign_key => 'books_id'
end
