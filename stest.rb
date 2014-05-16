require 'sinatra'
require 'test_gem'

get '/FizzBuzz/' do
	'Enter Numbers after Fizz Buzz and then a format(plain, html or json), ex: FizzBuzz/45/json'
end

get '/FizzBuzz/:num/json' do
	main(params[:num], 'json')
end

get '/FizzBuzz/:num/plain' do
	main(params[:num], 'plain')
end

get '/FizzBuzz/:num/html' do
	main(params[:num], 'html')
end

get 'FizzBuzz/:num/*' do
	main(params[:num], 'plain')
end
