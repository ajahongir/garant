::Refinery::Application.routes.draw do
  resources :target_floors, :only => [:index, :show] do
    resources :flats, :only => [:index, :show] do
    end
  end

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :target_floors, :except => :show do
      resources :flats, :except => :show do
        collection do
          post :update_positions
        end
      end
      collection do
        post :update_positions
      end
    end
  end
end

