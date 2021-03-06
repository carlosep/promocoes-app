require 'rails_helper'

describe PromotionHelper do
  describe 'promotion_status' do
    it 'it should render pending status' do
      promotion = build(:promotion, status: :pending)
      status = promotion_status(promotion)
      expect(status).to include('<span class="ls-tag-warning">Pendente</span>')
    end
    it 'it should render pending status' do
      promotion = build(:promotion, status: :approved)
      status = promotion_status(promotion)
      expect(status).to eq('<span class="ls-tag-info">Aprovada</span>')
    end
    it 'it should render pending status' do
      promotion = build(:promotion, status: :activated)
      status = promotion_status(promotion)
      expect(status).to eq('<span class="ls-tag-success">Ativado</span>')
    end
    it 'it should render pending status' do
      promotion = build(:promotion, status: :expired)
      status = promotion_status(promotion)
      expect(status).to eq('<span class="ls-tag-alert">Expirada</span>')
    end
  end
end
