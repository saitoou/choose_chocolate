# frozen_string_literal: true

Rails.application.routes.draw do
  get 'pass_word_resets/create'
  get 'pass_word_resets/edit'
  get 'pass_word_resets/update'
  # admin_page_routing
  namespace :admin do
    root to: 'dashboards#index'
    get 'login', to: 'user_sessions#new'
    post 'login', to: 'user_sessions#create'
    delete 'logout', to: 'user_sessions#destroy'
    resources :chocolates
    resources :users, only: %i[index edit update destroy]
  end
  # static_pages_path
  root 'static_pages#home'
  get 'privacy', to: 'static_pages#privacy'
  get 'terms', to: 'static_pages#terms'
  # stress_check_page
  get 'choice', to: 'chocolate_choices#new'
  # recommend_chocolate_page
  get 'stress_free_chocos', to: 'stress_free_chocos#new'
  get 'good_stimulus_chocos', to: 'good_stimulus_chocos#new'
  get 'tired_chocos', to: 'tired_chocos#new'
  get 'exhausted_chocos', to: 'exhausted_chocos#new'
  # chocolates list
  resources :mypages, only: %i[show edit upadate] do
    collection do
      get 'bookmarks', to: 'mypages#bookmark'
    end
  end
  resources :chocolates, only: %i[index show] do
    resource :bookmarks, only: %i[create destroy]
  end
  # send_mail_page
  resource :inquiries, only: %i[new create]
  # user
  resources :users, only: %i[new create]
  # user_session
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  # passward reset
  resources :password_resets, only: %i[new create edit update]
  # confirm mail letter_opener_web
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end
