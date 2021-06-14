# vim:noet

BASENAME = terminal-unicode-core
SOURCE_FILES = spec/$(BASENAME).tex
TARGET_DIR = out

all: ${TARGET_DIR}/${BASENAME}.pdf

clean:
	@rm -vf ${TARGET_DIR}/*

${TARGET_DIR}/${BASENAME}.pdf: $(SOURCE_FILES)
	@mkdir -p ${TARGET_DIR}
	@cd spec && latexmk -pdflatex ${BASENAME}.tex \
		-aux-directory=../${TARGET_DIR} -output-directory=../${TARGET_DIR}

.PHONY: all clean
