# frozen_string_literal: true

class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :description
      t.references :creator, index: true, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
