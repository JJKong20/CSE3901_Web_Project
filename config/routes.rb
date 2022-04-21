Rails.application.routes.draw do
  root 'home_pages#home'
  get 'home_pages/home'
  get 'home_pages/student_login'
  get 'home_pages/student_create_account', to: 'students#signup'
  post 'home_pages/student_create_account', to: 'students#signup'
  get 'home_pages/admin_create_account', to: 'admins#new'
  get 'home_pages/admin_login', to: 'sessions#new'
  post 'home_pages/admin_login', to: 'sessions#create'
  delete 'home_pages/admin_logout', to: 'sessions#destroy'
  get 'admin_pages/home'
  get 'student_pages/home'
  get 'student_pages/eval'

  get 'admin_pages/home'
  get 'admin_pages/roster'
  get 'admin_pages/projects'
  get 'admin_pages/teams'
  get 'admin_pages/teamParams'
  post 'admin_pages/teamParams'
  

  # comment out this root to merge back with normal functionality'
  


  resources :student_on_teams
  resources :works_ons
  resources :submissions
  resources :evaluates
  resources :projects
  resources :teams
  resources :students
  resources :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
