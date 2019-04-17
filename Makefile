MD_FILES=$(shell ls *.md)

html: $(MD_FILES)
	for $f in $(MD_FILES); do;\
		pandoc --template ./Templates/mermaid_template.html5 --filter pandoc-mermaid -o $f.html $f;\
	done;
