require 'rails_helper'

RSpec.describe 'Routes for buyers', type: :routing do
  describe 'devise_for :buyers' do
    it do
      expect(get '/sign_in').to route_to(
        controller: 'devise/sessions',
        action:     'new'
      )
    end
  end
end
