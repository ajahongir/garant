module Admin
  class EventsController < Admin::BaseController

    crudify :event,
            :title_attribute => 'name', :xhr_paging => true

    def index
      @target = Target.find(params[:target_id]) unless params[:target_id].blank?
      @events = Event.paginate :page => (params[:page] || 1), :per_page => 10, :conditions => {:target_id => @target.id} unless params[:target_id].blank?
      @events = Event.paginate :page => (params[:page] || 1), :per_page => 10 if params[:target_id].blank?
    end
  end
end

