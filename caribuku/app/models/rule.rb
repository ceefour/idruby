class Rule < ActiveRecord::Base
  has_one :rule, :foreign_key => 'rules_id'
end
