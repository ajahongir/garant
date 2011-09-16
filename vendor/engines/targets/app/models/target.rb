class Target < ActiveRecord::Base

  acts_as_indexed :fields => [:name]

  validates :name, :presence => true, :uniqueness => true
  validates :floors, :presence => true, :numericality => {:only_integer => true}

end

