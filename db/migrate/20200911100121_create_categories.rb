class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :description
      t.boolean :published

      t.timestamps
    end
  end
end