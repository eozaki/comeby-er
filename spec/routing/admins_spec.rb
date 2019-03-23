require 'rails_helper'

RSpec.describe 'Routes for admins', type: :routing do
  describe 'devise_for :admins' do
    it do
      expect(post '/admins/sign_in').to route_to(
        controller: 'devise/sessions',
        action:     'create'
      )
      expect(get '/admins/sign_in').to route_to(
        controller: 'devise/sessions',
        action:     'new'
      )
      expect(delete '/admins/sign_out').to route_to(
        controller: 'devise/sessions',
        action:     'destroy',
      )
      expect(get '/admins/password/new').to route_to(
        controller: 'devise/passwords',
        action:     'new'
      )
      expect(get '/admins/password/edit').to route_to(
        controller: 'devise/passwords',
        action:     'edit'
      )
      expect(get '/admins/sign_up').to route_to(
        controller: 'devise/registrations',
        action:     'new'
      )
      expect(put '/admins').to route_to(
        controller: 'devise/registrations',
        action:     'update'
      )
      expect(patch '/admins').to route_to(
        controller: 'devise/registrations',
        action:     'update'
      )
    end
  end
end
