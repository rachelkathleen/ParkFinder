require 'nokogiri'
require 'open-uri'

NPS = "https://www.nps.gov/"

def get_page(url)
  Nokogiri::HTML(open(NPS + url))
end

def get_urls
  page = get_page("aboutus/national-park-system.htm")
  nodeset = page.css(".accordion-list div div div div a")[274..334]
  urls = []
  nodeset.each do |node|
    urls << node.attr("href")
  end
  urls
end

park_hashes = []

get_urls.each do |url|
  page = get_page(url)

  park_hashes << {park_name: page.css(".Hero-title").children.text,
                  headline: page.css("h1").text,
                  description: page.css("p").text.split("Last updated")[0],
                  state: page.css(".region").text,
                  website: "https://www.nps.gov"+url,
                  image: NPS+park_image = page.css(".Hero div div").attr("style").value.split("'/")[1].split("?")[0]
                  }
end

park_hashes.each do |hash|
  Park.create(hash)
end
