# frozen_string_literal: true

Rails.application.routes.draw do
  root to: redirect('/patients')
  resources :patients, only: :index
  resources :doctors, only: :index
end
