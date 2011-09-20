module Admin
  class EventImagesController < Admin::BaseController

    crudify :event_image,
            :title_attribute => 'data', :xhr_paging => true

  end
end
