class Book < ActiveRecord::Base
  #belongs_to :category, :foreign_key => 'categories_id' <-- karena bisa null (uncategories)
  
  has_one :publisher, :foreign_key => 'publishers_id'
  has_one :type, :foreign_key => 'types_id'
  
end
