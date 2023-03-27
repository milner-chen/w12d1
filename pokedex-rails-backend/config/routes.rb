Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api, default: { format: :json } do
    resources :pokemons, only: [:index, :show, :new, :create, :edit, :udpate] do
      resources :items, only: [:index, :new, :create]
    end
    resources :items, only: [:edit, :update, :destroy]

    # get ':types', to: 'pokemon#types', 
  end
end
