class CreateStandards < ActiveRecord::Migration[6.0]
  def change
    create_table :standards do |t|
      t.string :title
      t.string :description
      t.string :resource_id
      t.integer :user_id
    end
  end
end
