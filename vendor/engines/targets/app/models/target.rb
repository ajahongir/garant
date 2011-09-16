class Target < ActiveRecord::Base

  acts_as_indexed :fields => [:name, :title]

  validates :name, :presence => true, :uniqueness => true
  
end
