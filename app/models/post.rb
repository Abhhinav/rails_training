class Post < ApplicationRecord
    belongs_to :category
    #default_scope
    default_scope {order :created_at}
    scope :published, -> {where(published: true)}
    scope :notpublished, -> {where.not(published: true)}
    #overriding the default
    scope :order_by_latest, ->{reorder(created_at: :desc)}
end
