class FortunesController < ApplicationController
  def horoscopes
    urlsign= params.fetch("the_sign")
    signsym = urlsign.to_sym
    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(signsym)
    @signname = this_zodiac.fetch(:name)
    @horoscope = this_zodiac.fetch(:horoscope)


    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end

    render({ :template => "horoscope_templates/zodiac_signs.html.erb" })
  end

end
