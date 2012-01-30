require 'spec_helper'

describe "reviews/new.html.erb" do
  before(:each) do
    assign(:review, stub_model(Review,
      :title => "MyString",
      :body => "MyString",
      :score => 1
    ).as_new_record)
  end

  it "renders new review form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reviews_path, :method => "post" do
      assert_select "input#review_title", :name => "review[title]"
      assert_select "input#review_body", :name => "review[body]"
      assert_select "input#review_score", :name => "review[score]"
    end
  end
end
