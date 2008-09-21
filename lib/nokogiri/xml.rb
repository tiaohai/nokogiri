require 'nokogiri/xml/node'
require 'nokogiri/xml/text'
require 'nokogiri/xml/document'
require 'nokogiri/xml/node_set'
require 'nokogiri/xml/text_node'
require 'nokogiri/xml/xpath'
require 'nokogiri/xml/builder'
require 'nokogiri/xml/sax'

module Nokogiri
  module XML
    class << self
      def parse(string, url = nil, encoding = nil, options = 1)
        Document.read_memory(string, url, encoding, options)
      end

      def substitute_entities=(value = true)
        Document.substitute_entities = value
      end

      def load_external_subsets=(value = true)
        Document.load_external_subsets = value
      end
    end
  end
end
