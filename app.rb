require('sinatra')
require('sinatra/reloader')
require('./lib/palindrome')
also_reload('./lib/**/*.rb')


get('/') do
  erb(:index)
end

get('/results') do
  @palindrome_button = params.fetch('palindrome_button').palindrome()
  erb(:results)
end
