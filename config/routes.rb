NorrisCards::Application.routes.draw do
  
  resources :usuario_carta

  match '/puntajes' => 'users#puntajes'
  
  resources :usuario_partidas
  resources :partidas
  resources :caracteristica_carta
  resources :caracteristicas
  authenticated :user do
    root :to => 'users#dashboard', :as => :user_root
  end
  resources :barajas
  resources :carta
  devise_for :users
  resources :users
  root :to => "home#index"
end
