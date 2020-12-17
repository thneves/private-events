class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    drop_table :events
    drop_table :subscriptions

    create_table :events do |t|
      t.text :description
      t.datetime :date

      t.timestamps
    end
  end
end
