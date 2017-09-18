%include "AtomicGameEngine/Source/Atomic/Container/VectorBase.h"
%include "AtomicGameEngine/Source/Atomic/Container/Vector.h"

//%template(PODVectorNode) Atomic::PODVector<Atomic::Node>;
%template(PODVectorNodePtr) Atomic::PODVector<Atomic::Node*>;
%template(PODVectorNodeSPtr) Atomic::PODVector<Atomic::SharedPtr<Atomic::Node>>;