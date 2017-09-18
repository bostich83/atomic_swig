#define ATOMIC_API
//typedef Atomic::HashMap<Atomic::StringHash, Atomic::Variant> VariantMap;
//class Deserializer;
//#define ATOMIC_API __declspec(dllimport)

%module AtomicSharpNative
%{
	#include "AtomicGameEngine/Source/Atomic/IO/Deserializer.h"
	#include "AtomicGameEngine/Source/Atomic/IO/Serializer.h"
	#include "AtomicGameEngine/Source/Atomic/IO/AbstractFile.h"
%}



//%interface_impl(Atomic::AbstractFile);
//%interface_impl(Atomic::Deserializer);
//%interface_impl(Atomic::Serializer);

//%include "AtomicGameEngine/Source/Atomic/IO/Deserializer.h"
//%include "AtomicGameEngine/Source/Atomic/IO/Serializer.h"
//%include "AtomicGameEngine/Source/Atomic/IO/Serializer.h"