require 'rails_helper'

describe "the add product process" do
  it "adds a new product" do
    visit products_path
    click_link 'Add A New Product'
    fill_in 'Name', :with => 'Irish Stew'
    fill_in 'Cost', :with => '12'
    fill_in 'Country', :with => 'Ireland'

    click_on 'Create Product'
    expect(page).to have_content 'Products'
  end

  it "gives error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end

describe "the edit product process" do
  it "edits a product" do
    product = Product.create(:name => 'Polish Sausage', :country => 'Poland', :cost => '5')
    visit product_path(product)
    fill_in 'Name', :with => 'Tasty Polish Sausage'
    click_on 'Update Product'
    expect(page).to have_content 'Product successfully updated!'
  end
end

describe "the delete product process" do
  it "deletes a product" do
    product = Product.create(:name => 'Polish Sausage', :country => 'Poland', :cost => '5')
    visit product_path(product)
    click_link 'Delete'
    expect(page).to have_content 'Product successfully deleted!'
  end
end
