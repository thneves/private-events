class RemoveDateFromEvent < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :date
  end
end
