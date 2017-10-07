require 'rails_helper'

RSpec.describe IllnessRequestsController, type: :controller do
  render_views

  context 'signed in' do
    let(:patient) { create(:patient) }
    let(:illness_request) { create(:illness_request, patient_id: patient.id) }

    before { sign_in patient }

    describe 'GET #index' do
      let!(:illness_request_1) { create(:illness_request, patient_id: patient.id) }
      let!(:illness_request_2) { create(:illness_request, patient_id: patient.id) }

      before { get :index }

      it 'returns http success' do
        expect(response).to have_http_status(:success)
      end

      it 'renders the index template' do
        expect(response).to render_template('index')
      end

      it 'loads all illness_requests' do
        expect(assigns(:illness_requests)).to match_array([illness_request_1, illness_request_2])
      end
    end

    describe 'GET #show' do
      before { get :show, { id: illness_request.id} }

      it 'returns http success' do
        expect(response).to have_http_status(:success)
      end

      it 'renders the show template' do
        expect(response).to render_template('show')
      end

      it 'load illness_request' do
        expect(assigns(:illness_request)).to eq(illness_request)
      end
    end

    describe 'GET #new' do
      before { get :new }

      it 'returns http success' do
        expect(response).to have_http_status(:success)
      end

      it 'renders the new template' do
        expect(response).to render_template(:new)
      end
    end

    describe 'POST #create' do
      context 'valid data' do
        it 'redirect to show' do
          post :create, { illness_request: attributes_for(:illness_request, symptoms: build(:symptom)) }
          expect(response).to redirect_to assigns(:illness_request)
        end
      end

      context 'not valid data' do
        it 'renders the new template' do
          post :create, { illness_request: {title: nil }}
          expect(response).to render_template(:new)
        end
      end

    end
  end

  context 'guest' do
    let(:illness_request) { create(:illness_request) }

    describe 'GET #index' do
      it 'redirect to patient/sign_in' do
        get :index
        expect(response).to patient_sign_in
      end
    end

    describe 'GET #show' do
      it 'redirect to patient/sign_in' do
        get :show, { id: illness_request.id}
        expect(response).to patient_sign_in
      end
    end

    describe 'GET #new' do
      it 'redirect to patient/sign_in' do
        get :new
        expect(response).to patient_sign_in
      end
    end
  end
end
