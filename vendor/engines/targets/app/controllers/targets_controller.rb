class TargetsController < ApplicationController

  before_filter :find_all_targets
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @target in the line below:
    present(@page)
  end

  def show
    @target = Target.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @target in the line below:
    present(@page)
  end

protected

  def find_all_targets
    @targets = Target.order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/targets").first
  end

end
