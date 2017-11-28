require 'rails_helper'

describe Product, 'connected' do
  it { should have_many :reviews }
end

describe Product, 'validate' do
  it { should validate_presence_of :country }
  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
end


describe Product, 'has_column' do
  it { should have_db_column(:country).of_type(:string) }
  it { should have_db_column(:name).of_type(:string) }
  it { should have_db_column(:cost).of_type(:integer) }
end
