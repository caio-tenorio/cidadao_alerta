Rails.application.routes.draw do
  get 'home/index'
  get 'download/index'
  get 'dashboard/index'

  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
