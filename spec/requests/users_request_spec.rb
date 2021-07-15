require 'rails_helper'

RSpec.describe 'Users', type: :request do
  it 'creates a new user with status code 201' do
    post '/api/v1/users', params:
      { name: 'John Doe',
        email: 'abcdefg@mail.com',
        password: '1234555',
        password_confirmation: '1234555' }
    expect(response.content_type).to eq('application/json')
    expect(response).to have_http_status(:created)
  end
end
