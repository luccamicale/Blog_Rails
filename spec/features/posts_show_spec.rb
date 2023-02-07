require 'rails_helper'
RSpec.describe Post, type: :system do
  describe 'show user page' do
    it 'I can see the posts title.' do
      visit user_post_path(1, 1)
      expect(page).to have_content('Post #1')
    end

    it 'I can see the posts title.' do
      visit user_post_path(1, 1)
      expect(page).to have_content('Tom')
    end

    it 'I can see the posts title.' do
      visit user_post_path(1, 1)
      expect(page).to have_content('Comments: 0')
    end

    it 'I can see how many likes it has.' do
      visit user_post_path(1, 1)
      expect(page).to have_content('Likes: 0')
    end

    it 'I can see the post body.' do
      visit user_post_path(1, 1)
      expect(page).to have_content('Post #1')
    end

    it 'I can see the username of each commentor.' do
      visit user_post_path(1, 1)
      post = Post.includes(:comments, comments: [:author]).first
      post.comments.each do |comment|
        expect(page).to have_content(comment.author.name)
      end
    end
  end
end
