class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :pot_leaves
      t.string :note
      t.string :form
      t.integer :user_id
      t.integer :strain_id

      t.timestamps null: false
    end
  end
end
