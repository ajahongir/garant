class Flat < ActiveRecord::Base

  belongs_to :target_floor
  belongs_to :image

  # def title was created automatically because you didn't specify a string field
  # when you ran the refinery_engine generator. Love, Refinery CMS.
  def title
    "flat"
  end
	
	def location
		case self.img_shape
		when "rect"
			dots = self.img_coords.split(',')
			left = dots.shift
			top = dots.shift
			return {
				:left => left, 
				:top => top, 
				:width => dots.shift.to_i-left.to_i, 
				:height => dots.shift.to_i-top.to_i}
		when "poly"
			return {
				:top => 0, 
				:left => 0, 
				:height => 200, 
				:width => 200 }
		when "circle"
			return {
				:top => 0, 
				:left => 0, 
				:height => 200, 
				:width => 200 }
		end
	end
end

