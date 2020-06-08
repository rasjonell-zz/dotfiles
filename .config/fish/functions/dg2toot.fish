function dg2toot {
  feed2toot -c /etc/feed2toot/feed2toot.ini
  feed2toot --populate-cache -c /etc/feed2toot/feed2toot.ini
}
