class EmailReceipt < ApplicationMailer

  default from: 'no-reply@jungle.com'

  def email_receipt(order)
    @order = order
    @url = "localhost:3000/orders/#{order.id}"
    mail(to: 'huxof@c1oramn.com', subject: "Thank you for your order (Order # )")
  end

end
