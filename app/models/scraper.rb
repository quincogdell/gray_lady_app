class Scraper
  # attr_accessible :title, :body
  attr_accessor :url

  def initialize(url)
    @url = url
  end

  def get_hrefs
    response_str = HTTParty.get(@url)
    doc = Nokogiri::HTML(response_str)
    links = doc.css("a")
    links_array = links.map { |link| link['href']}
    links_array.flatten
  end

  def get_images
    response_str = HTTParty.get(@url)
    doc = Nokogiri::HTML(response_str)
    links = doc.css("img")
    links_array = links.map { |link| link['src']}
    links_array.flatten
  end

end
