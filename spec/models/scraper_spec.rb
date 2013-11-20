require 'spec_helper'

describe Scraper do

  it "initializes witha url" do
    url = 'www.google.com'
    scraper = Scraper.new(url)
    expect(scraper.url).to eq url
  end

  it "raises an error without a url" do
    expect { Scraper.new}.to raise_error(ArgumentError)
  end

  it "returns a link when get_hrefs is called" do
    url = "http://www.nytimes.com/"
    test_href = "http://www.nytimes.com/pages/todayspaper/index.html"
    scraper = Scraper.new(url)
    results = scraper.get_hrefs
    expect(results).to include test_href
  end

  it "returns a picture when get_images is called" do
    url = "http://www.timecube.com/"
    test_img = "TimeCube_com_newpicture_EarthCube.jpg"
    scraper = Scraper.new(url)
    results = scraper.get_images
    expect(results).to include test_img
  end


end
