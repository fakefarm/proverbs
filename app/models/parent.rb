class Parent < ActiveRecord::Base
  has_many :kids
  belongs_to :user
end


