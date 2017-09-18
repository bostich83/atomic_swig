#if defined(SWIGCSHARP)
#define javaclassmodifiers   csclassmodifiers
#define javabody             csbody
#define javafinalize         csfinalize
#define javadestruct         csdestruct
#define javaout              csout
#define javainterfaces       csinterfaces
#define javabase             csbase
#endif


#define ATOMIC_API
typedef Atomic::HashMap<Atomic::StringHash, Atomic::Variant> VariantMap;
//class Atomic::AbstractFile;
class Atomic::Node;
%include "../lib/csharp/swiginterface.i"
//%include "../lib/csharp/std_vector.i"
%include "podvector.i"
//%interface(Atomic::Serializer);

%interface(Atomic::AbstractFile);

//#define ATOMIC_API __declspec(dllimport)
%module AtomicSharpNative
%{
#define SWIG_FILE_WITH_INIT
#include "AtomicGameEngine/Source/Atomic/Container/VectorBase.h"
#include "AtomicGameEngine/Source/Atomic/Container/Vector.h"
#include "AtomicGameEngine/Source/Atomic/Atomic.h"
#include "AtomicGameEngine/Source/Atomic/IO/File.h"
#include "AtomicGameEngine/Source/Atomic/Container/Ptr.h"
#include "AtomicGameEngine/Source/Atomic/Container/RefCounted.h"
#include "AtomicGameEngine/Source/Atomic/Container/Str.h"
#include "AtomicGameEngine/Source/Atomic/Container/HashBase.h"
#include "AtomicGameEngine/Source/Atomic/Container/HashMap.h"

#include "AtomicGameEngine/Source/Atomic/Math/StringHash.h"

#include "AtomicGameEngine/Source/Atomic/Container/LinkedList.h"
#include "AtomicGameEngine/Source/Atomic/Core/Object.h"
#include "AtomicGameEngine/Source/Atomic/Core/Context.h"
#include "AtomicGameEngine/Source/Atomic/Core/Variant.h"
#include "AtomicGameEngine/Source/Atomic/Resource/Resource.h"
#include "AtomicGameEngine/Source/Atomic/Resource/XMLElement.h"
#include "AtomicGameEngine/Source/Atomic/Resource/XMLFile.h"
#include "AtomicGameEngine/Source/Atomic/Resource/ResourceCache.h"

#include "AtomicGameEngine/Source/Atomic/Graphics/Renderer.h"
#include "AtomicGameEngine/Source/Atomic/Graphics/Viewport.h"
#include "AtomicGameEngine/Source/Atomic/Metrics/Metrics.h"
#include "AtomicGameEngine/Source/Atomic/Engine/Engine.h"
#include "AtomicGameEngine/Source/Atomic/Engine/Application.h"


#include "AtomicGameEngine/Source/Atomic/Input/Controls.h"

#include "AtomicGameEngine/Source/Atomic/Math/Matrix3x4.h"
#include "AtomicGameEngine/Source/Atomic/Math/Vector2.h"
#include "AtomicGameEngine/Source/Atomic/Math/Vector3.h"
#include "AtomicGameEngine/Source/Atomic/Math/Vector4.h"
#include "AtomicGameEngine/Source/Atomic/Scene/Animatable.h"
#include "AtomicGameEngine/Source/Atomic/Scene/Component.h"
#include "AtomicGameEngine/Source/Atomic/Scene/Serializable.h"

#include "AtomicGameEngine/Source/Atomic/Scene/Node.h"
#include "AtomicGameEngine/Source/Atomic/Scene/Scene.h"

#include "AtomicGameEngine/Source/Atomic/Input/Input.h"
#include "AtomicGameEngine/Source/Atomic/Graphics/Camera.h"
#include "AtomicGameEngine/Source/Atomic/Graphics/Technique.h"
#include "AtomicGameEngine/Source/Atomic/Graphics/Material.h"
#include "AtomicGameEngine/Source/Atomic/UI/SystemUI/Console.h"
 
 using namespace Atomic;
%}
%apply void *VOID_INT_PTR { void * }
%include Abstracts.i
%include operators.i

///extend SWIGTYPE_p_void
%typemap(cscode) void* %{
    public static implicit operator System.IntPtr(SWIGTYPE_p_void value)
    {
        return new System.IntPtr(value.swigCPtr.Handle.ToInt64());
    }
%}
///extend String
%typemap(cscode) Atomic::String %{
	public static implicit operator String(string str)
    {
        return new String(str);
    }
%}
///extend sharedPtrFile
%typemap(cscode) Atomic::SharedPtr<Atomic::File>* %{
public File get()
{
    AtomicSharp.File file = new File($modulePINVOKE.GetFileSharedPtr(swigCPtr.Handle), true);
    return file;
}
%}

%interface(Atomic::Deserializer);
%interface(Atomic::Serializer);
// Rename operator functions
%rename(__add) operator+;
%rename(__sub) operator-;
%rename(__mul) operator*;
%rename(__div) operator/;

%include "AtomicGameEngine/Source/Atomic/Atomic.h"

%include "AtomicGameEngine/Source/Atomic/Container/RefCounted.h"
%include "AtomicGameEngine/Source/Atomic/Container/Ptr.h"
%include "AtomicGameEngine/Source/Atomic/Container/Str.h"
%include "AtomicGameEngine/Source/Atomic/Container/HashBase.h"
%include "AtomicGameEngine/Source/Atomic/Container/HashMap.h"
%include "AtomicGameEngine/Source/Atomic/Math/StringHash.h"
//%include "AtomicGameEngine/Source/Atomic/Container/VectorBase.h"
//

%include "AtomicGameEngine/Source/Atomic/Core/Object.h"
%include "AtomicGameEngine/Source/Atomic/Scene/Serializable.h"
%include "AtomicGameEngine/Source/Atomic/Scene/Animatable.h"
%include "AtomicGameEngine/Source/Atomic/Scene/Component.h"

%include "AtomicGameEngine/Source/Atomic/Core/Context.h"
%include "AtomicGameEngine/Source/Atomic/Resource/Resource.h"
%include "AtomicGameEngine/Source/Atomic/Resource/XMLElement.h"
%include "AtomicGameEngine/Source/Atomic/Resource/XMLFile.h"
%include "AtomicGameEngine/Source/Atomic/Resource/ResourceCache.h"

%include "AtomicGameEngine/Source/Atomic/Core/Variant.h"
%include "AtomicGameEngine/Source/Atomic/Graphics/Viewport.h"
%include "AtomicGameEngine/Source/Atomic/Graphics/Renderer.h"
%include "AtomicGameEngine/Source/Atomic/Metrics/Metrics.h"
%include "AtomicGameEngine/Source/Atomic/Engine/Engine.h"
%include "AtomicGameEngine/Source/Atomic/Engine/Application.h"


%include "AtomicGameEngine/Source/Atomic/Input/Controls.h"

%include "AtomicGameEngine/Source/Atomic/Math/Matrix3x4.h"
%include "AtomicGameEngine/Source/Atomic/Math/Vector2.h"
%include "AtomicGameEngine/Source/Atomic/Math/Vector3.h"
%include "AtomicGameEngine/Source/Atomic/Math/Vector4.h"



%include "AtomicGameEngine/Source/Atomic/Scene/Node.h"
%include "AtomicGameEngine/Source/Atomic/Scene/Scene.h"

%include "AtomicGameEngine/Source/Atomic/Input/Input.h"
%include "AtomicGameEngine/Source/Atomic/Graphics/Camera.h"
%include "AtomicGameEngine/Source/Atomic/Graphics/Technique.h"
%include "AtomicGameEngine/Source/Atomic/Graphics/Material.h"

%include "AtomicGameEngine/Source/Atomic/IO/Serializer.h"
%include "AtomicGameEngine/Source/Atomic/IO/Deserializer.h"
%include "AtomicGameEngine/Source/Atomic/IO/AbstractFile.h"
%include "AtomicGameEngine/Source/Atomic/IO/File.h"
%include "AtomicGameEngine/Source/Atomic/UI/SystemUI/Console.h"
//%template(VariantMap) Atomic::HashMap<StringHash, Variant>;
%typemap(ctype)   Atomic::Node ** "Atomic::Node"
%typemap(cs) Atomic::Node ** "Atomic::Node"
%typemap(cstype) Atomic::Node ** "Atomic::Node"
%template(VariantMap) Atomic::HashMap<Atomic::StringHash,Atomic::Variant>;
%template(PODVectorNodePtr) Atomic::PODVector<Atomic::Node*>;

namespace Atomic{
//%template(SharedPtrFile) SharedPtr<File>;

}


%inline %{
	void* GetFileSharedPtr(void* sharedPtrFile){
		Atomic::SharedPtr<Atomic::File> *arg1 = (Atomic::SharedPtr<Atomic::File> *) 0;
		arg1 = (Atomic::SharedPtr<Atomic::File>*)sharedPtrFile;
		void* ret = (void*)arg1->Get();
		return ret;
	}
	
	//void* GetNodePtrPODFront(void* podVector){
	//	Atomic::PODVector<Atomic::Node*>* arg1 = (Atomic::PODVector<Atomic::Node*>*)podVector;
	//	return (void*)arg1->Front();
	//}
%}

