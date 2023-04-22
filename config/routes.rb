Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions"
  }
  
  namespace :public do
    resources :users, only: [:index, :show, :edit, :update]
    resources :letters, only: [:index, :show, :create, :edit, :update, :destroy] do
      resources :letter_comments, only: [:create, :destroy]
      resources :favorites, only: [:create, :destroy]
    end
  end
  
  devise_for :admin, skip: [:registrations] ,controllers: {
    sessions: "admin/sessions"
  }
  
  namespace :admin do
    resources :users, only: [:index, :show, :edit, :update]
    resources :letters, only: [:index, :show, :edit, :update, :destroy]
  end
  
  root to: 'public/homes#top'
  get '/admin' => 'admin/homes#top'
  get 'home/about' => 'public/homes#about', as: 'about'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


