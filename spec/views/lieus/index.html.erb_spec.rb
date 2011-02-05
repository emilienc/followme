require 'spec_helper'

describe "lieus/index.html.erb" do
  before(:each) do
    assign(:lieus, [
      stub_model(Lieu,
        :lat => 1.5,
        :lng => 1.5
      ),
      stub_model(Lieu,
        :lat => 1.5,
        :lng => 1.5
      )
    ])
  end

  it "renders a list of lieus" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
