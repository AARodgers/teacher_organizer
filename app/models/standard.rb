class Standard < ActiveRecord::Base
    belongs_to :user
    has_many :standard_resources
    has_many :resources, through: :standard_resources
end
