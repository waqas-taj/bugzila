# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  resources :projects do
    member do
      get :add_user
      get :remove_user
    end

    resources :bugs do
      member do
        get :assign
        get :change_status
      end
    end
  end

  root to: 'home#index'
end
