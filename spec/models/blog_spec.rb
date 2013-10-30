require 'spec_helper'

describe Blog do
  subject   { Blog.new(->{entries}) }
  let(:entries) { [] }

  it 'has no entries' do
    expect(entries).to be_empty
  end

end
