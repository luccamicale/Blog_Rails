require 'rails_helper'
RSpec.describe User, type: :system do
  describe 'index page' do
    it 'I can see the username of all other users.' do
      visit users_path
      expect(page).to have_content('Tom')
    end

    it 'I can see the profile picture for each user.' do
      visit users_path
      expect(page).to have_xpath("//img[@src='https://unsplash.com/photos/F_-0BxGuVvo']")
    end

    it 'I can see the number of posts each user has written.' do
      visit users_path
      expect(page).to have_content('Number of posts: 0')
    end

    it 'When I click on a user Lilly, I am redirected to that user show.' do
      visit users_path
      click_link 'Lilly'
      expect(page).to have_current_path(user_path(7))
    end
  end
end
