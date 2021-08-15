class CreateUserStrains < ActiveRecord::Migration[6.1]
  def change
    create_table :user_strains do |t|
      t.integer :user_id
      t.integer :strain_id

      t.timestamps null: false
    end
  end
end
