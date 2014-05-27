require './lib/fizz_buzz'

get '/' do
	erb :index	
end

post '/FizzBuzz' do
	FizzBuzz.new.fizzbuzz(params[:num], params[:formatOpt])
end
