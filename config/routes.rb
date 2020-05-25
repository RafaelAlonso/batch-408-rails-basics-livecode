Rails.application.routes.draw do

  root to: 'flats#index'
  get '/details/:id', to: 'flats#details', as: :details
end
