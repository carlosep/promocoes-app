require 'rails_helper'

describe PromotionPresenter do
  describe '#status' do
    it 'it should render pending status' do
      promotion = build(:promotion, status: :pending)
      presenter = PromotionPresenter.new(promotion, nil)
      expect(presenter.status).to include('<span class="ls-tag-warning">Pendente</span>')
    end
  end
end
