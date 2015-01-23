require 'rails_helper'

describe '' do
  before do
    Patient.create
  end

  it {
    expect  {
      physician = Physician.new
      physician.patients = [Patient.first]
      physician.save!
    }.to_not raise_error
    # 4.1.1 => pass
    # 4.1.2 => expected no Exception, got #<ActiveRecord::StatementInvalid: Mysql2::Error: Field 'physician_id' doesn't have a default value: INSERT INTO `appointments` (`created_at`, `patient_id`, `updated_at`) VALUES ('2015-01-23 04:01:18', 12, '2015-01-23 04:01:18')> with backtrace:
  }
end
