require 'sinatra'
require './lib/fizz_buzz'
require './lib/formatter'

get '/' do
  erb :index	
end

post '/FizzBuzz' do
  fb = FizzBuzz.new(params[:num])
  Formatter.new(fb.fizzbuzz).format_as(params[:format])
end
