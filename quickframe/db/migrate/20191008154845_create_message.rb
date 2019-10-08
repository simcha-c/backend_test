class CreateMessage < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :username, null: false
      t.string :title, null: false
      t.string :source, null: false
      t.string :file_name, null: false

      t.timestamps
    end
  end
end
