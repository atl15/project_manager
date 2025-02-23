require "rails_helper"

RSpec.feature "Project entries", type: :feature do
  let!(:project) { create(:project) }
  let!(:user) { create(:user) }

  before do
    sign_in user
    visit "/projects/#{project.id}"
  end

  scenario "User successfully adds a new comment to the project" do
    expect(page).to have_text("#{project.name} ##{project.id}")

    click_on "Add a comment"

    expect(page).to have_text("New Comment")

    fill_in "comment_text", with: "Comment text"
    click_on "Create Comment"

    expect(page).to have_text(user)
    expect(page).to have_text("Comment text")
  end

  scenario "User gets validation errors while adding a new comment to the project" do
    expect(page).to have_text("#{project.name} ##{project.id}")

    click_on "Add a comment"

    expect(page).to have_text("New Comment")

    click_on "Create Comment"

    expect(page).to have_text("Can't be blank")
  end
end
