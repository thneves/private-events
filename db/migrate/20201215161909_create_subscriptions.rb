class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.references :event_creator, index: true, foreign_key: { to_table: :users }
      t.references :created_event, index: true, foreign_key: { to_table: :events }

      t.timestamps
    end
  end
end
