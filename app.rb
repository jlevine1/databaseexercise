require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:example2.sqlite3"

require './models'

get '/' do
	User.create()
	# "A user was created."
	redirect '/sign-up'
end

get '/sign-up' do
	erb :sign_up
end

post '/sign-up-process' do
	@user=User.last
	@user.fname=params[:fname]
	@user.lname=params[:lname]
	@user.email=params[:email]
	@user.bday=params[:bday]
	@user.save
end