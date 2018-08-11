require "application_system_test_case"

class PeopleTest < ApplicationSystemTestCase
  setup do
    @person = people(:one)
  end

  test "visiting the index" do
    visit people_url
    assert_selector "h1", text: "People"
  end

  test "creating a Person" do
    visit people_url
    click_on "New Person"

    fill_in "City", with: @person.city
    fill_in "County", with: @person.county
    fill_in "Date Of Birth", with: @person.date_of_birth
    fill_in "Email", with: @person.email
    fill_in "Forename", with: @person.forename
    fill_in "License Period", with: @person.license_period
    fill_in "License Type", with: @person.license_type
    fill_in "Occupation", with: @person.occupation
    fill_in "Postcode", with: @person.postcode
    fill_in "Street", with: @person.street
    fill_in "Surname", with: @person.surname
    fill_in "Telephone", with: @person.telephone
    fill_in "Title", with: @person.title
    click_on "Create Person"

    assert_text "Person was successfully created"
    click_on "Back"
  end

  test "updating a Person" do
    visit people_url
    click_on "Edit", match: :first

    fill_in "City", with: @person.city
    fill_in "County", with: @person.county
    fill_in "Date Of Birth", with: @person.date_of_birth
    fill_in "Email", with: @person.email
    fill_in "Forename", with: @person.forename
    fill_in "License Period", with: @person.license_period
    fill_in "License Type", with: @person.license_type
    fill_in "Occupation", with: @person.occupation
    fill_in "Postcode", with: @person.postcode
    fill_in "Street", with: @person.street
    fill_in "Surname", with: @person.surname
    fill_in "Telephone", with: @person.telephone
    fill_in "Title", with: @person.title
    click_on "Update Person"

    assert_text "Person was successfully updated"
    click_on "Back"
  end

  test "destroying a Person" do
    visit people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person was successfully destroyed"
  end
end
