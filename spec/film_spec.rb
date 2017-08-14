require 'rspec'
require 'film'

describe 'Film' do

  describe 'initialize' do
    it 'checks title, director and year' do
      film = Film.new('spec/fixtures/test.txt')
      expect(film.title).to eq '"Тестовое название"'
      expect(film.director).to eq 'Тестовый директор'
      expect(film.year).to eq '1111'
    end
  end
end
