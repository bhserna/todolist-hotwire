class Todo < ApplicationRecord
  belongs_to :todo_list
  validates_presence_of :description

  def self.completed
    where.not(completed_at: nil)
  end

  def self.active
    where(completed_at: nil)
  end

  def toggle
    next_value = completed ? nil : Time.current
    update(completed_at: next_value)
  end

  def completed
    completed_at?
  end

  alias_method :completed?, :completed
end
