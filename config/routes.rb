Rails.application.routes.draw do
  root 'dashboard#index'
  resources :subjects
  resources :tutor_subjects
  resources :users
  resources :student_tutors
  resources :reviews, only: [:index, :show, :new, :create, :edit, :update, :delete]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
