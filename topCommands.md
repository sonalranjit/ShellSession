### Top commands
`find -not -empty -type f -print "%s\n" | sort -rn | uniq -d | xargs -I{} -n1 find -type f -size {}c -print0 | xargs -0 md5sum | sort | uniq -w32 --all-repeated=separate`

### find occurences and replace
`sed 's/cats/dogs/' catsdogs.txt > cats.txt
