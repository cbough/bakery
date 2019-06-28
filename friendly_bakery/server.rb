require 'sinatra'
require 'httparty'
require 'action_mailer'
require './mailer.rb'
puts "This is process #{Process.methods}"
def send_to(rec)
  Letter.send_email(rec).deliver_now
end


get '/' do
  erb :home
end

get '/cakes' do
  email = "christopherbough85@gmail.com"
  puts email.class
  send_to(email)
  erb :cakes
end

get '/muffins' do
  erb :muffins
end

get '/cookies' do
  erb :cookies
end

get '/event' do
  erb :event
end
