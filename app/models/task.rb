class Task < ActiveRecord::Base
  belongs_to :block
  validates :title, presence: true
  scope :unfinished, -> { where(done: false) }
end
