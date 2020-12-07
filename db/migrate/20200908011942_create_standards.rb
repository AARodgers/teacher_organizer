# frozen_string_literal: true

# Creates Standard table with title and description attributes.
class CreateStandards < ActiveRecord::Migration[6.0]
  def change
    create_table :standards do |t|
      t.string :title
      t.string :description
    end
  end
end
