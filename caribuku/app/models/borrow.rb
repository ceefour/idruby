class Borrow < ActiveRecord::Base
  belongs_to :rule, :foreign_key => 'rules_id'
end
