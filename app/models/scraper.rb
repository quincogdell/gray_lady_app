class Scraper
  # attr_accessible :title, :body
  attr_accessor :url

  def initialize(url)
    @url = url
    @doc = Nokogiri::HTML(HTTParty.get(@url))
  end

  def get_hrefs
    links = @doc.css("a")
    links_array = links.map { |link| link['href']}
    links_array.flatten
  end

  def get_images
    links = @doc.css("img")
    links_array = links.map { |link| link['src']}
    links_array.flatten
  end

end
