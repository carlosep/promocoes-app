class UserPresenter < SimpleDelegator
  include Rails.application.routes.url_helpers
  delegate :content_tag, :link_to, to: :helpers

  def initialize(user)
    super(user)
  end

  def new_product_link
    return '' unless admin?

    content_tag(:li) do
      helpers.link_to 'Novo Produto', new_product_path
    end
  end

  def new_promotion_link
    return '' unless persisted?

    content_tag(:li) do
      helpers.link_to 'Nova Promoção', new_promotion_path
    end
  end

  private

  def helpers
    ApplicationController.helpers
  end
end
