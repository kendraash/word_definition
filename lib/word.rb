class Word
  @@all_words
  attr_reader(:word, :definition)

  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
    @definition = []

  end
  define_singleton_method(:all) do
    @@all_words
  end
  
end
