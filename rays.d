public class Ray
{
    public:
        double startPos,
               direction,
               depth;
        float  color[4], // rgba
               mover_normal[3];
        float* this_normal;
        int    max_traces, // max number of ray traces
               current_traces, // current number of ray traces
        Node   this_parent; // parent of hit node (voxel)

    this()
    {
        startPos = 0.0;
        direction = null;
        depth = null;
        color = {0,0,0,0};
        max_traces = 5;
        current_traces = 0;
    }

    void shade_on_miss(Ray& hit)
    {
        hit.depth = INFINITY;
        //Supplies::traceHDRI(direction, hit.color);
    }

    void shade_on_hit()
    {

    }

    void trace_first_child()
    {

    }

    void shade_ray()
    {

    }

    bool blocked()
    {
        if()
        {

        }
        return false;
    }

    bool hits()
    {
        hit.depth = INFINITY;
    }
};
