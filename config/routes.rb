Rails.application.routes.draw do
  namespace :api do
    '/all_products_url' => 'products#all_products_action'
  end
end
