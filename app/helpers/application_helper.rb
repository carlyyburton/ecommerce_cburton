module ApplicationHelper
  def cart_total
    Product.where(id: @cart).sum(:price)
  end
end
