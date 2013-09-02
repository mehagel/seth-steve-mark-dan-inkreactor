class CreatePostsTags < ActiveRecord::Migration
  def up
    create_table :posts_tags, :id => false do |t|
    	t.references :post
    	t.references :tag
    end

    add_index :posts_tags, [:tag_id, :post_id]
    add_index :posts_tags, :post_id
  end

  def down
  	drop_table :posts_tags
  end
end