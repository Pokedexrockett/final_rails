class CreateStrainForms < ActiveRecord::Migration[6.1]
  def change
    create_table :strain_forms do |t|
      t.belongs_to :strain, index: true, foreign_key: true
      t.belongs_to :form, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
