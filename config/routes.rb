Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :links, only: [:new, :index, :show, :update, :destroy, :edit] do
    collection do
      get :search
      post :listing
    end
  end


  root 'links#search'
end
