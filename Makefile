JAVAC := javac
JAR := jar

%.class: %.java
	$(JAVAC) $(JAVACFLAGS) $<

JAVA := $(shell find . -name "*.java")
CLASS := $(JAVA:.java=.class)
JARFILE := fizzbuzz.jar

all: $(JARFILE)
$(JARFILE): $(CLASS)
	$(JAR) cef start.Main $@ $^

clean:
	$(RM) $(CLASS) $(JARFILE)
