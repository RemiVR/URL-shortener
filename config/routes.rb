Rails.application.routes.draw do
root 'links#home'
get '/links' => 'links#index'
end
