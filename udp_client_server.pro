TEMPLATE = app

BIN_PATH = ../bin

#CONFIG(debug)   : BUILD_PATH = $$join(BIN_PATH,,,"/debug")
#CONFIG(release) : BUILD_PATH = $$join(BIN_PATH,,,"/release")

debug{
    BUILD_PATH = $$join(BIN_PATH,,,"/debug")
    message("Debug")
}

release{
    BUILD_PATH = $$join(BIN_PATH,,,"/release")
    message("Release")
}

DESTDIR     = $$BUILD_PATH
OBJECTS_DIR = $$BUILD_PATH/misc
MOC_DIR     = $$BUILD_PATH/misc
UI_DIR      = $$BUILD_PATH/misc
RCC_DIR     = $$BUILD_PATH/misc

CONFIG += console
CONFIG -= qt
CONFIG -= qt_no_framework

LIBS += -lboost_system -lpthread -lboost_thread
QMAKE_CXXFLAGS += -std=c++0x -g3
QMAKE_LFLAGS += -static -static-libgcc -static-libstdc++

SOURCES += main.cpp \
    udp_server.cpp \
    udp_client.cpp \

HEADERS += \
    common.h \
    asio_helper.h \
