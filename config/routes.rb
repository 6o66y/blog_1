Rails.application.routes.draw do
  devise_for :writers, controllers: {
  	registrations: 'writers/registrations',
  	sessions: "writers/sessions"
  }

  devise_scope :writer do
  	get 'login' => 'writers/sessions#new'
  	post 'login' => 'writers/sessions#create'
  end

  root 'articles#index'
  resources :articles, only: [:new, :show, :edit, :create, :update, :destroy]
end
