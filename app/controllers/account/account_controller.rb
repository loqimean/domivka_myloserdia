class Account::AccountController < ActionController::Base
  layout 'account'

  before_action :authenticate_user!
end
