require 'sinatra'
require 'active_record'
require_relative './app/models/screen'

ActiveRecord::Base.establish_connection(adapter: 'postgresql',
                                        database: 'screens')

get '/' do
  @headers    = ["Television and Movie Screens", "Aspect Ratios", "Analog vs Digital", "Television Systems"]
  @paragraphs = ["Aspect ratios come in many forms depending on the type of screen. Both television and movie screens are traditionally a 4:3 ratio; that is, their width is slightly larger than the height. It's also known as 1.33. For silent films, this was the standard, until sound came around and they had to fit the strip containing the sound information on the side of the film. The sound replacement, standardized in 1932, was 1.37, and used until 1938.", "Newer television screens are 16:1. Movies, however, are wider, and that is why there are two black bars on the screen when a movie shows on TV.", "Analog simply describes the signal. Most new movies and TV are digital, forcing people with older TVs to get a video converter in order to see their channels. Not all TV shows or movies are digital, however. Some types of channels, such as public access television, can be analog, and some directors prefer film, such as Quentin Tarantino.", "There are several television systems available, but the two that most Americans come across are NTSC and PAL. NTSC is the standard in the US, while PAL is used in most of Europe. It's simply the amount of lines on the screen, and only applies to analog signals. There are several television systems available, but the two that most Americans come across are NTSC and PAL. NTSC is the standard in the US, while PAL is used in most of Europe. It's simply the amount of lines on the screen, and only applies to analog signals."]
  erb :index
end
