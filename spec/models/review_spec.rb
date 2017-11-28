require 'rails_helper'

describe Review, 'connected' do
  it { should belong_to :product }
end

describe Review, 'validate' do
  it { should validate_presence_of :content }
  it { should validate_length_of(:content).is_at_least(50) }
  it { should validate_length_of(:content).is_at_most(250) }
  it { should validate_presence_of :author }
  it { should validate_presence_of :rating }
  it { should validate_inclusion_of(:rating).in_range(1..5) }
end

describe Review, 'has_column' do
  it { should have_db_column(:content).of_type(:string) }
  it { should have_db_column(:author).of_type(:string) }
  it { should have_db_column(:rating).of_type(:integer) }
  it { should have_db_column(:product_id).of_type(:integer) }
end
