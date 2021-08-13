class CreateGrowerStrains < ActiveRecord::Migration[6.1]
  def change
    create_table :grower_strains do |t|
      t.integer :grower_id
      t.integer :strain_id

      t.timestamps null: false
    end
  end
end
