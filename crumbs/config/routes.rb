Rails.application.routes.draw do

  root to: "pages#index"
  resources :students, except: [:index, :destory, :show]
  resources :non_profits do
    resources :projects
  end
  get 'projects', to: 'projects#all', as: 'project_all'
  get 'student/:name/:id', to: 'students#show', as: 'student_show'


  get 'auth/:provider/callback', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
