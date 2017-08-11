require 'film'

describe 'Film' do

  it 'Initialize' do

    film = Film.new('spec/fixtures/test.txt')

    expect(film.title).to eq '"Тестовое название"'
    expect(film.director).to eq 'Тестовый директор'
    expect(film.year).to eq '1111'

  end

end

