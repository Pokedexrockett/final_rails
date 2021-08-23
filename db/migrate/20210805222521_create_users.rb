class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.string :password_digest
      t.string :name 
      t.string :image 
      t.string :uid

      t.timestamps null: false
    end
  end
end
