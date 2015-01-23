require 'rails_helper'

describe '' do
  let(:physician) { Physician.create }
  let(:patient) { Patient.create }

  it {
    expect  {
      physician.patients = [patient]
    }.to raise_error(ActiveRecord::StatementInvalid)
  }
end
