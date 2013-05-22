require 'sinatra'
require 'sinatra_more/markup_plugin'
require './connect_to_db.rb'

register SinatraMore::MarkupPlugin

after { ActiveRecord::Base.connection.close } # fix ConnectionTimeoutError

get "/" do
  redirect "/contact_us"
end

get "/contact_us" do
  halt erb(:contact_us)
end

post "/contact_us_post" do
  @comment          = ContactUsComment.new
  @comment.name     = params["name"]
  @comment.email    = params["email"]
  @comment.web_site = params["web_site"]
  @comment.country  = params["country"]
  @comment.comments = params["comments"]

  if @comment.save
    redirect "/thank_you"
  else
    halt erb(:contact_us_post)
  end
end

get "/thank_you"  do
  halt erb(:thank_you)
end
