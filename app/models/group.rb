class Group < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :group_entities, foreign_key: 'group_id'
  has_many :entities, through: :group_entities
  has_one_attached :icon

  validates :name, presence: true, length: { minimum: 3 }
end
