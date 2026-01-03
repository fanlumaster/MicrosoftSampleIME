cmake_minimum_required(VERSION 3.10)

project(SampleIME)

# Source Files
set(SOURCE_FILES
    "ActiveLanguageProfileNotifySink.cpp"
    "BaseDictionaryEngine.cpp"
    "BaseWindow.cpp"
    "ButtonWindow.cpp"
    "CandidateListUIPresenter.cpp"
    "CandidateWindow.cpp"
    "Compartment.cpp"
    "Composition.cpp"
    "CompositionProcessorEngine.cpp"
    "EnumTfCandidates.cpp"
    "KeyStateCategory.cpp"
    "SampleIMEBaseStructure.cpp"
    "SearchCandidateProvider.cpp"
    "DictionaryParser.cpp"
    "DictionarySearch.cpp"
    "DisplayAttribute.cpp"
    "DisplayAttributeInfo.cpp"
    "DisplayAttributeProvider.cpp"
    "DllMain.cpp"
    "EditSession.cpp"
    "EndComposition.cpp"
    "EnumDisplayAttributeInfo.cpp"
    "File.cpp"
    "FileMapping.cpp"
    "FunctionProviderSink.cpp"
    "GetTextExtentEditSession.cpp"
    "Globals.cpp"
    "KeyEventSink.cpp"
    "KeyHandler.cpp"
    "KeyHandlerEditSession.cpp"
    "LanguageBar.cpp"
    "Register.cpp"
    "RegKey.cpp"
    "ScrollBarWindow.cpp"
    "Server.cpp"
    "ShadowWindow.cpp"
    "StartComposition.cpp"
    "TableDictionaryEngine.cpp"
    "SampleIME.cpp"
    "TextEditSink.cpp"
    "TfInputProcessorProfile.cpp"
    "TfTextLayoutSink.cpp"
    "ThreadFocusSink.cpp"
    "ThreadMgrEventSink.cpp"
    "TipCandidateList.cpp"
    "TipCandidateString.cpp"
    "SampleIME.def"
)

# Header Files
set(HEADER_FILES
    "BaseDictionaryEngine.h"
    "BaseWindow.h"
    "ButtonWindow.h"
    "CandidateListUIPresenter.h"
    "CandidateWindow.h"
    "Compartment.h"
    "CompositionProcessorEngine.h"
    "define.h"
    "EnumTfCandidates.h"
    "KeyStateCategory.h"
    "SampleIMEBaseStructure.h"
    "SearchCandidateProvider.h"
    "DictionaryParser.h"
    "DictionarySearch.h"
    "DisplayAttributeInfo.h"
    "EditSession.h"
    "EnumDisplayAttributeInfo.h"
    "File.h"
    "FileMapping.h"
    "GetTextExtentEditSession.h"
    "Globals.h"
    "KeyHandlerEditSession.h"
    "LanguageBar.h"
    "Private.h"
    "RegKey.h"
    "resource.h"
    "SampleIME.h"
    "ScrollBarWindow.h"
    "ShadowWindow.h"
    "stdafx.h"
    "TableDictionaryEngine.h"
    "TfInputProcessorProfile.h"
    "TfTextLayoutSink.h"
    "TipCandidateList.h"
    "TipCandidateString.h"
)

# Resource Files
set(RESOURCE_FILES
    "SampleIME.rc"
    "image/SampleIme.ico"
    "image/ImeModeOn.ico"
    "image/ImeModeOff.ico"
    "image/DoubleSingleByteOn.ico"
    "image/DoubleSingleByteOff.ico"
    "image/PunctuationOn.ico"
    "image/PunctuationOff.ico"
)

# Dictionary Files
set(DICTIONARY_FILES
    "Dictionary/SampleIMESimplifiedQuanPin.txt"
)

# Create groupings for Visual Studio
source_group("Source Files" FILES ${SOURCE_FILES})
source_group("Header Files" FILES ${HEADER_FILES})
source_group("Resource Files" FILES ${RESOURCE_FILES})
source_group("Dictionary" FILES ${DICTIONARY_FILES})

add_library(SampleIME SHARED
    ${SOURCE_FILES}
    ${HEADER_FILES}
    ${RESOURCE_FILES}
    ${DICTIONARY_FILES}
)

target_compile_definitions(SampleIME PRIVATE
    WIN32
    _WINDOWS
    _USRDLL
    SampleIME_EXPORTS
    UNICODE
    _UNICODE
)

target_link_libraries(SampleIME PRIVATE
    shlwapi
)
