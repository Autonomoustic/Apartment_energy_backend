Rails.application.routes.draw do
  get 'personal_bill/index'
  get 'personal_bill/show'
  get 'personal_bill/new'
  get 'personal_bill/create'

  get 'building_bill/index'
  get 'building_bill/show'
  get 'building_bill/new'
  get 'building_bill/create'

  get 'user/index'
  get 'user/show'
  get 'user/new'
  get 'user/create'
  get 'validate', to: 'users#validate'
  post 'signin', to: 'users#sign_in'


  get 'buildings', to: 'building#index'
  get 'building/show'
  get 'building/new'
  get 'building/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
