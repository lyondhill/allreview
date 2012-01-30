require 'spec_helper'

describe "sub_categories/edit.html.erb" do
  before(:each) do
    @sub_category = assign(:sub_category, stub_model(SubCategory,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit sub_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sub_categories_path(@sub_category), :method => "post" do
      assert_select "input#sub_category_name", :name => "sub_category[name]"
      assert_select "input#sub_category_description", :name => "sub_category[description]"
    end
  end
end
