Rails.application.routes.draw do
  #static_pages_path
  root 'static_pages#home'
  get 'privacy', to: 'static_pages#privacy'
  get 'terms', to: 'static_pages#terms'
  #stress_check_page
  get 'choice', to: 'chocolate_choice#new'
  #recommend_chocolate_page 
  get 'stress_free_chocos', to: 'stress_free_chocos#new'
  get 'good_stimulus_chocos', to: 'good_stimulus_chocos#new'
  get 'tired_chocos', to: 'tired_chocos#new'
  get 'exhausted_chocos', to: 'exhausted_chocos#new'
  #chocolates list
  get 'choicolates_list', to:  'chocolates#index'
  
end
