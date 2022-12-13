class OrderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.order_created.subject
  #
  def order_created
    @user = params[:user]
    @order = @user.order

    mail(
      to: email_address_with_name(@user.email_address, @user.name),
      subject: "4PM Ramadhan on Wheels - Successfully created an order!"
    )
  end
end
