Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope module: 'api' do
    resources :movies, only: [:index, :create, :update]
    resources :people, only: [:index, :create, :update]
  end

end
