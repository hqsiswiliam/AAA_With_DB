require 'spec_helper'

describe "comments/new.html.erb" do
  before(:each) do
    assign(:comment, stub_model(Comment,
      :event_id => 1,
      :details => "MyText",
      :author => "MyString"
    ).as_new_record)
  end

  it "renders new comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comments_path, :method => "post" do
      assert_select "input#comment_event_id", :name => "comment[event_id]"
      assert_select "textarea#comment_details", :name => "comment[details]"
      assert_select "input#comment_author", :name => "comment[author]"
    end
  end
end
