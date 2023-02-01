Rails.application.routes.draw do
  resources :question_papers
  resources :choose_subjects
  resource :choose_subjects
  resources :questions
  resources :subjects
  devise_for :users
  root 'homes#index'
  get  'homes', to:'homes#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
