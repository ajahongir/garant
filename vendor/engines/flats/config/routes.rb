::Refinery::Application.routes.draw do
  resources :flats, :only => [:index, :show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :flats, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
