module Admin
  class EventImagesController < Admin::BaseController

    crudify :event_image,
            :title_attribute => 'data', :xhr_paging => true
    def index
      @target = Target.find(params[:target_id]) unless params[:target_id].blank?
      @event_images = EventImage.paginate(:per_page => 10, :page => (params[:page] || 1), :conditions => {:event_id => @target.events.map(&:id)}) unless params[:target_id].blank?
      @event_images = EventImage.paginate(:per_page => 10, :page => (params[:page] || 1)) if params[:target_id].blank?
    end
  end
end

