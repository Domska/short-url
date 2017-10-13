Rails.application.routes.draw do
  root 'urls#new'
  get 'urls/new'
  
  get '/new',        to: 'urls#new'
  get '/urls',       to: 'urls#show'
  get '/index',      to: 'urls#index'
  get '/:short_url', to: 'urls#forward'
 
  
  resources :urls
end
