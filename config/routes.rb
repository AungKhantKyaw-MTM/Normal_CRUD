Rails.application.routes.draw do
  resources :users do
    collection do
      post :bulk_email
    end
  end
  
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  root "articles#index"
  
  resources :articles do
    resources :comments
  end
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
