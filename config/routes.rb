Rails.application.routes.draw do
  root 'static_pages/home'
  get 'static_pages/privacy'
  get 'static_pages/terms'
  get 'reviews/create'
  get 'reviews/update'
  get 'reviews/destroy'
  get 'chocolates/index'
  get 'chocolates/show'
  get 'chocolates/result'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
