require 'spec_helper'

describe Blog do
  subject   { Blog.new(->{entries}) }
  let(:entries) { [] }

  it 'has no entries' do
    expect(entries).to be_empty
  end

  describe '#add_entry' do
    it 'adds the entry to the blog' do
      entry = Object.new
      entries.add_entry(entry)
      expect(entries).to include(entry)
    end
  end

end
