NFL Defense Chart
=================

Just a quick chart of 2014 NFL Defenses,
in response to and inspired by a similar post [on reddit](http://www.reddit.com/r/dataisbeautiful/comments/1vgcjj/nfl_offenses_this_season_including_playoffs/) for offenses.

I've included the PNG images, R script, and some bash, perl, and Javascript I used to collect everything:
* Javascript - paste it into the JS console on [SportsLogos.net](http://www.sportslogos.net/teams/list_by_league/7), and it'll give you a list of team names and URLs
* Paste that into logolist.json, and the perl script will download the images to the logos directory
* Bash script converts the images to PNG

Data from the [NFL's website](http://www.nfl.com/stats/categorystats?archive=false&conference=null&role=OPP&offensiveStatisticCategory=null&defensiveStatisticCategory=GAME_STATS&season=2013&seasonType=REG&tabSeq=2&qualified=false&Submit=Go).

As mentioned above, logos scraped from [Chris Creamer's SportsLogos.net](http://www.sportslogos.net/teams/list_by_league/7).  Thanks, Chris!

Chart created in Rstudio.
