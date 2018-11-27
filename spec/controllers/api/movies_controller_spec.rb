require "rails_helper"

RSpec.describe Api::MoviesController, type: :controller do
  describe '#GET index' do

    context 'When list all movies' do

      before do
        create_list(:movie,7)
        get :index
      end

      it 'responds with status ok' do
        expect(response).to have_http_status(:ok)
      end

      it 'responds with a non empty list' do
        expect(response_body(response)).not_to be_empty
      end
    end
  end

  describe '#POST create' do

    context 'when create a movie' do

      include_context 'Authenticated User'
      let(:movie){ create(:movie) }
      let(:person){ create(:person) }
      let(:movie_params) do
        {
          "movie": {
            "title": "un titulo",
            "release": "1999-10-01",
            "roles_attributes":[
              {
                "role_type": "actor",
                "person_id": person.id
              }
            ]
          }
        }
      end

      before do
        create(:role, movie_id: movie.id, person_id:person.id)
        post :create, params: movie_params
      end

      it 'responds with status created' do
        expect(response).to have_http_status(:created)
      end

      it 'responds with the object created' do
        expect(response_body(response)["title"]).to eq(movie_params[:movie][:title])
      end
    end
  end

  describe '#PUT update' do

    context 'when updating a movie' do

      include_context 'Authenticated User'
      let(:movie)  { create(:movie) }
      let(:person) { create(:person) }
      let(:role)   { create(role, movie_id: movie.id, person_id: person.id) }

      let(:movie_params) do
          {
            "title": "update title",
            "release": movie.release,
            "roles_attributes":[
              {
                "role_type": "director",
                "person_id": person.id
              }
            ]
          }
      end

      before do
        put :update, params: {id: movie.id, movie: movie_params}
      end

      it 'responds with status ok' do
        expect(response).to have_http_status(:ok)
      end
    end
  end
end