class AddFormToGrowerStrains < ActiveRecord::Migration[6.1]
  def change
    add_column :grower_strains, :form, :string
  end
end
