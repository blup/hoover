# Hoover

Hoover is a tiny jQuery/Zepto plugin for triggering delayed hover events. Similar to [hoverIntent](https://github.com/briancherne/jquery-hoverIntent), but under 1k minified. This plugin is based on a [gist](https://gist.github.com/1065712) from Thomas Fuchs.

```js
$('.button').hoover({in: 500, out: 250})
            .on('hooverIn', function() { console.log('hovering in') })
            .on('hooverOut', function() { console.log('hovering out') })
```
