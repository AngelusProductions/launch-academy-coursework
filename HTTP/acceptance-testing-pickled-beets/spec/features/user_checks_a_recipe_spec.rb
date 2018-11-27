require "spec_helper"

feature "User checks a recipe's deliciousness", %(
  As a user
  I want to submit a recipe name to see if it is delicious
  So that I know with confidence what to cook.

  Acceptance Criteria:
  [o] When I visit the root path, I can see a form to submit a recipe name
  [o] If I submit a recipe name with "pickled beets" in the name, I am
      sent to a "results" page telling me that the recipe is delicious
  [o] If I submit a recipe name without "pickled beets" in the name, I am
      sent to a "results" page telling me that the recipe is not delicious
  [o] From the "results" page, I am able to click a link bringing me back to
      the home page
  [o] If I submit a blank entry to the form, I am brought to an error page
  [o] From the error page, I can click a link bringing me back to the home page

) do

  scenario "recipe name form is present" do
    visit "/"
    expect(page).to have_content("Recipe Name")
  end

  scenario "user submits a recipe name containing 'pickled beets'" do
    visit "/"
    fill_in 'recipe_name', with: "Pickled beets"
    click_button "submit"
    expect(page).to have_content("is a delicious recipe!")
  end

  scenario "user submits a recipe name without 'pickled beets'" do
    visit "/"
    fill_in 'recipe_name', with: "Raw beets"
    click_button "submit"
    expect(page).to have_content("is not a delicious recipe!")
  end

  scenario "user navigates back to the home page after checking a recipe name" do
    visit '/'
    fill_in 'recipe_name', with: "Pickled beets"
    click_button "submit"
    click_link("Try again!")
    expect(page).to have_content("Instructions")
  end

  scenario "user submits an empty form" do
    visit '/'
    fill_in 'recipe_name', with: ""
    click_button "submit"
    expect(page).to have_content("Error")
  end

  scenario "user navigates back to the home page after submitting an empty form" do
    visit '/'
    fill_in 'recipe_name', with: ""
    click_button 'submit'
    click_link("Try again!")
    expect(page).to have_content("Instructions")
  end
end
