class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.text   :bio, null: false
      t.text   :quote, null: false
      t.string :username, null: false
      t.string :password, null: false

      t.timestamps null: false
    end
  end
end
