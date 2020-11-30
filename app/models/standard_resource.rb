class StandardResource < ActiveRecord::Base
  belongs_to :standard
  belongs_to :resource
end
