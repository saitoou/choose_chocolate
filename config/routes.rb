Rails.application.routes.draw do
  get 'stress_free_chocos/new'
  get 'good_stimulus_chocos/new'
  get 'tired_chocos/new'
  get 'exhausted_chocos/new'
  #static_pages_path
  root 'static_pages#home'
  get 'privacy', to: 'static_pages#privacy'
  get 'terms', to: 'static_pages#terms'
  
  get 'choice', to: 'chocolate_choice#new'

  get 'reviews/create'
  get 'reviews/update'
  get 'reviews/destroy'
  get 'chocolates/index'
  get 'chocolates/show'
  get 'chocolates/result'
  get 'chocolate_choices/new'
  
end
