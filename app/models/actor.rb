class Actor < ApplicationRecord

    # ======================== MODULES INCLUSION ====================== #
    include ActorPresenter

    # ======================== Associations =========================== #

    has_and_belongs_to_many :movies

    accepts_nested_attributes_for :movies


    # =================== Class Methods ================================ #

    def self.search(search)
        key = "%#{search}%"
        columns = %w{first_name}
        @items = Item.where(
          columns
            .map {|c| "#{c} like :search" }
            .join(' OR '),
          search: key
        )
    end
end
