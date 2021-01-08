Rails.application.routes.draw do

  root 'demo#hello'

  get 'demo/index',to: 'demo#index', as: 'index'
 
end
