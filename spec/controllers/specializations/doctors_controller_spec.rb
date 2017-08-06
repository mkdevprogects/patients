require 'rails_helper'

RSpec.describe Specializations::DoctorsController, type: :controller do
  let(:patient) { create(:patient) }

  let!(:specialization) { create(:specialization) }

  describe "GET #index" do
    it "returns http success" do
      sign_in patient
      get :index, specialization_id: specialization.id
      expect(response).to have_http_status(:success)
    end
  end
end
