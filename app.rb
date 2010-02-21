require 'rubygems'
require 'sinatra'
require 'faker'
require 'lib/faker_helper'

include Faker
include FakerHelper

get "/" do
  @ordered_fake_keys, @fake_hash = common_fake_data
  erb :index
end

helpers do
  :clippy
end

#Exception handing for production environment
configure :production do
  not_found do
    'This is nowhere to be found'
  end
  error do
    'Sorry there was a nasty error - ' + request.env['sinatra.error'].name
  end
end