Rails.application.routes.draw do
	root to: 'simpsons#index'


	resources :simpsons

end