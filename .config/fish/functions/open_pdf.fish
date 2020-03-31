function open_pdf
  if $argv[2]
    set reader $argv[2]
  else
    set reader less
  end

  pdftotext \
   -layout \
   -opw supersecret \
   -upw secret \
   -eol unix \
   -nopgbrk \
   $argv[1] - | $reader
end
