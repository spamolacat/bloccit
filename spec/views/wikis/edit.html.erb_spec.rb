require 'spec_helper'

describe "wikis/edit" do
  before(:each) do
    @wiki = assign(:wiki, stub_model(Wiki,
      :content => "MyString",
      :title => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit wiki form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", wiki_path(@wiki), "post" do
      assert_select "input#wiki_content[name=?]", "wiki[content]"
      assert_select "input#wiki_title[name=?]", "wiki[title]"
      assert_select "input#wiki_user_id[name=?]", "wiki[user_id]"
    end
  end
end
