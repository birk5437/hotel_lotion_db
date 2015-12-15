class Lotion < ActiveRecord::Base
  has_and_belongs_to_many :hotels
  validates_presence_of :name

  belongs_to :created_by, :class_name => "User"
end