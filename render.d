module render;

import std.math;
import std.signals;
import derelict.opengl3.gl;

import voxel;

class Renderer
{
    public:
    float fov; // field of view
	private:
	Point3D position;

    float getFOV()
    {
        return fov;
    }

    void setFOV(float newFOV)
    {
        fov = newFOV;
    }

/*
    float getDistFromPlane(Plane proj, float refFOV)
    {
        int sideA = proj.length / 2;
        return distance = sideA / tan(refFOV/2);
    }
    */
}
