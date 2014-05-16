require 'sinatra'
require 'test_gem'

get '/FizzBuzz/' do
	'Enter Numbers after Fizz Buzz, ex: FizzBuzz/45'
end

get '/FizzBuzz/:num' do
	main(params[:num])
end
