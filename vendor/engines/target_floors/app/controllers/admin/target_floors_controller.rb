module Admin
  class TargetFloorsController < Admin::BaseController

    crudify :target_floor,
            :title_attribute => 'data', :xhr_paging => true
    def index
      @target = Target.find(params[:target_id]) unless params[:target_id].blank?
      @target_floors = TargetFloor.paginate :per_page => 10, :page => (params[:page] || 1), :conditions => {:target_id => @target.id} unless params[:target_id].blank?
      @target_floors = TargetFloor.paginate :per_page => 10, :page => (params[:page] || 1) if params[:target_id].blank?
    end

		def create
			puts "*"*100
			puts params[:maps].inspect
			@target_floor = TargetFloor.new(params[:target_floor])
			img = Image.find_by_image_uid(params[:source][:url3].split('/system/images/').last)
			@target_floor.image_id = img.id if img
			if @target_floor.save
				params[:maps].to_hash.each do |key, value|
					unless value[:img_coords].blank?
						flat = @target_floor.flats.new
						flat.img_alt = value[:img_alt]
						flat.img_coords = value[:img_coords]
						flat.img_target = value[:img_target]
						flat.img_id = value[:img_id]
						flat.img_shape = value[:img_shape]
						flat.img_href = value[:img_href]
						flat.save
					end
				end
        @target_floors = TargetFloor.paginate :per_page => 10, :page => (params[:page] || 1), :conditions => {:target_id => @target_floor.target_id}
				render :index
			else
				render :new
			end
			
		end

  end
end

