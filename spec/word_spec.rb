require('rspec')
require('word.rb')

describe(Word) do

  describe('#word') do
    it('returns a word') do
      test_word = Word.new({:word => 'permanently'})
      expect(test_word.word()).to(eq('permanently'))
    end
  end
end
