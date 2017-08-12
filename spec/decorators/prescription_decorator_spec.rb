require 'spec_helper'

describe PrescriptionDecorator do
  it_behaves_like 'has human date', :created_at, :prescription
end
