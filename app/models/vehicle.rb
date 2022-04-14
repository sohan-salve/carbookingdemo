class Vehicle < ApplicationRecord
    belongs_to :owner, class_name: "User"
    has_one_attached :image , dependent: :destroy
    has_one :order
end
