require 'rails_helper'

feature 'View home page' do
  scenario 'Visit static home page' do
      visit root_path

      expect(page).to have_css('h1', text: 'Recipes Mirror')
      expect(page).to have_css('small', text: 'O mirror que cai junto com o server xD')
  end

  scenario 'View menu options' do
    visit root_path

    expect(page).to have_css('li', text: 'Todas receitas')
    expect(page).to have_css('li', text: 'Criar receita')
  end
end
