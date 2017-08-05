require 'rails_helper'

RSpec.describe IllnessesController, type: :controller do
  let(:patient) { create(:patient) }

  describe "GET #show" do
    let(:illness) { create(:illness) }

    it "returns http success" do
      sign_in patient
      get :show, { id: illness.id}
      expect(response).to have_http_status(:success)
    end
  end
end
