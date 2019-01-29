class NilApproval
  def nil?
    true
  end

  def admin?
    false
  end

  def user
    NilUser.new
  end
end