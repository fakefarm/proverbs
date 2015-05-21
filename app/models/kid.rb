class Kid < ActiveRecord::Base
  has_many :memorizeds
  belongs_to :parent
end
