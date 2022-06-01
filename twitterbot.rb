#!/usr/bin/env ruby

require 'rubygems'
require 'chatterbot/dsl'
require 'rss'
require 'open-uri'
require 'active_support/time'

#debug_mode
#no_update
verbose

timenow = Time.now.utc
timepst = timenow + Time.zone_offset("PDT")
timeago = timepst - 10.minutes

url = 'https://pinballmap.com/location_machine_xrefs.rss'
URI.open(url) do |rss|
  feed = RSS::Parser.parse(rss)
  feed.items.each do |item|
    break item if item.pubDate < timeago
      tweet "#{item.title} #{item.link}"
  end
end
