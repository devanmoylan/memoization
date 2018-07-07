class ProcessUserPaymentService
  def call
    handle_users_without_discounts and handle_users_with_discounts
  end

  private



  def users
    unless defined?(@users)
      @users = begin
        User.includes(subscription: :discounts).where(active: true)
      end
    end
  end

  def users_with_discounts
    unless defined?(@users_with_discounts)
      @users_with_discounts = User.has_a_discount
    end
    @users_with_discounts
  end
end
