require 'rails_helper'

RSpec.describe Authenticable do
    controller(ApplicationController) do #criando um controller para testar o modulo do concern
        include Authenticable
    end

    let(:app_controller) { subject } #criando uma variavel para o controller

    describe '#current_user' do
        let(:user) { create(:user) }
        
        before do
            req = double(:headers => {'Authorization' => user.auth_token})
            allow(app_controller).to receive(:request).and_return(req)
        end

        it 'returns the user from the authorization header' do
            expect(app_controller.current_user).to eq(user)
        end

    end
end


def current_user
    User.find_by(auth_token: request.headers['Authorization'])
end