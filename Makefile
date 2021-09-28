HTML_FILES=about.html concFond.html index.html install.html rSconos.html wrangle.html plot.html conclusione.html contatti.html

all: $(HTML_FILES)
	echo All files are now up to date

clean : 
	    rm -f docs/*html

%.html: %.Rmd
	Rscript -e 'rmarkdown::render_site("$<")'
