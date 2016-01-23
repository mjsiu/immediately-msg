class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :message_id, null: false
      t.string :subject, null: false
      t.string :from, null: false
      t.string :to, null: false
      t.string :snippet, null: false
      t.datetime :date, null: false

      t.timestamps null: false
    end
  end
end
