#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = "Sayantan Khan"
SITENAME = "Sayantan Khan's Blog"
SITEURL = ""
STATIC_PATHS = ["images", "pages/pdfs", "pdfs"]
THEME = "theme"

PLUGIN_PATHS = ["plugins"]
PLUGINS = ["render_math"]

PATH = "content"

DISPLAY_CATEGORIES_ON_MENU = False
DISPLAY_PAGES_ON_MENU = False

MENUITEMS = (
    ("About", "/pages/about-me.html"),
    # ('Blog', '/category/blog.html'),
    # ('Email', 'http://www.google.com/recaptcha/mailhide/d?...'),
    ("Research", "http://www-personal.umich.edu/~saykhan/research.html"),
    ("Talks", "http://www-personal.umich.edu/~saykhan/talks.html"),
    ("Notes", "http://www-personal.umich.edu/~saykhan/notes.html"),
    ("Contact", "/pages/contact.html"),
    ("CV", "/pages/pdfs/cv/cv.pdf"),
)

TIMEZONE = "America/Detroit"

DEFAULT_LANG = "en"

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

# Blogroll
LINKS = []
# ('Pelican', 'http://getpelican.com/'),
# ('Python.org', 'http://python.org/'),
# ('Jinja2', 'http://jinja.pocoo.org/'),
# ('You can modify those links in your config file', '#'),)

# Social widget
# SOCIAL = (('You can add links in your config file', '#'),
# ('Another social link', '#'),)

DEFAULT_PAGINATION = False

# Uncomment following line if you want document-relative URLs when developing
# RELATIVE_URLS = True
# DISQUS_SITENAME = "sayantan-khans-blog"
