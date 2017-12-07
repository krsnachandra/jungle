class Order < ActiveRecord::Base

  belongs_to :user
  has_many :line_items

  monetize :total_cents, numericality: true

  validates :stripe_charge_id, presence: true

  def total_price
    answer = 0
    line_items.each do |line_item|
      answer += line_item.total_price
    end
    answer
  end

end
