require 'nokogiri'
require 'open-uri'

namespace :re do
  ZIP_CODES = [
    '84745',
    '84737',
    '84763',
    '84767',
    '84779',
  ]

  desc "scrapes MLS listings"
  task scrape: :environment do
    ZIP_CODES.each do |zip_code|
      ZipCode.where(value: zip_code).first_or_create
    end
    # errors += UtahRealEstateScraper.new(ZIP_CODES).run
    # puts errors
  end

  desc "populates zipcode data"
  task zip: :environment do
    Zipcode.all.each do |zip_code|
      Quandl.new(zip_code).run
    end
  end

end