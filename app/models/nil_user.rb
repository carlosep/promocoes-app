class NilUser
  def nil?
    true
  end

  def admin?
    false
  end

  def persisted?
    false
  end

  def name
    '----'
  end
end
