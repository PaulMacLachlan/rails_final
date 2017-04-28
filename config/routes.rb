Rails.application.routes.draw do

  root 'sessions#new'

  get 'users' => 'users#index' # display a list of all users

  post 'users' => 'users#create' # create a new user

  get 'users/:id' => 'users#show' # display a specific user

  get 'users/:id/edit' => 'users#edit' # return an HTML form for editing a user

  patch 'users/:id' => 'users#update' # update a specific user

  post 'sessions/create' => 'sessions#create'

  delete 'sessions/:id' => 'sessions#destroy' # delete a specific user

  delete 'users/:id' => 'users#delete'
end
