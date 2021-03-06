Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html`
  resources :cocktails, only: [:index, :new, :create, :show], shallow: true do
    resources :doses, only: [:new, :create, :destroy]
  end
end
