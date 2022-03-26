class CreateBlogArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :blog_articles do |t|
      t.string :slug
      t.string :title
      t.text :content
      t.datetime :createdAt
      t.datetime :updatedAt
      t.datetime :publishedAt

      t.timestamps
    end
  end
end
