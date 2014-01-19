imglist = {};
$('#team .logoWall li').each(function(idx, elm){ imglist[$(elm).find('a').text()] = $(elm).find('img').attr('src') });
jsonstr = imglist.toString();
