# frozen_string_literal: true

class CreateAttendences < ActiveRecord::Migration[6.0]
  def change
    create_table :attendences do |t|
      t.references :event_attende, index: true, foreign_key: { to_table: :users }
      t.references :attended_event, index: true, foreign_key: { to_table: :events }

      t.timestamps
    end
  end
end
