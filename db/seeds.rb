# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts "Destroying all existing Quotes, if any."
Quote.destroy_all

quotes = [
  {
    :quote => "Behave like a Buddha until you become a Buddha.",
    :teacher => "Lama Ole Nydahl",
    :posted_by => "tomas.gregor@me.com",
    :verification => 1
  },
  {
    :quote => "Consciousness itself does not experience death. Since it was never born, the mind never dies.",
    :teacher => "Lama Ole Nydahl",
    :posted_by => "tomas.gregor@me.com",
    :verification => 1
  },
  {
    :quote => "When a meditator is confronted with experiences during meditation, he needs a teacher who is very qualified in this practice.",
    :teacher => "Lama Ole Nydahl",
    :posted_by => "tomas.gregor@me.com",
    :verification => 1
  },
  {
    :quote => "The positive attitude is a condition that we put into our mind until gradually it shows up spontaneously in our thoughts and actions.",
    :teacher => "Lama Ole Nydahl",
    :posted_by => "tomas.gregor@me.com",
    :verification => 1
  },
  {
    :quote => "While we are here, the current and temporary conditions of the here and now can be used to secure a better future.",
    :teacher => "Lama Ole Nydahl",
    :posted_by => "tomas.gregor@me.com",
    :verification => 1
  },
  {
    :quote => "Clarity of mind is nothing other than awareness aware of itself.",
    :teacher => "Lama Ole Nydahl",
    :posted_by => "tomas.gregor@me.com",
    :verification => 1
  },
  {
    :quote => "Being at ease with ourselves leads to intuition, the understanding beyond the intellect, which in the end is the key to enlightenment.",
    :teacher => "Lama Ole Nydahl",
    :posted_by => "tomas.gregor@me.com",
    :verification => 1
  },
  {
    :quote => "When we dream that we don't obtain what we want, we can suffer both physical and mental pain. When we realize the illusory nature of the dream, there is no more room for suffering.",
    :teacher => "Lama Ole Nydahl",
    :posted_by => "tomas.gregor@me.com",
    :verification => 1
  },
  {
    :quote => "When you understand mind, you understand everything.",
    :teacher => "Nagarjuna",
    :posted_by => "tomas.gregor@me.com",
    :verification => 1
  },
  {
    :quote => "Ultimate co-emergent wisdom can only come from gathering accumulations and purifying obscurations and through the blessings of a realized master - you should know that it's foolish to rely on any other method.",
    :teacher => "Saraha",
    :posted_by => "tomas.gregor@me.com",
    :verification => 1
  },
  
]

puts "Populating database with #{quotes.count} Quotes."

Quote.create quotes