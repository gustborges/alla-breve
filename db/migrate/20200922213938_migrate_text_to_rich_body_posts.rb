class MigrateTextToRichBodyPosts < ActiveRecord::Migration[6.0]
  def up
      Post.find_each do |post|
        post.update(rich_body: post.text)
      end
    end

    def down
      Post.find_each do |post|
        post.update(text: post.rich_body)
        post.update(rich_body: nil)
      end
    end
end
