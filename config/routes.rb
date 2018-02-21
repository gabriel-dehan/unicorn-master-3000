Rails.application.routes.draw do
  get 'reviews/new'

  get 'reviews/create'

  resources :unicorns do 
  	resources(:reviews, { only: [:new, :create] })
  end

end
