class HerbalRecipes < ActiveRecord::Migration
  def change
    create_table :herbal_recipes do |t|
      t.string :title
      t.string :ingredents
      t.text :method 
      t.string :image
      t.integer :user_id
    end
  end
end
