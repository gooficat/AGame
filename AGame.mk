##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=AGame
ConfigurationName      :=Debug
WorkspaceConfiguration :=Debug
WorkspacePath          :="C:/Users/Free time/AGame"
ProjectPath            :="C:/Users/Free time/AGame"
IntermediateDirectory  :=build-$(WorkspaceConfiguration)
OutDir                 :=$(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Free time
Date                   :=03/07/2024
CodeLitePath           :=C:/Users/Public/CodeLite
MakeDirCommand         :=mkdir
LinkerName             :=C:/msys64/ucrt64/bin/g++.exe
SharedObjectLinkerName :=C:/msys64/ucrt64/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputDirectory        :=C:/Users/Free time/AGame/build-$(WorkspaceConfiguration)/bin
OutputFile             :=build-$(WorkspaceConfiguration)\bin\$(ProjectName).exe
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
RcCmpOptions           := 
RcCompilerName         :=C:/msys64/ucrt64/bin/windres.exe
LinkOptions            :=  -O0
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)./include 
IncludePCH             := 
RcIncludePath          := $(IncludeSwitch)./src 
Libs                   := $(LibrarySwitch)opengl32 $(LibrarySwitch)glfw3 
ArLibs                 :=  "opengl32" "glfw3" 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch). $(LibraryPathSwitch)Debug 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overridden using an environment variable
##
AR       := C:/msys64/ucrt64/bin/ar.exe -r
CXX      := C:/msys64/ucrt64/bin/g++.exe
CC       := C:/msys64/ucrt64/bin/gcc.exe
CXXFLAGS :=  -g -Wall $(Preprocessors)
CFLAGS   :=   $(Preprocessors)
ASFLAGS  := 
AS       := C:/msys64/ucrt64/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\Users\Public\CodeLite
Objects0=$(IntermediateDirectory)/src_main.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_glad.c$(ObjectSuffix) $(IntermediateDirectory)/src_texture.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_shader.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_mesh.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_camera.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_stb_image.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@if not exist "$(IntermediateDirectory)" $(MakeDirCommand) "$(IntermediateDirectory)"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@if not exist "$(IntermediateDirectory)" $(MakeDirCommand) "$(IntermediateDirectory)"
	@if not exist "$(OutputDirectory)" $(MakeDirCommand) "$(OutputDirectory)"

$(IntermediateDirectory)/.d:
	@if not exist "$(IntermediateDirectory)" $(MakeDirCommand) "$(IntermediateDirectory)"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/src_main.cpp$(ObjectSuffix): src/main.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Free time/AGame/src/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_main.cpp$(PreprocessSuffix): src/main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_main.cpp$(PreprocessSuffix) src/main.cpp

$(IntermediateDirectory)/src_glad.c$(ObjectSuffix): src/glad.c 
	$(CC) $(SourceSwitch) "C:/Users/Free time/AGame/src/glad.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_glad.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_glad.c$(PreprocessSuffix): src/glad.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_glad.c$(PreprocessSuffix) src/glad.c

$(IntermediateDirectory)/src_texture.cpp$(ObjectSuffix): src/texture.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Free time/AGame/src/texture.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_texture.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_texture.cpp$(PreprocessSuffix): src/texture.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_texture.cpp$(PreprocessSuffix) src/texture.cpp

$(IntermediateDirectory)/src_shader.cpp$(ObjectSuffix): src/shader.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Free time/AGame/src/shader.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_shader.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_shader.cpp$(PreprocessSuffix): src/shader.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_shader.cpp$(PreprocessSuffix) src/shader.cpp

$(IntermediateDirectory)/src_mesh.cpp$(ObjectSuffix): src/mesh.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Free time/AGame/src/mesh.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_mesh.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_mesh.cpp$(PreprocessSuffix): src/mesh.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_mesh.cpp$(PreprocessSuffix) src/mesh.cpp

$(IntermediateDirectory)/src_camera.cpp$(ObjectSuffix): src/camera.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Free time/AGame/src/camera.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_camera.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_camera.cpp$(PreprocessSuffix): src/camera.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_camera.cpp$(PreprocessSuffix) src/camera.cpp

$(IntermediateDirectory)/src_stb_image.c$(ObjectSuffix): src/stb_image.c 
	$(CC) $(SourceSwitch) "C:/Users/Free time/AGame/src/stb_image.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_stb_image.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_stb_image.c$(PreprocessSuffix): src/stb_image.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_stb_image.c$(PreprocessSuffix) src/stb_image.c

##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


