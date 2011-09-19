::Refinery::Application.routes.draw do
  resources :target_floors, :only => [:index, :show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :target_floors, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
