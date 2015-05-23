class Kid < ActiveRecord::Base
  has_many :memorizeds
  belongs_to :parent
  validates_presence_of :name
end
