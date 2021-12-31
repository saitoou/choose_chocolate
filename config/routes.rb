Rails.application.routes.draw do
  #admin_page_routing
  namespace :admin do
    root to: 'dashboards#index'
    get 'login', to: 'user_sessions#new'
    post 'login', to: 'user_sessions#create'
    delete 'logout', to: 'user_sessions#destroy'
    resources :chocolates
  end
  #confirm mail letter_opener_web
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener" 
  end
  #static_pages_path
  root 'static_pages#home'
  get 'privacy', to: 'static_pages#privacy'
  get 'terms', to: 'static_pages#terms'
  #stress_check_page
  get 'choice', to: 'chocolate_choices#new'
  #recommend_chocolate_page 
  get 'stress_free_chocos', to: 'stress_free_chocos#new'
  get 'good_stimulus_chocos', to: 'good_stimulus_chocos#new'
  get 'tired_chocos', to: 'tired_chocos#new'
  get 'exhausted_chocos', to: 'exhausted_chocos#new'
  #chocolates list
  get 'chocolates_list', to:  'chocolates#index'
  #send_mail_page
  resource :inquiries, only: %i[new create]
end
