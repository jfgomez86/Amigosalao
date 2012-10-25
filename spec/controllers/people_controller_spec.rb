require 'spec_helper'

describe PeopleController, "Routing" do
  it { {get: "/people/new"}.should route_to(controller: "people",
                                            action: "new") }
  it { {post: "/people"}.should route_to(controller: "people",
                                            action: "create") }
end

describe PeopleController, "Actions" do
  render_views

  describe "on GET to #new" do
    it "should render the people/new template" do
      get :new
      should render_template("people/new")
    end
  end

end
