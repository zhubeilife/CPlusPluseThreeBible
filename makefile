APP      = testcode
SRCS     = $(wildcard *.cpp)
OBJS     = $(SRCS:.cpp=.o)

CXXFLAGS = -g -fPIC -c --std=c++14
LDFLAGS  =
LIBS     =

.PHONY: all clean

all: clean $(APP) run

$(APP): $(OBJS)
	$(CXX) $(LDFLAGS) $^ $(LIBS) -o $@

clean:
	$(RM) $(OBJS) $(APP)

run: ${APP}
	./${APP} ${ARGS}
