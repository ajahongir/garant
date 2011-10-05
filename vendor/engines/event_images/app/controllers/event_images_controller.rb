class EventImagesController < ApplicationController

  before_filter :find_all_event_images
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @event_image in the line below:
    present(@page)
  end

  def show
    @event_image = EventImage.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @event_image in the line below:
    present(@page)
  end

protected

  def find_all_event_images
    @event_images = EventImage.order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/event_images").first
  end

end
