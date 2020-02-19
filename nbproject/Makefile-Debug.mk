#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/9918fcb4/Collision.o \
	${OBJECTDIR}/_ext/9918fcb4/Game.o \
	${OBJECTDIR}/_ext/9918fcb4/GameObject.o \
	${OBJECTDIR}/_ext/9918fcb4/Map.o \
	${OBJECTDIR}/_ext/9918fcb4/TextureManager.o \
	${OBJECTDIR}/_ext/9918fcb4/Vector2D.o \
	${OBJECTDIR}/main.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-L/home/jordi/development/SDL2/lib/x64 -L/home/jordi/development/SDL2_image-2.0.1/lib/x64 -lSDL2 -lSDL2main -lSDL2_image

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/2d_gameengine

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/2d_gameengine: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/2d_gameengine ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/_ext/9918fcb4/Collision.o: /home/jordi/development/NetBeansProjects/2D_GameEngine/2D_Game/Collision.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/9918fcb4
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/home/jordi/development/SDL2/include -I/home/jordi/development/SDL2_image-2.0.1/include -I/home/jordi/development/NetBeansProjects/2D_GameEngine/2D_Game/ECS -I/home/jordi/development/NetBeansProjects/2D_GameEngine/2D_Game -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9918fcb4/Collision.o /home/jordi/development/NetBeansProjects/2D_GameEngine/2D_Game/Collision.cpp

${OBJECTDIR}/_ext/9918fcb4/Game.o: /home/jordi/development/NetBeansProjects/2D_GameEngine/2D_Game/Game.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/9918fcb4
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/home/jordi/development/SDL2/include -I/home/jordi/development/SDL2_image-2.0.1/include -I/home/jordi/development/NetBeansProjects/2D_GameEngine/2D_Game/ECS -I/home/jordi/development/NetBeansProjects/2D_GameEngine/2D_Game -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9918fcb4/Game.o /home/jordi/development/NetBeansProjects/2D_GameEngine/2D_Game/Game.cpp

${OBJECTDIR}/_ext/9918fcb4/GameObject.o: /home/jordi/development/NetBeansProjects/2D_GameEngine/2D_Game/GameObject.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/9918fcb4
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/home/jordi/development/SDL2/include -I/home/jordi/development/SDL2_image-2.0.1/include -I/home/jordi/development/NetBeansProjects/2D_GameEngine/2D_Game/ECS -I/home/jordi/development/NetBeansProjects/2D_GameEngine/2D_Game -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9918fcb4/GameObject.o /home/jordi/development/NetBeansProjects/2D_GameEngine/2D_Game/GameObject.cpp

${OBJECTDIR}/_ext/9918fcb4/Map.o: /home/jordi/development/NetBeansProjects/2D_GameEngine/2D_Game/Map.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/9918fcb4
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/home/jordi/development/SDL2/include -I/home/jordi/development/SDL2_image-2.0.1/include -I/home/jordi/development/NetBeansProjects/2D_GameEngine/2D_Game/ECS -I/home/jordi/development/NetBeansProjects/2D_GameEngine/2D_Game -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9918fcb4/Map.o /home/jordi/development/NetBeansProjects/2D_GameEngine/2D_Game/Map.cpp

${OBJECTDIR}/_ext/9918fcb4/TextureManager.o: /home/jordi/development/NetBeansProjects/2D_GameEngine/2D_Game/TextureManager.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/9918fcb4
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/home/jordi/development/SDL2/include -I/home/jordi/development/SDL2_image-2.0.1/include -I/home/jordi/development/NetBeansProjects/2D_GameEngine/2D_Game/ECS -I/home/jordi/development/NetBeansProjects/2D_GameEngine/2D_Game -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9918fcb4/TextureManager.o /home/jordi/development/NetBeansProjects/2D_GameEngine/2D_Game/TextureManager.cpp

${OBJECTDIR}/_ext/9918fcb4/Vector2D.o: /home/jordi/development/NetBeansProjects/2D_GameEngine/2D_Game/Vector2D.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/9918fcb4
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/home/jordi/development/SDL2/include -I/home/jordi/development/SDL2_image-2.0.1/include -I/home/jordi/development/NetBeansProjects/2D_GameEngine/2D_Game/ECS -I/home/jordi/development/NetBeansProjects/2D_GameEngine/2D_Game -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/9918fcb4/Vector2D.o /home/jordi/development/NetBeansProjects/2D_GameEngine/2D_Game/Vector2D.cpp

${OBJECTDIR}/main.o: main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/home/jordi/development/SDL2/include -I/home/jordi/development/SDL2_image-2.0.1/include -I/home/jordi/development/NetBeansProjects/2D_GameEngine/2D_Game/ECS -I/home/jordi/development/NetBeansProjects/2D_GameEngine/2D_Game -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/2d_gameengine

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
