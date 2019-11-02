feature 'Confirm' do
  scenario 'Get given the options of weapons to choose from' do
    sign_in_and_play
    click_button('Choose weapon')
    expect(page).to have_content 'Now choose your weapon'
  end
  scenario 'Weapon is chosen and confirmed on screen' do
    sign_in_and_play
    click_button('Choose weapon')
    click_button('OK')
    expect(page).to have_content 'Amy chose __'
  end
end
