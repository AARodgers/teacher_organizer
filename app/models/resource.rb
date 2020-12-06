# frozen_string_literal: true

# A Resource is something that a teacher uses to teach a standard.
class Resource < ActiveRecord::Base
  has_many :standard_resources
  has_many :standards, through: :standard_resources
end
