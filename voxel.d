module voxel;

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

    private:
        float length,
              height,
			  width;

    // constructors
    this()
    {
        length, width, height = 1;
    }
	this(float lengthIn, float heightIn, float widthIn)
    {
        length = lengthIn;
        height = heightIn;
		width = widthIn;
    }

}
