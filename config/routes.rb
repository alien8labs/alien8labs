Alien8labsCom::Application.routes.draw do
  root :to => 'home#index'

  resources :contacts, :only => [:new, :create]
end
