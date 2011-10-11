module Admin
  class TargetFloorsController < Admin::BaseController

    crudify :target_floor, :title_attribute => 'data', :xhr_paging => true

    def index
      @target = Target.find(params[:target_id]) unless params[:target_id].blank?
      @target_floors = TargetFloor.paginate :per_page => 10, :page => (params[:page] || 1), :conditions => {:target_id => @target.id} unless params[:target_id].blank?
      @target_floors = TargetFloor.paginate :per_page => 10, :page => (params[:page] || 1) if params[:target_id].blank?
    end
		
		def update
			@target_floor = TargetFloor.find(params[:id])
			@target_floor.target_id = params[:target_id] if params[:target_id]
			img = Image.find_by_image_name(params[:source][:url3].split('/').last)
			@target_floor.image = img if img
			if @target_floor.save
				@target_floor.flats.clear
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
        redirect_to admin_target_floors_path
			else
				render :new
			end			
		end

		def create
			@target_floor = TargetFloor.new(params[:target_floor])
			@target_floor.target_id = params[:target_id] if params[:target_id]
			img = Image.find_by_image_name(params[:source][:url3].split('/').last)
			@target_floor.image = img if img
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
				redirect_to admin_target_target_floors_path @target_floor.target_id
			else
				render :new
			end
		end

  end
end

