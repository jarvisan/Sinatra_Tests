require 'test_gem'

get '/' do
	erb :index	
end

post '/FizzBuzz' do
	main(params[:num], params[:formatOpt])
end
