cut -f 5,12 2020-05-23-Article_list_dirty.tsv > cut.tsv
grep -E '\d{4}-\d{3}' < cut.tsv > grep.tsv
tr [:upper:] [:lower:] < grep.tsv > tr.tsv
tr -ds 'issn: ' '' < tr.tsv > trr.tsv
sort -n < trr.tsv > sort.tsv
uniq < sort.tsv > 2020-05-23-Dates_and_ISSNs.tsv
