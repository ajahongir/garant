::Refinery::Application.routes.draw do
  resources :targets, :only => [:index, :show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :targets, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
