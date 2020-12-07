# frozen_string_literal: true

# Creates join table for Standard and Resource models.
class CreateStandardResources < ActiveRecord::Migration[6.0]
  def change
    create_table :standard_resources do |t|
      t.integer :standard_id
      t.integer :resource_id
    end
  end
end
