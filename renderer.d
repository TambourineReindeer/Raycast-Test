module renderer;

import std.math;
import derelict.opengl3;

class Renderer
{
    public:
        Plane proj; // plane upon which view is projected onto screen; "Plane" is a placeholder
        int SCREEN_X, // screen length in pixels
            SCREEN_Y; // screen width in pixels
        float fov; // field of view
    
    this()
    {
        proj = new Plane(SCREEN_X, SCREEN_Y);
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
