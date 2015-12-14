Rails.application.routes.draw do
  #setting index page
  get 'zipcodes/index'
  get 'zipcodes/list'
  #displaying the resource to use
  resources :zipcodes do
    resources :list
  end
  #root file
  root 'zipcodes#index'
end
