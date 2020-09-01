class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.references :writer, foreign_key: true
      t.string :image_id

      t.timestamps
    end
  end
end
