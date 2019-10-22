#!/bin/bash

./a.out tests/*.txt;
for file in tests/*.txt; do
	diff -q "$file" "output/output_$(basename $file)" >> diffs;
done
[ -s diffs ] && cat diffs || echo "No diffs found between input and output. GG <3 !!";
