
integrator:
	./bin/ant -f integrator.xml

sample-topic-pdf:
	./bin/dita -i ./plugins/org.sample.ul2ol/sample/sample-topic.dita -f pdf -o out -v

sample-topic-customized-pdf:
	./bin/dita -i ./plugins/org.sample.ul2ol/sample/sample-topic.dita -f pdf -o out -v --customization.dir=./pdf.customization.dir
