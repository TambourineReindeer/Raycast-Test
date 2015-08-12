module voxel;

class Point3D
{
    private:
        double x,y,z;

    public this(double x, double y, double z)
    {
        this.x = x;
        this.y = y;
        this.z = z;
    }

    public this()
    {
        x = y = z = 0;
    }

    public real getX()
    {
        return x;
    }

    public real getY()
    {
        return y;
    }

    public real getZ()
    {
        return z;
    }

    public void setX(double x)
    {
        this.x = x;
    }

    public void setY(double y)
    {
        this.y = y;
    }

    public void setZ(double z)
    {
        this.z = z;
    }
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
    public this()
    {
        length, width, height = 1;
    }
	public this(float lengthIn, float heightIn, float widthIn)
    {
        length = lengthIn;
        height = heightIn;
		width = widthIn;
    }

    public real getLength()
    {
        return length;
    }

    public real getHeight()
    {
        return height;
    }

    public real getWidth()
    {
        return width;
    }
}
