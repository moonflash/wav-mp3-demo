class Song < ActiveRecord::Base
  attr_accessible :title, :wav
  has_attached_file :wav,
                    :styles => {
                       :mp3 => {
                         :params => "-q1 -b 320",
                         :format => "mp3" }
                      },
                      :processors => [:wav_mp3]
end
