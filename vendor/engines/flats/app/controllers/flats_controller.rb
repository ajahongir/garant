class FlatsController < ApplicationController

  before_filter :find_all_flats
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @flat in the line below:
    present(@page)
  end

  def show
    @flat = Flat.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @flat in the line below:
    present(@page)
  end

protected

  def find_all_flats
    @flats = Flat.order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/flats").first
  end

end
