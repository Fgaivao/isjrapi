Rails.application.routes.draw do

  resources :events, defaults: {format: :json} do
    collection do
      get 'dayone'
      get 'daytwo'
      get 'daythree'
      get 'dayfour'
      get 'dayfive'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
