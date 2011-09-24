::Refinery::Application.routes.draw do
  resources :targets, :only => [:index, :show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :targets, :except => :show do
      resources :event_images, :except => :show do
        collection do
          post :update_positions
        end
      end
      resources :events, :except => :show do
        collection do
          post :update_positions
        end
      end
      resources :target_floors, :except => :show do
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

