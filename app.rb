require 'sinatra'
require 'sinatra/json'

user = { "First Name" => "Ean", "Last Name" => "Plato" }

get '/' do
  json user
end

