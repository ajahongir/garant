class Flat < ActiveRecord::Base

  belongs_to :target_floor
  belongs_to :image

  # def title was created automatically because you didn't specify a string field
  # when you ran the refinery_engine generator. Love, Refinery CMS.
  def title
    "flat"
  end

end

