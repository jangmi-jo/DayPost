require 'spec_helper'

RSpec.feature 'Users can view posts' do
  let!(:post) { FactoryGirl.create(:post, title: "Luxury Title", content: "New content with long content") }
  let!(:comment) { FactoryGirl.create(:comment, post_id: post.id, content: "First comment") }

  scenario "with the post details" do
    visit "/"

    click_link "Luxury Title"
    expect(page).to have_content(comment.content)
    expect(page.current_url).to eq post_url(post)
  end
end
