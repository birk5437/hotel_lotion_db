class Lotion < ActiveRecord::Base
  # http://www.sitepoint.com/ratyrate-add-rating-rails-app/
  has_and_belongs_to_many :hotels
  validates_presence_of :name

  has_attachments :photos, maximum: 10
  validates :photos, presence: true

  belongs_to :created_by, :class_name => "User"

  ratyrate_rateable 'bottle_design', 'overall'
end