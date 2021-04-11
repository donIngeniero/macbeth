require 'nokogiri'
require 'open-uri'

class PlaysList
  def initialize
    @url = "http://www.ibiblio.org/xml/examples/shakespeare/"
  end

  #TO-DO Iemplement get method

  def list
    extract_names_and_urls = lambda do |doc|
      [extact_url(@url, document), extract_titles(document)]
    end
    
    html.css('a').map(&extract_names_and_urls)
  end

  def html
    # @html it is set on get method
    @html
  end

  def extact_url(url, document)
  end

  def extract_titles(document)
  end

end
