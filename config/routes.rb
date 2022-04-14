Rails.application.routes.draw do
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
