# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root to: redirect('/patients')
  resources :patients
  resources :doctors
end
