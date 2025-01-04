Rails.application.routes.draw do
  root "welcome#index"

  resource :session
  resources :passwords, param: :token
  resources :users, only: %i[ new create destroy ]

  resources :lists do
    resources :items do
      member do
        patch "move_up"
        patch "move_down"
      end
    end
  end
end
