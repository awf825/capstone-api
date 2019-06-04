# frozen_string_literal: true

Rails.application.routes.draw do
  resources :instruments
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  patch '/instruments/:id/edit' => 'instruments#patch'
  post '/create-instrument' => 'instruments#create'
  get '/instruments/:id' => 'instruments#show'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
