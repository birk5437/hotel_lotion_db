class Hotel < ActiveRecord::Base
  has_and_belongs_to_many :lotions
  validates_presence_of :name

  has_attachment :logo
  validates :logo, presence: true

  belongs_to :created_by, class_name: "User"
end