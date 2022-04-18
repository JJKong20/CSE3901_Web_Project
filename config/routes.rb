Rails.application.routes.draw do
  get 'home_pages/home'
  get 'home_pages/student_login'
  get 'home_pages/student_create_account'
  get 'home_pages/admin_login'
  get 'home_pages/admin_create_account'

  get 'student_pages/home'

  get 'admin_pages/home'
  get 'admin_pages/roster'

  # comment out this root to merge back with normal functionality'
  root 'admin_pages#home'


  # uncomment out to retun to normal functionality
  #root 'home_pages#home'


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
