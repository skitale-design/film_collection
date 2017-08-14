require 'rspec'
require 'film'

describe 'Film' do

  describe 'read_from_file' do
    it 'should check reading from file' do
      expect(File.readlines('spec/fixtures/test.txt').empty?).to eq false
    end
  end

  describe 'initialize' do
    it 'checks title, director and year' do
      film = Film.new('spec/fixtures/test.txt')
      expect(film.title).to eq '"Тестовое название"'
      expect(film.director).to eq 'Тестовый директор'
      expect(film.year).to eq '1111'
    end
  end
end
