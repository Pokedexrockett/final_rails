class CreateGrowers < ActiveRecord::Migration[6.1]
  def change
    create_table :growers do |t|
      t.string :name
      t.integer :user_id
      t.integer :form_id 

      t.timestamps null: false
    end
  end
end
