del /F /Q generated
mkdir generated
swig -v -namespace AtomicSharp -w503,516 -c++ -csharp -outdir generated Atomic.i
rem swig -namespace AtomicSharp -w503,516 -c++ -csharp -outdir generated serializer.i
