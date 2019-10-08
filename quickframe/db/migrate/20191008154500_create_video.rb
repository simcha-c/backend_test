class CreateVideo < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.integer :message_id, null: false
      t.float :duration, null: false
      t.string :frame_rate, null: false

      t.timestamps
    end
    add_index :videos, :message_id
  end
end
