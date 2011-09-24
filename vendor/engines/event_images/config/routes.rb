::Refinery::Application.routes.draw do
  resources :event_images, :only => [:index, :show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :event_images, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end

