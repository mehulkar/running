BUILD_DIR = .build
BIN_DIR = /usr/local/bin

build:
	swift build
	cp $(BUILD_DIR)/debug/running $(BIN_DIR)/

clean:
	rm -rf $(BUILD_PATH)
	rm $(BIN_DIR)/running

default:
	clean
	build
