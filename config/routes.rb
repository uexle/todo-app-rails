Rails.application.routes.draw do
  root "lists#index"

  resources :lists do
    resources :items do
      member do
        patch "move_up"
        patch "move_down"
      end
    end
  end
end
