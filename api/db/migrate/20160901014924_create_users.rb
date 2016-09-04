class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text :name, null: true, default: ""
      t.text :authentication_token
      t.timestamps
    end
  end
end
