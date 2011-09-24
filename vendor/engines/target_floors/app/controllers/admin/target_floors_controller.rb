module Admin
  class TargetFloorsController < Admin::BaseController

    crudify :target_floor,
            :title_attribute => 'data', :xhr_paging => true
    def index
      @target = Target.find(params[:target_id]) unless params[:target_id].blank?
      @target_floors = TargetFloor.paginate :per_page => 10, :page => (params[:page] || 1), :conditions => {:target_id => @target.id} unless params[:target_id].blank?
      @target_floors = TargetFloor.paginate :per_page => 10, :page => (params[:page] || 1) if params[:target_id].blank?
    end
  end
end

