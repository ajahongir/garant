class TargetsController < ApplicationController

  before_filter :find_all_targets
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @target in the line below:
    present(@page)
  end

  def show
    @months = ['январь','февраль','март','апрель','май','июнь', 'июль', 'август', 'сентябрь','октябрь','ноябрь','декабрь']
    @target = Target.find(params[:id])
    days = ((@target.date_end - @target.date_start) / 86400).to_i
    took = ((Time.now - @target.date_start) / 86400).to_i
    @percent = days< took ? 100 : took*100/days
    @event_percent = (@target.events.count > 0 ? @percent/@target.events.count : 0)
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

