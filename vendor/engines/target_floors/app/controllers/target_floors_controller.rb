class TargetFloorsController < ApplicationController

  before_filter :find_all_target_floors
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @target_floor in the line below:
    present(@page)
  end

  def show
    @target_floor = TargetFloor.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @target_floor in the line below:
    present(@page)
  end

protected

  def find_all_target_floors
    @target_floors = TargetFloor.order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/target_floors").first
  end

end
