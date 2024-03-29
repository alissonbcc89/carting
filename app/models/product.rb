class Product < ApplicationRecord
  has_many :line_items

  def self.latest
    Product.order(:updated_at).last
  end
  before_destroy :ensure_not_referenced_by_any_line_item

  private
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Line Items present')
        return false
      end
    end

end
