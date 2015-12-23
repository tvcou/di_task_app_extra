class Block < ActiveRecord::Base

  has_many :tasks

  validates :name,
    presence: { message: "入力してください" },
    length: { minimum: 3, message: "短すぎ！" }
  validates :memo, presence: true

end
