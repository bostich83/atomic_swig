%pragma(csharp) imclasscode=%{
  public static AtomicSharp.Object oasInstantiateConcreteOaObject(System.IntPtr cPtr, bool owner)
 {
            AtomicSharp.Object ret = null;
            if (cPtr == System.IntPtr.Zero )
            {
                return ret;
            }
            var info = new AtomicSharp.TypeInfo(AtomicSharp.AtomicSharpNativePINVOKE.Object_GetTypeInfo(new System.Runtime.InteropServices.HandleRef(null, cPtr)), false);
            var type = info.GetTypeName().CString();
            switch (type.ToLower())
            {
                case "file": return new AtomicSharp.File(cPtr, owner);
				case "resourcecache": return new AtomicSharp.ResourceCache(cPtr, owner);
				case "renderer": return new AtomicSharp.Renderer(cPtr, owner);
                default:
                    System.Diagnostics.Debug.Assert(false,
                    System.String.Format("Encountered type '{0}' that is not known to be an AtomicSharp.Object concrete class",
                        type.ToString()));
                    break;
            }
            return null;
   }
   [global::System.Runtime.InteropServices.DllImport("AtomicSharpNative", EntryPoint = "CSharp_AtomicSharp_SharedPtrFile_Get")]
        public static extern global::System.IntPtr SharedPtrFile_Get(global::System.Runtime.InteropServices.HandleRef jarg1);
  %}
 %typemap(csout, excode=SWIGEXCODE)
  Atomic::File *,
  Atomic::ResourceCache *,
  Atomic::Component *,
  Atomic::Camera *,
  Atomic::Renderer*
    /* Insert here every other abstract type returned in the C++ API */   {
    System.IntPtr cPtr = $imcall;
    $csclassname ret = ($csclassname) $modulePINVOKE.oasInstantiateConcreteOaObject(cPtr, $owner);$excode
    return ret;
}

//allow generic subsystem
%typemap(cscode) Atomic::Context %{
 public AtomicSharp.Object GetSubsystem<T>()
        {
            var type = typeof(T);
            var name = type.ToString().Replace("AtomicSharp.", "");
            var hash = new StringHash(name);
            global::System.IntPtr cPtr = AtomicSharpNativePINVOKE.Context_GetSubsystem(swigCPtr, StringHash.getCPtr(hash));
           if (cPtr == System.IntPtr.Zero)
                return null;
			AtomicSharp.Object ret = null;
            switch (name.ToLower())
            {
                case "resourcecache":
                    ret = (cPtr == global::System.IntPtr.Zero) ? null : new AtomicSharp.ResourceCache(cPtr, false);
                    if (AtomicSharpNativePINVOKE.SWIGPendingException.Pending) throw AtomicSharpNativePINVOKE.SWIGPendingException.Retrieve();
					return ret;
				case "renderer":
                    ret = (cPtr == global::System.IntPtr.Zero) ? null : new AtomicSharp.Renderer(cPtr, false);
                    if (AtomicSharpNativePINVOKE.SWIGPendingException.Pending) throw AtomicSharpNativePINVOKE.SWIGPendingException.Retrieve();
					return ret;
            }
            return ret;
        }
%}
//allow generic subsystem
%typemap(cscode) Atomic::Node %{
 public AtomicSharp.Component GetComponent<T>()
        {
            var type = typeof(T);
            var name = type.ToString().Replace("AtomicSharp.", "");
            var hash = new StringHash(name);
            global::System.IntPtr cPtr = AtomicSharpNativePINVOKE.Node_GetComponent__SWIG_1(swigCPtr, StringHash.getCPtr(hash));
           if (cPtr == System.IntPtr.Zero)
                return null;
            switch (name.ToLower())
            {
                case "camera":
                    AtomicSharp.Camera ret = (cPtr == global::System.IntPtr.Zero) ? null : new AtomicSharp.Camera(cPtr, false);
                    if (AtomicSharpNativePINVOKE.SWIGPendingException.Pending) throw AtomicSharpNativePINVOKE.SWIGPendingException.Retrieve();
                    return ret;
            }
            return null;
        }
%}

//%inline %{
//SWIGEXPORT void * SWIGSTDCALL CSharp_AtomicSharp_SharedPtrFile_Get(void * jarg1) {
//	void * result;
//	Atomic::SharedPtr<Atomic::File> *arg1 = (Atomic::SharedPtr<Atomic::File> *) 0;
//	arg1 = (Atomic::SharedPtr<Atomic::File> *)jarg1;
//	result = (arg1)->Get();
//	return result;
//}
//%}


//%interface_impl(AbstractFile);