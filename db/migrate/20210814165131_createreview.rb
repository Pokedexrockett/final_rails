class CreateReview < ActiveRecord::Migration[6.1]
  def change
    create_table :strains do |t|
      t.integer :rating
      t.string :note
      t.string :form
      t.integer :user_id
      t.integer :strain_id


    

      t.timestamps null: false
    end
  end
end
