# vim:noet

BASENAME = terminal-unicode-core
SOURCE_FILES = spec/$(BASENAME).tex
TARGET_DIR = out

all: ${TARGET_DIR}/${BASENAME}.pdf

clean:
	@rm -vf ${TARGET_DIR}/*

${TARGET_DIR}/${BASENAME}.pdf: $(SOURCE_FILES)
	@mkdir -p ${TARGET_DIR}
	pdflatex -aux_directory=${TARGET_DIR} -output-directory=${TARGET_DIR} $^
	biber ${TARGET_DIR}/${BASENAME}.bcf
	pdflatex -aux_directory=${TARGET_DIR} -output-directory=${TARGET_DIR} $^
	pdflatex -aux_directory=${TARGET_DIR} -output-directory=${TARGET_DIR} $^

.PHONY: all clean
