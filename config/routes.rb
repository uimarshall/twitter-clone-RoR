Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations'}#override default controller to use registrations controller created by Devise
  resources :tweets
  root to: "tweets#index"
end

# devise_for :users is added when you run -- `rails g devise User(model)`