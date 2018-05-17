class CreateDoses < ActiveRecord::Migration[5.2]
  def change
    create_table :doses do |t|
      t.references :ingredients, foreign_key: true
      t.references :cocktails, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
