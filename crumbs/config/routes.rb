Rails.application.routes.draw do

  root to: "pages#index"
  resources :students, except: [:index, :destory, :show]
  get 'student/:name/:id', to: 'students#show', as: 'student_show'

  get 'auth/:provider/callback', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
