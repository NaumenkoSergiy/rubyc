require 'spec_helper'

describe Post do
  it { should have_db_column :title }
  it { should have_db_column :body }
  it { should have_db_column :published }

  # Scopes
  describe 'published' do
    let!(:published_post){ FactoryGirl.create :post, published: true }
    let!(:not_published_post){ FactoryGirl.create :post, published: false }

    it { expect(Post.published.ids).not_to include not_published_post.id }
    it { expect(Post.published.ids).to     include published_post.id }
  end
end
