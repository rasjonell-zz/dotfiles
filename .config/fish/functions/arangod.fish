function arangod
  docker run -e ARANGO_ROOT_PASSWORD="" -p 8529:8529 arangodb/arangodb:3.6.4
end
