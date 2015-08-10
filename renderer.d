module renderer;

import std.math;

class Renderer
{
    public:
        int screen_length, // screen length (x) in pixels
            screen_width; // screen width (y) in pixels
        float fov; // field of view
    
    this()
    {

    }
    
    float getFOV()
    {
        return fov;
    }
    
    void setFOV(newFOV)
    {
        fov = newFOV;
    }
    
    float getDistFromPlane(Plane proj, float refFOV)
    {
        int sideA = proj.length / 2;
        return distance = sideA / tan(refFOV/2);
    }
}
