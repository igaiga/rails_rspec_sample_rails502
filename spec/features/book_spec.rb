require 'rails_helper'

describe "books new,create", type: :feature do
  it "books" do
    visit '/books/new'
    within("#new_book") do
      fill_in 'book_title', with: 'rails textbook'
      fill_in 'book_author', with: 'igaiga'
    end
    click_button 'Create Book'
    expect(page).to have_content 'Book was successfully created.'
  end
end
