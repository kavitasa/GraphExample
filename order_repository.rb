require './order'

class OrderRepository
  attr_reader :orders, :engine

  def initialize(engine)
    @orders = build_orders
    @engine = engine
  end

  def build_orders
    (1..5).collect do |i|
      Order.new({:id => i, :merchant_id => i})
    end
  end

  def find_orders_by_merchant_id(id)
    orders.find_all { |order| order.merchant_id == id }
  end

end
