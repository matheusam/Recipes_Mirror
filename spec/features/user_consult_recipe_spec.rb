require 'rails_helper'
feature 'consult recipe' do
  scenario 'Successfully' do
    visit root_path
    click_on 'Feijoada'

    expect(page).to have_css('h1', text: 'Feijoada')
    expect(page).to have_link('Voltar')
  end
end
