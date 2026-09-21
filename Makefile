$(eval SRCS := $(shell find src -name "*.java" | tr '\r' ' '))

MidiChordHelper: $(SRCS)
	javac -encoding utf8 -d classes $^
	jar cvfm MidiChordHelper.jar mani.mf -C classes/ .

