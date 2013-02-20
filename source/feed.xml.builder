# -*- coding: utf-8 -*-
xml.instruct!
xml.feed "xmlns:itunes" => "http://www.itunes.com/dtds/podcast-1.0.dtd", "version" => "2.0" do
  xml.channel do
    xml.title "Teahour.fm"
    xml.link "http://teahour.fm"
    xml.language "zh-CN"
    xml.copyright "&#x2117; &amp; &#xA9; 2013 Teahour.fm"
    xml.itunes :subtitle, "The chinese tech podcast focusing on programming, entrepreneurship and other geeky topics."
    xml.itunes :author, "Dingding Ye"
    xml.itunes :summary, ""
  end
  xml.id "http://teahour.fm"
  xml.link "href" => "http://teahour.fm/"
  xml.link "href" => "http://teahour.fm/feed.xml", "rel" => "self"
  xml.updated blog.articles.first.date.to_time.iso8601
  xml.description ""
  xml.author { xml.name "Dingding Ye" }
  xml.itunes :owner do
    xml.itunes :name, "Dingding Ye"
    xml.itunes :email, "yedingding@gmail.com"
  end
  xml.itunes :image, "href" => ""
  xml.itunes :category, "text" => "Technology"
  xml.itunes :category, "text" => "Software How-To"
  xml.itunes :category, "text" => "Gadgets"

  blog.articles.each do |article|
    xml.item do
      xml.title article.title
      xml.itunes :author, article.data["host"]
      xml.itunes :summary, article.summary, "type" => "html"
      xml.itunes :image, "href" => ""
      xml.enclosure "url" => article.data["mp3_link"], "type" => "audio/x-m4a"
      xml.guid article.data["mp3_link"]
      xml.pubDate article.date.to_time.iso8601
      xml.itunes :duration, article.data["duration"]
      xml.itunes :keywords, article.tags.join(", ")
    end
  end
end
