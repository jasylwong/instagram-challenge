require 'rails_helper'

RSpec.describe User, type: :model do
  it 'returns a User object' do
    user = User.new(email: 'bob@bob.com', password: 'password')
    expect(user.valid?).to eq(true)
  end

  it 'prevents blank emails' do
    user = User.new(email: '', password: 'hello')
    expect(user.valid?).to eq(false)
    expect(user.errors.full_messages).to include('Email can\'t be blank')
  end

  it 'prevents blank passwords' do
    user = User.new(email: 'me@gmail.com', password: '')
    expect(user.valid?).to eq(false)
    expect(user.errors.full_messages).to include('Password can\'t be blank')
  end

  it 'enforces passwords of between 6 - 10 characters' do
    user = User.new(email: 'me@gmail.com', password: 'short')
    user.save
    expect(user.valid?).to eq(false)
    expect(user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
  end
end
