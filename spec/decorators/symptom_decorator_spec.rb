require 'spec_helper'

describe SymptomDecorator do
  before { allow_any_instance_of(Symptom).to receive(:first_occurence_date) { Time.now } }
  it_behaves_like 'has human date', :first_occurence_date, :symptom
end
