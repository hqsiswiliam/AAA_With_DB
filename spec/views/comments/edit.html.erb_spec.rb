require 'spec_helper'

describe "comments/edit.html.erb" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :event_id => 1,
      :details => "MyText",
      :author => "MyString"
    ))
  end

  it "renders the edit comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comments_path(@comment), :method => "post" do
      assert_select "input#comment_event_id", :name => "comment[event_id]"
      assert_select "textarea#comment_details", :name => "comment[details]"
      assert_select "input#comment_author", :name => "comment[author]"
    end
  end
end
