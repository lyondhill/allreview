require 'spec_helper'

describe "sub_categories/show.html.erb" do
  before(:each) do
    @sub_category = assign(:sub_category, stub_model(SubCategory,
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
  end
end
