class Comment < ApplicationRecord
  belongs_to :author, foreign_key: 'author_id', class_name: 'User'
  belongs_to :post, foreign_key: 'post_id', class_name: 'Post'
  after_destroy :update_comments_counter
  after_save :update_comments_counter

  def update_comments_counter
    post.update(:comments_counter)
  end
end
