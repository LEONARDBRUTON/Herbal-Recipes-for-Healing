class HerbalRecipes < ActiveRecord::Migration
  def change
    create_table :herbal_recipes do |t|
      t.string :title
      t.text :herb
      t.string :ingredents
      t.text :instructions
      t.string :image
      t.integer :user_id
    end
  end
end
