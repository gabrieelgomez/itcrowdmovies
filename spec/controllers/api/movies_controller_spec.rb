require "rails_helper"

RSpec.describe Api::MoviesController, type: :controller do
  describe '#GET index' do
    context 'When list all movies' do
      before do
        get :index
      end
      it 'rsponds with status ok' do
        expect(response).to have_http_status(:ok)
      end
    end
  end
end