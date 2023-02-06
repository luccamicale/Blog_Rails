require 'rails_helper'
RSpec.describe User, type: :system do
  describe 'index page' do
    it 'the index users should be name of Tom' do
      visit users_path
      expect(page).to have_content('Tom')
    end
  end
end
