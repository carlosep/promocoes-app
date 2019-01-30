class PromotionAuthorizer
  def initialize(promotion, user)
    @promotion = promotion
    @user = user
  end

  def can_approve?
    pending? && !created_by?(user)
  end

  private

  attr_reader :promotion, :user

  delegate :pending?, :created_by?, to: :promotion
end
