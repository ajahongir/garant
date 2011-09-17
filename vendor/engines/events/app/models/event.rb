class Event < ActiveRecord::Base
  belongs_to :target
  acts_as_indexed :fields => [:name, :description]

  validates :name, :presence => true, :uniqueness => true

end

