class Movie < ApplicationRecord


    # ======================== MODULES INCLUSION ====================== #
    include MoviePresenter

    # ======================== Associations =========================== #
    has_and_belongs_to_many :actors
    has_and_belongs_to_many :genres

    accepts_nested_attributes_for :actors, :genres

    # =================== Class Methods ================================ #

    def self.search(search)
        key = "%#{search}%"
        columns = %w{name title}
        @items = Item.where(
            columns
            .map {|c| "#{c} like :search" }
            .join(' OR '),
            search: key
        )
    end
end
