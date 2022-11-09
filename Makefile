.PHONY: help 

help:
	@grep -E '^[.a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

all: ## make all figures
	cd displaced && ./gen.sh
	cd returns && ./gen.sh
	cd tenure && ./gen.sh
	cd wages && ./gen.sh


clean: ## Remove all eps and pdf files
	cd displaced &&  rm -rf *.eps; rm -rf *.pdf
	cd returns && rm -rf *.eps; rm -rf *.pdf
	cd tenure && rm -rf *.eps; rm -rf *.pdf
	cd wages && rm -rf *.eps; rm -rf *.pdf
