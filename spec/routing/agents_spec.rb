require 'rails_helper'

RSpec.describe 'Routes for agents', type: :routing do
  describe 'devise_for :agents' do
    it do
      expect(post '/agents/sign_in').to route_to(
        controller: 'devise/sessions',
        action:     'create'
      )
      expect(get '/agents/sign_in').to route_to(
        controller: 'devise/sessions',
        action:     'new'
      )
      expect(delete '/agents/sign_out').to route_to(
        controller: 'devise/sessions',
        action:     'destroy',
      )
      expect(get '/agents/password/new').to route_to(
        controller: 'devise/passwords',
        action:     'new'
      )
      expect(get '/agents/password/edit').to route_to(
        controller: 'devise/passwords',
        action:     'edit'
      )
      expect(get '/agents/sign_up').to route_to(
        controller: 'devise/registrations',
        action:     'new'
      )
      expect(put '/agents').to route_to(
        controller: 'devise/registrations',
        action:     'update'
      )
      expect(patch '/agents').to route_to(
        controller: 'devise/registrations',
        action:     'update'
      )
    end
  end
end
