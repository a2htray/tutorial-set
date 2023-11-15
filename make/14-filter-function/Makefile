go_files := main1.go main2.go bad.c

entrypoint: $(filter %.go,$(go_files))

%.go:
	touch $@

clean:
	rm -f $(filter %.go,$(go_files))


