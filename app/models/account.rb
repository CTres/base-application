class Account < ActiveRecord::Base
  
  # Associations
  has_many :users
  # attr_accessible :title, :body
  accepts_nested_attributes_for :users
end
