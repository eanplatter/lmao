require 'sinatra'
require 'sinatra/json'

class User
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @id = rand(1..100000)
  end
  def first_name
    @first_name
  end
  def last_name
    @last_name
  end
  def id
    @id
  end
  def details
    @deets = { :first => @first_name, :surname => @last_name, :id => @id }
  end
end

user = User.new('Ean', 'Plato')

before do
  request.body.rewind
  @request_payload = JSON.parse request.body.read
end

get '/user' do
  json user.details
end

post '/user' do
  json @request_payload
end

