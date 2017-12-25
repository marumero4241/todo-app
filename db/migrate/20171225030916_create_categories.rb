class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :category
      t.references :user, foreign_key: true
      t.timestamps
    end
    add_index :categories, [:user_id, :created_at], unique: true
  end
end
