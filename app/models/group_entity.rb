class GroupEntity < ApplicationRecord
  belongs_to :group
  belongs_to :entity

  validates :group_id, presence: true
  validates :entity_id, presence: true
end
