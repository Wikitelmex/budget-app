class Entity < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :group_entities, foreign_key: 'entity_id'
  has_many :groups, through: :group_entities

  validates :name, presence: true, length: { minimum: 3 }
  validates :amount, presence: true
end
