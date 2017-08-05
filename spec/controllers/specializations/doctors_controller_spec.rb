require 'rails_helper'

RSpec.describe Specializations::DoctorsController, type: :controller do
  let(:patient) { create(:patient) }

# этот тест всегда падает
  describe "GET #index" do
    it "returns http success" do
      sign_in patient
      get 'specializations/doctors/index', {specialization_id: 1}
      expect(response).to have_http_status(:success)
    end
  end

end
