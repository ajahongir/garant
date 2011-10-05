class EventsController < ApplicationController

  before_filter :find_all_events
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @event in the line below:
    present(@page)
  end

  def show
    @event = Event.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @event in the line below:
    present(@page)
  end

protected

  def find_all_events
    @events = Event.order('position desc') unless params[:target_id]
    @events = Event.where(:target_id => params[:target_id]).order('position desc') if params[:target_id]
  end

  def find_page
    @page = Page.where(:link_url => "/events").first
  end

end

