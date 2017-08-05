require 'rails_helper'

RSpec.describe DoctorsController, type: :controller do
  let(:patient) { create(:patient) }

  describe "GET #index" do
    it "returns http success" do
      sign_in patient
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    let(:doctor) { create(:doctor) }

    it "returns http success" do
      sign_in patient
      get :show, { id: doctor.id}
      expect(response).to have_http_status(:success)
    end
  end
end
