Rails.application.routes.draw do

  root to: "pages#index"
  resources :students, except: [:index, :destory]

  get 'auth/:provider/callback', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
