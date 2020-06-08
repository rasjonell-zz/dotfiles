function pluralsight-dl
  set -l username $argv[1]
  set -l password $argv[2]
  set -l path     $argv[3]
  set -l url      $argv[4]

  youtube-dl --username "$username" --password "$password" --verbose "$url" --write-sub -o "$path/%(playlist)s/%(chapter_number)s. %(chapter)s/%(playlist_index)s. %(title)s.%(ext)s" -r 300K --add-header Referer:"https://app.pluralsight.com/library/courses/" -i -c --no-warnings --console-title --no-check-certificate --max-sleep-interval 80 --min-sleep-interval 60
end
