Rails.application.routes.draw do

  root 'email#index'
  resources:emails
end
