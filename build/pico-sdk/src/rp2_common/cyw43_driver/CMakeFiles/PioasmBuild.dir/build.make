# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\RaspPico\Final-Script

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\RaspPico\Final-Script\build

# Utility rule file for PioasmBuild.

# Include any custom commands dependencies for this target.
include pico-sdk\src\rp2_common\cyw43_driver\CMakeFiles\PioasmBuild.dir\compiler_depend.make

# Include the progress variables for this target.
include pico-sdk\src\rp2_common\cyw43_driver\CMakeFiles\PioasmBuild.dir\progress.make

pico-sdk\src\rp2_common\cyw43_driver\CMakeFiles\PioasmBuild: pico-sdk\src\rp2_common\cyw43_driver\CMakeFiles\PioasmBuild-complete
	cd C:\RaspPico\Final-Script\build\pico-sdk\src\rp2_common\cyw43_driver
	cd C:\RaspPico\Final-Script\build

pico-sdk\src\rp2_common\cyw43_driver\CMakeFiles\PioasmBuild-complete: pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-install
pico-sdk\src\rp2_common\cyw43_driver\CMakeFiles\PioasmBuild-complete: pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-mkdir
pico-sdk\src\rp2_common\cyw43_driver\CMakeFiles\PioasmBuild-complete: pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-download
pico-sdk\src\rp2_common\cyw43_driver\CMakeFiles\PioasmBuild-complete: pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-update
pico-sdk\src\rp2_common\cyw43_driver\CMakeFiles\PioasmBuild-complete: pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-patch
pico-sdk\src\rp2_common\cyw43_driver\CMakeFiles\PioasmBuild-complete: pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-configure
pico-sdk\src\rp2_common\cyw43_driver\CMakeFiles\PioasmBuild-complete: pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-build
pico-sdk\src\rp2_common\cyw43_driver\CMakeFiles\PioasmBuild-complete: pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\RaspPico\Final-Script\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'PioasmBuild'"
	cd C:\RaspPico\Final-Script\build\pico-sdk\src\rp2_common\cyw43_driver
	echo >nul && "D:\Program Files\CMake\bin\cmake.exe" -E make_directory C:/RaspPico/Final-Script/build/pico-sdk/src/rp2_common/cyw43_driver/CMakeFiles
	echo >nul && "D:\Program Files\CMake\bin\cmake.exe" -E touch C:/RaspPico/Final-Script/build/pico-sdk/src/rp2_common/cyw43_driver/CMakeFiles/PioasmBuild-complete
	echo >nul && "D:\Program Files\CMake\bin\cmake.exe" -E touch C:/RaspPico/Final-Script/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/src/PioasmBuild-stamp/PioasmBuild-done
	cd C:\RaspPico\Final-Script\build

pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-build: pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\RaspPico\Final-Script\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing build step for 'PioasmBuild'"
	cd C:\RaspPico\Final-Script\build\pioasm
	$(MAKE)
	cd C:\RaspPico\Final-Script\build

pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-configure: pico-sdk\src\rp2_common\cyw43_driver\pioasm\tmp\PioasmBuild-cfgcmd.txt
pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-configure: pico-sdk\src\rp2_common\cyw43_driver\pioasm\tmp\PioasmBuild-cache-Debug.cmake
pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-configure: pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\RaspPico\Final-Script\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Performing configure step for 'PioasmBuild'"
	cd C:\RaspPico\Final-Script\build\pioasm
	echo >nul && "D:\Program Files\CMake\bin\cmake.exe" "-GNMake Makefiles" -CC:/RaspPico/Final-Script/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/tmp/PioasmBuild-cache-Debug.cmake C:/RaspPico/pico-sdk/tools/pioasm
	echo >nul && "D:\Program Files\CMake\bin\cmake.exe" -E touch C:/RaspPico/Final-Script/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/src/PioasmBuild-stamp/PioasmBuild-configure
	cd C:\RaspPico\Final-Script\build

pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-download: pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-source_dirinfo.txt
pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-download: pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\RaspPico\Final-Script\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "No download step for 'PioasmBuild'"
	cd C:\RaspPico\Final-Script\build\pico-sdk\src\rp2_common\cyw43_driver
	echo >nul && "D:\Program Files\CMake\bin\cmake.exe" -E echo_append
	echo >nul && "D:\Program Files\CMake\bin\cmake.exe" -E touch C:/RaspPico/Final-Script/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/src/PioasmBuild-stamp/PioasmBuild-download
	cd C:\RaspPico\Final-Script\build

pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-install: pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\RaspPico\Final-Script\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No install step for 'PioasmBuild'"
	cd C:\RaspPico\Final-Script\build\pioasm
	echo >nul && "D:\Program Files\CMake\bin\cmake.exe" -E echo_append
	echo >nul && "D:\Program Files\CMake\bin\cmake.exe" -E touch C:/RaspPico/Final-Script/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/src/PioasmBuild-stamp/PioasmBuild-install
	cd C:\RaspPico\Final-Script\build

pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\RaspPico\Final-Script\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'PioasmBuild'"
	cd C:\RaspPico\Final-Script\build\pico-sdk\src\rp2_common\cyw43_driver
	echo >nul && "D:\Program Files\CMake\bin\cmake.exe" -Dcfgdir= -P C:/RaspPico/Final-Script/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/tmp/PioasmBuild-mkdirs.cmake
	echo >nul && "D:\Program Files\CMake\bin\cmake.exe" -E touch C:/RaspPico/Final-Script/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/src/PioasmBuild-stamp/PioasmBuild-mkdir
	cd C:\RaspPico\Final-Script\build

pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-patch: pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\RaspPico\Final-Script\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'PioasmBuild'"
	cd C:\RaspPico\Final-Script\build\pico-sdk\src\rp2_common\cyw43_driver
	echo >nul && "D:\Program Files\CMake\bin\cmake.exe" -E echo_append
	echo >nul && "D:\Program Files\CMake\bin\cmake.exe" -E touch C:/RaspPico/Final-Script/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/src/PioasmBuild-stamp/PioasmBuild-patch
	cd C:\RaspPico\Final-Script\build

pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-update: pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\RaspPico\Final-Script\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No update step for 'PioasmBuild'"
	cd C:\RaspPico\Final-Script\build\pico-sdk\src\rp2_common\cyw43_driver
	echo >nul && "D:\Program Files\CMake\bin\cmake.exe" -E echo_append
	echo >nul && "D:\Program Files\CMake\bin\cmake.exe" -E touch C:/RaspPico/Final-Script/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/src/PioasmBuild-stamp/PioasmBuild-update
	cd C:\RaspPico\Final-Script\build

PioasmBuild: pico-sdk\src\rp2_common\cyw43_driver\CMakeFiles\PioasmBuild
PioasmBuild: pico-sdk\src\rp2_common\cyw43_driver\CMakeFiles\PioasmBuild-complete
PioasmBuild: pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-build
PioasmBuild: pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-configure
PioasmBuild: pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-download
PioasmBuild: pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-install
PioasmBuild: pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-mkdir
PioasmBuild: pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-patch
PioasmBuild: pico-sdk\src\rp2_common\cyw43_driver\pioasm\src\PioasmBuild-stamp\PioasmBuild-update
PioasmBuild: pico-sdk\src\rp2_common\cyw43_driver\CMakeFiles\PioasmBuild.dir\build.make
.PHONY : PioasmBuild

# Rule to build all files generated by this target.
pico-sdk\src\rp2_common\cyw43_driver\CMakeFiles\PioasmBuild.dir\build: PioasmBuild
.PHONY : pico-sdk\src\rp2_common\cyw43_driver\CMakeFiles\PioasmBuild.dir\build

pico-sdk\src\rp2_common\cyw43_driver\CMakeFiles\PioasmBuild.dir\clean:
	cd C:\RaspPico\Final-Script\build\pico-sdk\src\rp2_common\cyw43_driver
	$(CMAKE_COMMAND) -P CMakeFiles\PioasmBuild.dir\cmake_clean.cmake
	cd C:\RaspPico\Final-Script\build
.PHONY : pico-sdk\src\rp2_common\cyw43_driver\CMakeFiles\PioasmBuild.dir\clean

pico-sdk\src\rp2_common\cyw43_driver\CMakeFiles\PioasmBuild.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\RaspPico\Final-Script C:\RaspPico\pico-sdk\src\rp2_common\cyw43_driver C:\RaspPico\Final-Script\build C:\RaspPico\Final-Script\build\pico-sdk\src\rp2_common\cyw43_driver C:\RaspPico\Final-Script\build\pico-sdk\src\rp2_common\cyw43_driver\CMakeFiles\PioasmBuild.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : pico-sdk\src\rp2_common\cyw43_driver\CMakeFiles\PioasmBuild.dir\depend

