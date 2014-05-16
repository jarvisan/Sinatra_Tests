require 'sinatra'
require 'test_gem'

get '/FizzBuzz/' do
	'Enter Numbers after Fizz Buzz and then a format, ex: FizzBuzz/45/json'
end

get '/FizzBuzz/:num/json' do
	main(params[:num])
end

get '/FizzBuzz/:num/plain' do
	'not finished'
end

get '/FizzBuzz/:num/html' do
	'not finished'
end
