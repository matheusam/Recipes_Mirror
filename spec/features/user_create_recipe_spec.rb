require 'rails_helper'

feature 'User create recipe' do
  scenario 'Successfully' do
    click_on 'Criar receita'
    fill_in 'Título', with: 'Tabule'
    select 'Sobremesa', from: 'Tipo da Receita'
    select 'Brasileira', from: 'Cozinha'
    fill_in 'Dificuldade', with: 'Fácil'
    fill_in 'Tempo de Preparo', with: '45'
    fill_in 'Ingredientes', with: 'Trigo para quibe, cebola, tomate picado, '\
                                  'azeite, salsinha'
    fill_in 'Como Preparar', with: 'Misturar tudo e servir. Adicione limão a '\
                                   'gosto.'
    # attach_file 'Foto', Rails.root.join('spec', 'support', file_name)
    click_on 'Enviar'
    visit root_path

    expect(page).to have_css('h1', text: 'Tabule')
  end

  scenario 'and must fill in all fields' do
    click_on 'Criar uma receita'
    fill_in 'Título', with: ''
    fill_in 'Dificuldade', with: ''
    fill_in 'Tempo de Preparo', with: ''
    fill_in 'Ingredientes', with: ''
    fill_in 'Como Preparar', with: ''
    click_on 'Enviar'

    expect(page).to have_content('Você deve informar todos os dados da receita')
  end
end
