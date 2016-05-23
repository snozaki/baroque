class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :user_id, null: false
      t.text :title
      t.text :text
      t.timestamps null: false
    end
  end
end
