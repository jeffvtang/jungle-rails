class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def order_email(order, current_user)
    @order = order
    @url  = 'http://example.com/login'
    mail(to: current_user.email, subject: 'Thank you for order. Order ID ' + order.id.to_s)
  end
end
