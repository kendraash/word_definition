class Word
  @@all_words = []
  attr_reader(:word, :definition, :id)

  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
    @definition = []
    @id = @@all_words.length().+(1)

  end

  define_method(:id) do
   @id
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

  define_method(:defintion) do
    @defintion
  end

  define_method(:add_definition) do |definition|
    @definition.push(definition)
  end

  define_singleton_method(:find) do |id|
    found_word = nil
    @@all_words.each() do |word|
      if word.id().eql?(id)
        found_word = word
      end
    end
    found_word
  end
end
