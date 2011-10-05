::Refinery::Application.routes.draw do
  resources :events, :only => [:index, :show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :events do
      resources :foors, :except => :show do
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

