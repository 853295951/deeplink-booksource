{
    "name": "知妖",
    "url": "www.cbaigui.com",
    "version": 101,
    "search": {
        "url": "http://www.cbaigui.com/?s=${key}",
        "charset": "UTF-8",
        "list": "article",
        "name": "h2>a",
        "author": "",
        "cover":".post-thumbnail.small > a > img",
        "detail": "h2>a"
    },
    "detail": {
        "summary": "meta[name=description]@attr->content",
  "status":".post-time@replace->->连载",
  "update":".post-time",
        "catalog": "link[rel=shortlink]"
    },
    "catalog": {
        "list": "link[rel=shortlink]",
        "name": "link[rel=shortlink]@attr->rel@replace->shortlink->知妖",
        "chapter": "link[rel=shortlink]"
    },
    "chapter": {
        "content": ".content > div.pad.group > article",
        "filter":["@.wbp-cbm"]
    },
    "rank": [ 
        {
        "title":"知妖",
        "url": "http://www.cbaigui.com/?paged=${page}",
        "page":1
      }, {
        "title":"夜谭",
        "url": "http://www.cbaigui.com/?cat=370&paged=${page}",
        "page":1
      }, {
        "title":"关于",
        "url": "https://gitee.com/wenmoux/BookSourceRepository/raw/master/sources/about.json",
        "list":"$.*",
        "name":"$.name",
        "summary":"$.summary",
        "detail":"http://www.cbaigui.com${$.detail}"
      }   
    ]
  }