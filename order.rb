class Order
  attr_reader :id, :repo

  def initialize(params, repo)
    @id          = params[:id]
    @merchant_id = params[:merchant_id]
    @order_repo  = repo
  end
end
