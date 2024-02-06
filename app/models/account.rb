class Account < ApplicationRecord
  has_secure_password validations: false
  # include Rodauth::Model(RodauthMain)

  has_many :account_otp_keys
  has_many :account_recovery_codes
end