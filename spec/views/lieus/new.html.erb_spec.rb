require 'spec_helper'

describe "lieus/new.html.erb" do
  before(:each) do
    assign(:lieu, stub_model(Lieu,
      :lat => 1.5,
      :lng => 1.5
    ).as_new_record)
  end

  it "renders new lieu form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lieus_path, :method => "post" do
      assert_select "input#lieu_lat", :name => "lieu[lat]"
      assert_select "input#lieu_lng", :name => "lieu[lng]"
    end
  end
end
