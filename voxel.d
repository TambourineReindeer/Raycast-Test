class Point3D
{
    this() {real x,y,z;} 
}
class Cubemap
{
    this() {int[6] sides;}
}

class Voxel
{
    public:
        Point3D position;

    private:
        float length,
              width,
              height,
              normal;

    // constructors
    this()
    {
        length, width, height = 1;
    }
    this(float lengthIn, float widthIn, float heightIn, float normalIn, Point3D curPos)
    {
        length = lengthIn;
        width = widthIn;
        height = heightIn;
        normal = normalIn;
        position = curPos;
    }

}
