require 'rails_helper'

RSpec.describe SpecializationsController, type: :controller do
  let(:patient) { create(:patient) }

  context 'signed in' do
    before { sign_in patient }

    describe "GET #index" do
      let(:specialization_1) { create(:specialization) }
      let(:specialization_2) { create(:specialization) }

      before { get :index }

      it "returns http success" do
        expect(response).to have_http_status(:success)
      end

      it "renders the index template" do
        expect(response).to render_template("index")
      end

      it "loads all specializations" do
        expect(assigns(:specializations)).to match_array([specialization_1, specialization_2])
      end
    end
  end

  context 'guest' do
    describe "GET #index" do
      it "returns http 302" do
        get :index
        expect(response).to have_http_status(302)
      end
    end
  end
end
