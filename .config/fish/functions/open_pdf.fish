function open_pdf
  pdftotext \
   -layout \
   -opw supersecret \
   -upw secret \
   -eol unix \
   -nopgbrk \
   $argv[1] - | less
end
