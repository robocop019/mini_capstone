Rails.application.routes.draw do
  namespace :api do
    get '/all_products_url' => 'products#all_products_action'
    get '/godzilla_url' => 'products#godzilla_action'
    get '/ghidorah_url' => 'products#ghidorah_action'
    get '/rodan_url' => 'products#rodan_action'
  end
end