Rails.application.routes.draw do
  devise_for :users
  root 'dashboard#index'
  resources :subjects
  resources :tutor_subjects
  resources :users
  resources :student_tutor
  resources :review

  get '/users/subjects/:id', to: 'users#subjects'
  post '/users/subjects/:id', to: 'users#subjectupdate'
  post '/student_tutor/:id', to: 'student_tutor#post'
  get '/student_tutor/request/:id', to: 'student_tutor#tutorrequest'
  post '/student_tutor/request/student', to: 'student_tutor#select', as: 'student'
  get '/student_tutor/appointment/:id', to: 'student_tutor#appointment'
end
