require 'test_gem'

get '/' do
	erb :index	
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

get '/?num=*&formatOpt=*'
	main(params[:num], [:formatOpt])
end
