class Post < ApplicationRecord
  belongs_to :author, foreign_key: 'author_id', class_name: 'User'
  has_many :comments, dependent: :destroy
  has_many :likes,  dependent: :destroy
  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  validates :likes_counter, numericality: { greater_than_or_equal_to: 0, only_integer: true }

  after_destroy :update_posts_counter

  def update_posts_counter
    author.update(:posts_counter)
  end

  def recent_comments
    comments.includes(:author).order('created_at Desc').limit(5)
  end
end
