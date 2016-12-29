class Post < ApplicationRecord
  belongs_to :group
  belongs_to :user
  validates :content, presence: true  #标题不能为空
  scope :recent, -> { order("created_at DESC")}
end
