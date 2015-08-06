typedef struct {real x,y,z} Point3D;
typedef struct {int sides[6]} CubeMap;

class Voxel
{
    public:

    private:
        float length,
              width,
              height,
              normal;

        Point3D position;

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

};
