Rails.application.routes.draw do
  resources :events
  root 'welcome#index'
  resources :properties
  #ROUTES DEFINED ACCORDING TO MY PREFERENCE
  get 'home' => 'welcome#index' 
  get '/properties' => 'properties#properties'
end
