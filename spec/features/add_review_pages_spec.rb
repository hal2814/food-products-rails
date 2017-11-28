require 'rails_helper'

describe "the add a review process" do
  it "adds a review to Product" do
    product = Product.create(:name => 'Polish Sausage', :country => 'Poland', :cost => '5')
    visit product_path(product)
    click_link 'New Review'
    fill_in 'Content', :with => 'Lovely party, Pity I wasnt invited. I especially enjoyed the sausage- What is that polish? I sure am glad I came to thi party that I wasnt invited to '
    fill_in 'Author', :with => 'Sir Sean Connery'
    fill_in 'Rating', :with => '4'
    click_on 'Create Review'
    expect(page).to have_content 'Review'
  end

  it "gives error when no name is entered" do
    product = Product.create(:name => 'Polish Sausage', :country => 'Poland', :cost => '5')
    visit product_path(product)
    click_link 'New Review'
    click_on 'Create Review'
    expect(page).to have_content 'errors'
  end
end
