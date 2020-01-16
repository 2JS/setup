#!/usr/bin/python2.7
# -*- coding: utf8 -*-

import cocoa
import sys
from urllib import quote
from unicodedata import normalize

reload(sys)
sys.setdefaultencoding('utf-8')

if __name__ == '__main__':
    if len(sys.argv) != 3:
        raise ValueError
    tl = sys.argv[1]
    query = normalize('NFC', unicode(sys.argv[2])).encode('utf-8')
    url = u'https://translate.google.com/m/translate?tl=%s&text=%s' % (tl, quote(query))
    print(url)
    view = cocoa.BrowserView('Google Translate', url, width=600, height=700)
    view.show()
    sys.exit(0)
