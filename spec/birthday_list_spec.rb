require 'birthday_list.rb'

describe 'Birthday list' do 
  it 'stores a list of birthdays' do
    birthday = Birthday.new
    expect(birthday.birthday_list).to eq Mary: "May 31st, 1993",
    Mitchell: "June 15th, 1993",
    Kyle: "Jan 27th, 1986", 
    Sally: "March 17th, 1966"
  end
  it 'returns the birthday list one per line in a tidy format' do
    birthday = Birthday.new
    expect(birthday.display_birthdays).to eq ("Mary, May 31st, 1993\nMitchell, June 15th, 1993\nKyle, Jan 27th, 1986\nSally, March 17th, 1966\n")
    end
  it 'notifies user of people with birthdays today' do
    birthday = Birthday.new
    expect(birthday.todays_birthdays).to eq "Today is Sally's Birthday!"
    end
  end