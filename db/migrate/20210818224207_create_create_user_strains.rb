class CreateCreateUserStrains < ActiveRecord::Migration[6.1]
  def change
    create_table :create_user_strains do |t|

      t.timestamps
    end
  end
end
