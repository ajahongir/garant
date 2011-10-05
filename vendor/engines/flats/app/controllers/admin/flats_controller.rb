module Admin
  class FlatsController < Admin::BaseController

    crudify :flat, :xhr_paging => true
    def index
      @target_floor = TargetFloor.find(params[:target_floor_id]) unless params[:target_floor_id].blank?
      @flats = Flat.paginate :page => (params[:page] || 1), :per_page => 10, :conditions => {:target_floor_id => @target_floor.id} unless params[:target_floor_id].blank?
      @flats = Flat.paginate :page => (params[:page] || 1), :per_page => 10 if params[:target_floor_id].blank?
    end
  end
end

