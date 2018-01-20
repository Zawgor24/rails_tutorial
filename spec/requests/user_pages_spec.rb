require 'rails_helper'

RSpec.describe "UserPages", type: :request do
  subject { page }

  describe 'signup page' do 
    before { visit signup_page }

    let(:submit) { 'Create my account' }

    describe 'with invalid info' do
      it 'should not create a user' do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe 'with valid info' do
      before do
        fill_in 'Name', with: 'user'
        fill_in 'Email', with: 'user@1.com'
        fill_in 'Password', with: 'qweqwe'
        fill_in 'Confirmation', with: 'qweqwe'
      end

      it 'should create a user' do
        expect { click_button submit }.to change(User, :count)
      end
    end
  end
end
