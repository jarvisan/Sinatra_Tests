require 'test_gem'

get '/' do
	erb :index	
end

post '/FizzBuzz' do
	main(params[:num], params[:formatOpt])
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
