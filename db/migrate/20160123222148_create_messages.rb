class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :subject, null: false
      t.string :from, null: false
      t.string :to, null: false
      t.datetime :date, null: false
      t.text :payload_body, null: false

      t.timestamps null: false
    end
  end
end
