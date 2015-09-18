require_relative '../lib/noawsalbumart'
require 'spec_helper'

describe Noawsalbumart do

  it 'has a version number' do
    expect(Noawsalbumart::VERSION).not_to be nil
  end

	describe '#search' do

		it 'finds an amazon url with an artist and album name' do
			expect(Noawsalbumart.search("Kanye West", "Graduation")).to eq("http://ecx.images-amazon.com/images/I/516is-FPgmL._AA160_.jpg")
		end

		it "returns an 'Album Art Not Found' string when there is no proper one" do
			expect(Noawsalbumart.search("", nil)).to eq("Album Art Not Found")
		end

	end

end
