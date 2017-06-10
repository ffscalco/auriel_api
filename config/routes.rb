require 'api_version_constraint.rb'

Rails.application.routes.draw do
  # devise_for :users
  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: "/" do
    #default is always the last version
    namespace :v1, path: "/", constraints: ApiVersionConstraint.new(version: 1, default: true) do
      resources :users, only: [:show]
    end
  end
end
