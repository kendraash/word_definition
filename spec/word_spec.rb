require('rspec')
require('word.rb')

describe(Word) do

  before() do
   Word.clear()
 end

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

 describe('.all') do
  it('is empty at first') do
    expect(Word.all()).to(eq([]))
  end
end

  describe('.clear') do
    it('empties out all of the saved words') do
    test_word = Word.new({:word => "forever"}).save()
      Word.clear
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#add_definition') do
    it('adds a new definition to word') do
      test_word = Word.new({:word => "permanently"})
      test_definition = Definition.new({:definition => 'in a way that lasts or remains unchanged indefinitely; for all time.'})
      test_word.add_definition(test_definition)
      expect(test_word.definition()).to(eq([test_definition]))
    end
  end

  describe(".find") do
    it("returns a word by its id number") do
      test_word = Word.new({:word => "forever"})
      test_word.save()
      test_word2 = Word.new({:word =>"permanently"})
      test_word2.save()
      expect(Word.find(test_word.id())).to(eq(test_word))
    end
  end

end
