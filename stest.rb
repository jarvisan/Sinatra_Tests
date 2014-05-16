require 'test_gem'

get '/' do
	'Enter a Number after FizzBuzz and then a format(plain, html or json), ex: /45/json'
end

get '/:num/json' do
	main(params[:num], 'json')
end

get '/:num/plain' do
	main(params[:num], 'plain')
end

get '/:num/html' do
	main(params[:num], 'html')
end

get '/:num/*' do
	redirect "/"
end
