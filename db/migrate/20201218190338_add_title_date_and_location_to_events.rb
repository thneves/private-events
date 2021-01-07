# frozen_string_literal: true

class AddTitleDateAndLocationToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :title, :string
    add_column :events, :location, :string
    add_column :events, :date, :date
  end
end
