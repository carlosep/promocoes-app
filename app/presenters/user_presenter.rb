class UserPresenter < SimpleDelegator
  delegate :content_tag, :link_to, to: :helpers
  
  def initialize(user)
    super(user)
  end

  def new_product_link
    if admin?
      content_tag(:li) do
        link_to 'Novo Produto', new_product_path
      end
    end
  end

  def new_promotion_link
    return '' unless nil?
    
    content_tag(:li) do
      link_to 'Nova Promoção', new_promotion_path
    end
  
  end

  private
  def helpers
    ApplicationController.helpers
  end
end