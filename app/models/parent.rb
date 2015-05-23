class Parent < ActiveRecord::Base
  after_create :add_todos
  has_many :kids
  has_many :todos
  belongs_to :user

  def add_todos
    Todo.create(title: 'Tell your kids you want them to know wisdom', status: false, parent_id: self.id)
    Todo.create(title: 'Set an alarm to review proverbs before bed', status: false, parent_id: self.id)
  end
end



