# Rails 3 Paperclip wav to mp3 Processor Demo #

This is demonstration of the [wav-mp3][6] gem

## Requirements ##

* [Paperclip][0] ~> 2.3
* [Rails 3][1] ~> 3
* [Lame][2]
* [wav-mp3][4]

## Installation ##

Download [Lame][2] here:
	http://lame.sourceforge.net/

Follow installation instructions:
	http://lame.sourceforge.net/

Now you should have "lame" installed on your system

Clone the project:
	
	git clone git://github.com/moonflash/wav-mp3-demo.git
	
	cd wav_mp3_demo
	bundle install
	rake db:create
	rake db:migrate
 	

Start:
	
	rails s

Create new Song and upload .WAV file (be careful with file names, cause that might be en issue... )

## Params ##
###Variable Bit Rate (VBR)###

	-v             VBR
	--vbr-old      use old variable bitrate (VBR) routine
	--vbr-new      use new variable bitrate (VBR) routine (default)
	-V n           VBR quality setting  (0=highest quality, 9=lowest)
	-b  n          specify a minimum allowed bitrate (8,16,24,...,320)
	-B  n          specify a maximum allowed bitrate (8,16,24,...,320)
	-F             strictly enforce minimum bitrate
	-t             disable VBR informational tag 
	--nohist       disable display of VBR bitrate histogram

	--abr n        specify average bitrate desired
	
###ID3 tagging:###

	--tt <title>    audio/song title (max 30 chars for version 1 tag)
	--ta <artist>   audio/song artist (max 30 chars for version 1 tag)
	--tl <album>    audio/song album (max 30 chars for version 1 tag)
	--ty <year>     audio/song year of issue (1 to 9999)
	--tc <comment>  user-defined text (max 30 chars for v1 tag, 28 for v1.1)
	--tn <track>    audio/song track number (1 to 255, creates v1.1 tag)
	--tg <genre>    audio/song genre (name or number in list)
	--add-id3v2     force addition of version 2 tag
	--id3v1-only    add only a version 1 tag
	--id3v2-only    add only a version 2 tag
	--space-id3v1   pad version 1 tag with spaces instead of nulls
	--pad-id3v2     same as '--pad-id3v2-size 128'
	--pad-id3v2-size <num> adds version 2 tag, pad with extra <num> bytes
	--genre-list    print alphabetically sorted ID3 genre list and exit	

For more details about Lame parameters visit: http://lame.cvs.sourceforge.net/viewvc/lame/lame/USAGE



## info ##


Have fun with it and drop me a note if you like it.
* [moonflash][3]

[0]: https://github.com/thoughtbot/paperclip
[1]: http://rubyonrails.org/
[2]: http://lame.sourceforge.net/
[3]: https://twitter.com/moonflash
[4]: https://rubygems.org/gems/wav-mp3
[6]: https://github.com/moonflash/WAV-MP3---paperclip-processor