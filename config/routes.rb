# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'rooms#show'
  get 'rooms/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'


  # root to: redirect('/patients')
  resources :patients
  resources :doctors, only: :index
end
