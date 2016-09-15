class Task < ApplicationRecord
  belongs_to :user

  def as_json(options={})
    super(only: [:name, :due_date])
  end

  def complete!
    self.completed = true
    self.save
  end

  #tasks return no id, created_at or updated_at
  #group completed and pending tasks in the index
end
