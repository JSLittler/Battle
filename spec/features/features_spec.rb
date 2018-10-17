feature 'Enter names' do

  before :each do 
    sign_in_and_play
  end

  scenario 'submitting names' do
    expect(page).to have_content 'Dave vs. Mittens'
  end

  scenario 'checking hit points' do
    expect(page).to have_content 'Dave 60HP'
    expect(page).to have_content 'Mittens 60HP'
  end

  scenario 'attacking' do
    click_link 'Attack'
    expect(page).to have_content 'Dave attacked Mittens'
  end

  scenario 'attack reduced player_2s HP by 10' do
    click_link 'Attack'
    expect(page).not_to have_content 'Mittens: 60HP'
    expect(page).to have_content 'Mittens 50HP'
  end

end