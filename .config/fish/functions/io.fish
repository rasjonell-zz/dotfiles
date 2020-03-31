function io
  if count $argv > /dev/null
    docker run --rm -i -t -v (pwd):/source nacyot/io-io:latest io $argv[1]
  else
    docker run --rm -i -t nacyot/io-io:latest io
  end
end
