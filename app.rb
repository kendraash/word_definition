require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('./lib/definition')

get('/') do
  @all_words = Word.all()
  erb(:index)
end

get('/word_form') do
  erb(:word_form)
end

get('/definition/') do
  # @definition = params.fetch("definition")
  # @definition = Definition.new({:definition => @definition})
  # @definition.save()
  # @word = Word.find(params.fetch('id').to_i())
  # @word.add_definition(@definition)
  erb(:definition)
end

get('/word/:id') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:definition)
end

post('/word') do
  @word = params.fetch("word")
  @definition = params.fetch("definition")
  @all_words = Word.new({:word => @word, :definition => @definition}).save()
  @all_words = Word.all()
  erb(:word)
end
