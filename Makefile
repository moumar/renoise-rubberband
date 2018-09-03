PACKAGE_NAME=com.renoise.rubberband
VERSION_NO=`grep '<Version>' manifest.xml | sed 's/.*>\(.*\)<.*/\1/' | sed -e 's/\./_/g'`
TARGET=dist/$(shell echo $(PACKAGE_NAME)_V$(VERSION_NO).xrnx)
FILES=manifest.xml *.lua bin/

$(TARGET): $(FILES)
	zip -r $(TARGET) $(FILES)

clean:
	rm *.xrnx
