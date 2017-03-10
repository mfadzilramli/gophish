Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :recipient_groups do
    collection { post :import }
  end

  resources :recipients
  resources :campaigns
  resources :senders
  resources :email_templates

  root 'campaigns#index'
end
