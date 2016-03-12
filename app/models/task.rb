class Task < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true 
  validates :completion_date, presence: true 
end
