class CouponsCreator
  attr_reader :promotion, :user, :amount, :count_coupon

  def initialize(promotion, user, amount)
    @promotion = promotion
    @user = user
    @amount = amount.to_i
    @count_coupon = amount.to_i + promotion.coupons.count
  end

  def create
    return unless can_create?
    
    amount.times do
      code = Coupon.generate_code(@promotion.prefix)
      user.coupons.create(code: code,
                          promotion: promotion,
                          status: :available)
    end
  end

  def can_create?
    count_coupon = amount + promotion.coupons.count
    return true if promotion.coupon_limit - count_coupon >= 0
  end
end