Rails.application.routes.draw do

get '/' => 'site#home'
get '/urls' => 'urls#index'
get '/:urls_id' => 'urls#show'
get '/urls/new' => 'urls#new'
post '/urls' => 'urls#create'


end

