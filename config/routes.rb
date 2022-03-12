Rails.application.routes.draw do
  devise_for :users

  get '/', to: 'home#redirection', as: :root_redirection

  scope '/:locale', locale: /uk|en/ do
    root to: 'home#index'
  end

  namespace :account do
    root 'site_settings#index'
  end
end
