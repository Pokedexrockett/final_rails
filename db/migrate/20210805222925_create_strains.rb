class CreateStrains < ActiveRecord::Migration[6.1]
  def change
    create_table :strains do |t|
      t.string :name
      t.string :category
      t.integer :thc
      t.integer :cbd
      t.integer :rating
      t.string :notes
      t.integer :grower_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
