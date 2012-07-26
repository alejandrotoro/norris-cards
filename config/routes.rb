NorrisCards::Application.routes.draw do
  
  resources :usuario_partidas

  resources :partidas

  resources :caracteristica_carta

  resources :caracteristicas

  resources :carta

  authenticated :user do
    root :to => 'users#dashboard', :as => :user_root
  end
  
  resources :barajas

  devise_for :users
  resources :users
  root :to => "home#index"
end
