# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: redirect('/patients')
  resources :patients, only: :index
  resources :doctors, only: :index
end
