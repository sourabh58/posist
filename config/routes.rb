Rails.application.routes.draw do
  devise_for :owners
  root to: 'static#home'

  resources :owner do
      resources :records do
          resources :nodes
      end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
