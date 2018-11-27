require "rails_helper"

RSpec.describe Api::PeopleController, type: :controller do
  describe '#GET index' do
  
    context 'When list people' do
      
      before do
        create_list(:person,7)
        get :index
      end
      
      it 'responds with status ok', dictum: 'Method Index - list people' do
        expect(response).to have_http_status(:ok)
      end
      
      it 'responds with a non empty list' do
        expect(response_body(response)).not_to be_empty
      end
    end
  end

  describe '#POST create' do

    context 'when create a person' do

      include_context 'Authenticated User'
      let(:movie){ create(:movie) }
      let(:person){ create(:person) }
      let(:person_params) do
        {
          "person":{
            "first_name": "Matias",
            "last_name": "Maglia",
            "roles_attributes":[
              {
                "role_type": "actor",
                "movie_id": movie.id
              }
            ]
          }
        }
      end

      before do
        post :create, params: person_params
      end

      it 'responds with status created', dictum: 'Method Create - creates a person' do
        expect(response).to have_http_status(:created)
      end

      it 'responds with the object created' do
        expect(response_body(response)["first_name"]).to eq(person_params[:person][:first_name])
      end
    end
  end

  describe '#PUT update' do

    context 'when updating a movie' do

      include_context 'Authenticated User'
      let(:movie)  { create(:movie) }
      let(:person) { create(:person) }
      let(:role)   { create(:role, movie_id: movie.id, person_id: person.id) }

      let(:person_params) do
        {
          "first_name": "Nombre editado",
          "last_name": person.last_name,
          "roles_attributes":[
            {
              "id": role.id,
              "role_type": "actor",
              "movie_id": movie.id
            }
          ]
        }
      end

      before do
        put :update, params: {id: person.id, person: person_params}
      end

      it 'responds with status ok', dictum: 'Method Update -updates a person' do
        expect(response).to have_http_status(:ok)
      end
    end
  end
end