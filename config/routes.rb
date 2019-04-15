Rails.application.routes.draw do
  resources :subjects
  resources :tutor_subjects
  resources :users
  resources :student_tutor
  resources :review
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
