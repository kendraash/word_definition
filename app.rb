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

get('/word/:id') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:definition)
end

post('/word') do
  @word = params.fetch("word")
  @definition = params.fetch("definition")
  Definition.new({:definition => @definition})
  Word.new({:word => @word}).save()
  @all_words = Word.all()
  erb(:word)
end
