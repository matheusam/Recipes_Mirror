require 'rails_helper'

feature 'View home page' do
  scenario 'Visit static home page' do
      visit root_path

      expect(page).to have_css('h1', text: 'Recipes Mirror')
      expect(page).to have_css('small', text: 'O mirror que cai junto com o server xD')
  end
end
