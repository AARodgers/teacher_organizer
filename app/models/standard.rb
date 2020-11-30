class Standard < ActiveRecord::Base
  has_many :standard_resources
  has_many :user_standards
  has_many :resources, through: :standard_resources
  has_many :users, through: :user_standards
end
