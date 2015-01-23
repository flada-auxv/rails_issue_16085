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
  }
end
