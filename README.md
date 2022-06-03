This is a very simple RSS-to-Twitter bot.

It uses Ruby, and the [Chatterbot](https://github.com/muffinista/chatterbot) gem. You'll need to fill in the yml file's fields with your Twitter Dev info (follow the instructions on the Chatterbot docs). The yml file needs to have the same name as your rb file.

It is run via a cron job every 10 minutes (Example: `*/10 * * * * /bin/bash -l -c '/home/pi/Documents/Bots/pbm-twitterbot/twitterbot.rb'`). Make sure that your .rb file has permission to be executed from cron. This works for us: `chmod u=rwx,g=r,o=r twitterbot.rb`

Example RSS: <https://pinballmap.com/location_machine_xrefs.rss>

Example Twitter feed: <https://twitter.com/pinballmapcom>
