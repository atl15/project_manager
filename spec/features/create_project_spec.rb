require "rails_helper"

RSpec.feature "Create project", type: :feature do
  before do
    user = create(:user)
    sign_in user
    visit "/"
  end

  scenario "User successfully creates a new project" do
    click_on "Add new"

    expect(page).to have_text("New Project")

    fill_in "project_name", with: "Project name"
    select "In progress", from: "project_status"
    fill_in "project_text", with: "Project text"

    click_on "Create Project"

    expect(page).to have_text("Project name")
    expect(page).to have_text("In progress")
  end

  scenario "User gets validation errors while creating a new project" do
    click_on "Add new"

    expect(page).to have_text("New Project")

    fill_in "project_name", with: ""
    fill_in "project_text", with: ""

    click_on "Create Project"

    expect(page).to have_text("Can't be blank").twice
  end
end
