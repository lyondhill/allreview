require 'spec_helper'

describe "sub_categories/index.html.erb" do
  before(:each) do
    assign(:sub_categories, [
      stub_model(SubCategory,
        :name => "Name",
        :description => "Description"
      ),
      stub_model(SubCategory,
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of sub_categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
