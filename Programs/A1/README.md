# Problem-Beschreibung_Build-Schritt:

# Wenn ich bei angeschlossenem ITS-Board den Build-Command per Klick auf das entsprechende CMSIS-Symbol ausführen möchte, erscheint # folgende Fehlermeldung:

 *  Executing task: cmsis-csolution.build: Build 

🔄 Execute: cbuild /Users/lasse./Desktop/Technische_Informatik /G:Techn Informatik/GithubProjects/ITS-BRD-VSC/Programs/TestNewFont/TestNewFont.csolution.yml --target all --active ITSboard --packs --skip-convert
CMake Error at /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:2593:EVAL:2 (add_custom_command):
  Attempt to add a custom rule to output

    /Users/lasse./Desktop/Technische_Informatik /G.rule

  which already has a custom rule.
Call Stack (most recent call first):
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:2593 (cmake_language)
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:3285:EVAL:2 (ExternalProject_Add_Step)
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:3285 (cmake_language)
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:4418 (_ep_add_download_command)
  CMakeLists.txt:50 (ExternalProject_Add)


CMake Error at /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:2593:EVAL:2 (add_custom_command):
  Attempt to add a custom rule to output

    /Users/lasse./Desktop/Technische_Informatik /G.rule

  which already has a custom rule.
Call Stack (most recent call first):
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:2593 (cmake_language)
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:3547:EVAL:2 (ExternalProject_Add_Step)
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:3547 (cmake_language)
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:4419 (_ep_add_update_command)
  CMakeLists.txt:50 (ExternalProject_Add)


CMake Error at /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:2593:EVAL:2 (add_custom_command):
  Attempt to add a custom rule to output

    /Users/lasse./Desktop/Technische_Informatik /G.rule

  which already has a custom rule.
Call Stack (most recent call first):
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:2593 (cmake_language)
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:3634:EVAL:2 (ExternalProject_Add_Step)
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:3634 (cmake_language)
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:4420 (_ep_add_patch_command)
  CMakeLists.txt:50 (ExternalProject_Add)


CMake Error at /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:2593:EVAL:2 (add_custom_command):
  Attempt to add a custom rule to output

    /Users/lasse./Desktop/Technische_Informatik /G.rule

  which already has a custom rule.
Call Stack (most recent call first):
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:2593 (cmake_language)
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:3901:EVAL:2 (ExternalProject_Add_Step)
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:3901 (cmake_language)
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:4421 (_ep_add_configure_command)
  CMakeLists.txt:50 (ExternalProject_Add)


CMake Error at /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:2593:EVAL:2 (add_custom_command):
  Attempt to add a custom rule to output

    /Users/lasse./Desktop/Technische_Informatik /G.rule

  which already has a custom rule.
Call Stack (most recent call first):
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:2593 (cmake_language)
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:3992:EVAL:2 (ExternalProject_Add_Step)
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:3992 (cmake_language)
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:4422 (_ep_add_build_command)
  CMakeLists.txt:50 (ExternalProject_Add)


CMake Error at /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:2593:EVAL:2 (add_custom_command):
  Attempt to add a custom rule to output

    /Users/lasse./Desktop/Technische_Informatik /G.rule

  which already has a custom rule.
Call Stack (most recent call first):
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:2593 (cmake_language)
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:4068:EVAL:2 (ExternalProject_Add_Step)
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:4068 (cmake_language)
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:4423 (_ep_add_install_command)
  CMakeLists.txt:50 (ExternalProject_Add)


CMake Error at /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:2593:EVAL:2 (add_custom_command):
  Attempt to add a custom rule to output

    /Users/lasse./Desktop/Technische_Informatik /G.rule

  which already has a custom rule.
Call Stack (most recent call first):
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:2593 (cmake_language)
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:4146:EVAL:2 (ExternalProject_Add_Step)
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:4146 (cmake_language)
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:4428 (_ep_add_test_command)
  CMakeLists.txt:50 (ExternalProject_Add)


CMake Error at /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:2593:EVAL:2 (add_custom_command):
  Attempt to add a custom rule to output

    /Users/lasse./Desktop/Technische_Informatik /G.rule

  which already has a custom rule.
Call Stack (most recent call first):
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:2593 (cmake_language)
  CMakeLists.txt:68 (ExternalProject_Add_Step)


CMake Error at /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:2593:EVAL:2 (add_custom_command):
  Attempt to add a custom rule to output

    /Users/lasse./Desktop/Technische_Informatik /G.rule

  which already has a custom rule.
Call Stack (most recent call first):
  /Users/lasse./.vcpkg/artifacts/2139c4c6/tools.kitware.cmake/3.28.4/share/cmake-3.28/Modules/ExternalProject.cmake:2593 (cmake_language)
  CMakeLists.txt:78 (ExternalProject_Add_Step)


CMake Error: The inter-target dependency graph contains the following strongly connected component (cycle):
  "TestNewFont.Debug+ITSboard-build" of type UTILITY
    depends on "TestNewFont.Debug+ITSboard-configure" (strong)
    depends on "TestNewFont.Debug+ITSboard-configure" (strong)
    depends on "TestNewFont.Debug+ITSboard-executes" (strong)
    depends on "TestNewFont.Debug+ITSboard-database" (strong)
  "TestNewFont.Debug+ITSboard-configure" of type UTILITY
    depends on "TestNewFont.Debug+ITSboard-build" (strong)
    depends on "TestNewFont.Debug+ITSboard-executes" (strong)
    depends on "TestNewFont.Debug+ITSboard-database" (strong)
  "TestNewFont.Debug+ITSboard-executes" of type UTILITY
    depends on "TestNewFont.Debug+ITSboard-build" (strong)
    depends on "TestNewFont.Debug+ITSboard-build" (strong)
    depends on "TestNewFont.Debug+ITSboard-configure" (strong)
    depends on "TestNewFont.Debug+ITSboard-database" (strong)
  "TestNewFont.Debug+ITSboard-database" of type UTILITY
    depends on "TestNewFont.Debug+ITSboard-build" (strong)
    depends on "TestNewFont.Debug+ITSboard-configure" (strong)
    depends on "TestNewFont.Debug+ITSboard-configure" (strong)
    depends on "TestNewFont.Debug+ITSboard-executes" (strong)
At least one of these targets is not a STATIC_LIBRARY.  Cyclic dependencies are allowed only among static libraries.
CMake Generate step failed.  Build files cannot be regenerated correctly.
🟥 Completed: cbuild failed with exit code 1
 *  Terminal will be reused by tasks, press any key to close it. 

# Folgende Dinge habe ich zur Behebung versucht:

# Überprüft, ob alle Extensions aus der Anleitung installiert sind und fehlende nachträglich installiert.

# vcpkg-configuration.json: Erneut "Update Tool Registry" und "Reactivate Environment" hintereinander ausgeführt

# Repository gelöscht, und erneut per SSH geklont, statt wie beim Ersten Mal über https-Link.

# git submodule init ausgeführt und danach git submodule update --recursive 
# die Befehle aus der Sektion ##Troubleshooting ausgeführt

# Nachdem ich mein eigenes Board angeschlossen hatte, ist eine Option aufgeploppt, welche aufgefordert hat, die Firmware
# des ITS-Boards zu updaten und dafür einen Link bereitgestellt, der zur Hersteller-Seite(STMicroelectronics) geführt hat.
# Dort habe ich die Anweisungen befolgt und mir das STLinkUpgrade-Programm heruntergeladen, und ausgeführt.
# Über STLinkUpgrade habe ich dann die Firmware erfolgreich ("Upgrade successfull") geupdatet.

# Anm.: - Bei mir steht statt "Arm Keil Studio Pack (MDK c6)" Arm Keil Studio Pack (MDK v6) (Erscheint auch nur in Extensions-Suche in VS-Code)

# - Habe ein Keil MDK Community-Lizenz

