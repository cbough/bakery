require 'sinatra'
require 'httparty'
require 'action_mailer'
require './mailer.rb'
require "./pastries.rb"
# puts "This is process #{Process.methods}"
def send_to(rec)
  Letter.send_email(rec).deliver_now
end

cookie1 = Cookie.new("Chocolate Chip", "$3", "images/chocolatechip.jpg" ,"A good 'ol classic'");
cookie2 = Cookie.new("chocolatechunk", "$4", "images/chocolatechunk.jfif", "Savoring stuffed chocolate goodness")
cookie3 = Cookie.new("Peanut Butter", "$3.80", "images/peanutcookie.jpg", "our signature peanut butter cookies")


cake1 = Cake.new("Sour Patch", "$122", "images/sourpatchcake.jpg", "Sour, sweet, gone...")
cake2 = Cake.new("Rainbow Unicorn", "$200", "images/rainbow-pegacorn.jpg", "That's right we went there")
cake3 = Cake.new("Peacot cake", "$139", "images/customcake2.jpg", "Peacot cake")


muffin1 = Cake.new("Apple Cider", "$10", "images/applecider.jpg", "Made with natural ingredients")
muffin2 = Cake.new("Banana Muffin", "$5", "images/bananamuffin.jpg", "light treat for the cautious")
muffin3 = Cake.new("Cookie Monster", "$50", "images/cmonstercupcakes.jpg", "C is for cookie and it's good enough for you")


get '/' do
  erb :home
end

# get '/cakes' do
#   email = "christopherbough85@gmail.com"
#   # puts email.class
#   send_to(email)
#   erb :cakes
# end
get '/cookies' do
    @header = "OUR COOKIES"
    @cookies = [cookie1, cookie2, cookie3]
    @output = @cookies
    erb :cookies
 end


 get '/cakes' do
    @header = "OUR CAKES"
    @cakes = [cake1, cake2, cake3]
    @output=@cakes
    erb :cakes
 end


 get '/muffins' do
    @header = "OUR MUFFINS"
    @muffins = [muffin1, muffin2, muffin3]
    @output=@muffins
    erb :muffins 
 end

get '/email' do
  erb :email
end

get '/event' do
  erb :event
end
