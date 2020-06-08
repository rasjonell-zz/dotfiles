function open_markdown
  pandoc $argv[1] | w3m -T text/html
end
