//basic math operations vec4
%typemap(cscode) Atomic::Vector4 %{
 public static Vector4 operator +(Vector4 left, Vector4 right)
 {
    return new Vector4(left.x_ + right.x_, left.y_ + right.y_, left.z_ + right.z_, left.w_ + right.w_);
 }
  public static Vector4 operator -(Vector4 left, Vector4 right)
 {
    return new Vector4(left.x_ - right.x_, left.y_ - right.y_, left.z_ - right.z_, left.w_ - right.w_);
 }
%}

//string conversion fo stringhash
%typemap(cscode) Atomic::StringHash %{
        public static implicit operator string(StringHash value)
        {
            return value == null ? "" : value.ToString().CString();
        }
        public static implicit operator StringHash(string value)
        {
            return new StringHash(value);
        }
%}
//string conversion fo Atomic::string
%typemap(cscode) Atomic::String %{
public static implicit operator string(String value)
{
     return value.CString().ToString();
}
%}
        