Rails.application.routes.draw do
  devise_for :writers, controllers: {
  	registrations: 'writers/registrations'
  }
end
