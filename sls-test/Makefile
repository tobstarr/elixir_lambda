.PHONY: deploy build_release

ARTIFACT_ZIP=_build/production/artifact.zip

build_release:
	MIX_ENV=production mix release --overwrite

$(ARTIFACT_ZIP):
	cd _build/production && zip -q -r artifact.zip lib

clean:
	rm -f $(ARTIFACT_ZIP)

build: build_release $(ARTIFACT_ZIP)

deploy: build
	sls deploy --verbose
