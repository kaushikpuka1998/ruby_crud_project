Rails.application.routes.draw do

  get 'subjects/new'
  get 'subjects/index'
  get 'subjects/edit'
  get 'subjects/update'
  get 'subjects/delete'
  root 'demo#hello'

  get 'demo/index',to: 'demo#index', as: 'index'
 
end
