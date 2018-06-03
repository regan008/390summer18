#!/bin/bash
cd content
cat _index.md policies.md assignments.md schedule.md > ../syllabus.md
cd ../
file="syllabus-modified.md"
if [ -f "$file" ]
then
  pandoc syllabus-modified.md -o syllabus.pdf
else
  echo "no modified version found. Modify the syllabus and try again."
fi
