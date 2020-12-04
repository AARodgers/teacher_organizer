# frozen_string_literal: true

class Resource < ActiveRecord::Base
  has_many :standard_resources
  has_many :standards, through: :standard_resources
end
