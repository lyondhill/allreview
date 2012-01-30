require 'spec_helper'

describe "sub_categories/new.html.erb" do
  before(:each) do
    assign(:sub_category, stub_model(SubCategory,
      :name => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new sub_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sub_categories_path, :method => "post" do
      assert_select "input#sub_category_name", :name => "sub_category[name]"
      assert_select "input#sub_category_description", :name => "sub_category[description]"
    end
  end
end
