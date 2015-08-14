class Word
  @@all_words = []
  attr_reader(:word, :definition)

  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
    @definition = []

  end
  define_singleton_method(:all) do
    @@all_words
  end

  define_method(:save) do
    @@all_words.push(self)
  end

  define_singleton_method(:clear) do
    @@all_words = []
  end

  define_method(:add_definition) do |definition|
    @definition.push(definition)
  end

end
