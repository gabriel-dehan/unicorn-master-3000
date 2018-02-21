Rails.application.routes.draw do
  resources :unicorns do 
  	resources(:reviews, { only: [:new, :create] })
  end

end
