require('rspec')
require('word.rb')

describe(Word) do

  describe('#word') do
    it('returns a word') do
      test_word = Word.new({:word => 'permanently'})
      expect(test_word.word()).to(eq('permanently'))
    end
  end

  describe('#save') do
   it('adds a word to the array of saved words') do
     test_word = Word.new({:word => "forever"})
     test_word.save()
     expect(Word.all()).to(eq([test_word]))
   end
 end
end
