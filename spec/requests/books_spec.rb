require 'rails_helper'

RSpec.describe "books", :type => :request do
  it "books index" do
    get "/books/new"
    assert_select "form.new_book" do
      assert_select "input[name=?]", "book\[title\]"
      assert_select "textarea[name=?]", "book\[memo\]"
      assert_select "input[type=?]", "submit"
    end
  end
end
