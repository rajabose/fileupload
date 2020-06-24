Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :invoices, only: [:create, :update, :index, :show] do
    put :import, on: :member
  end

  namespace :admin do
    resources :invoices, only: [:update, :index, :show]
  end
end
