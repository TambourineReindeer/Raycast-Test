public class Ray
{
    public:
        double startPos,
               direction,
               depth,
               voxel_entry,
               voxel_exit;
        float  color,
               normals[3],
               dot_eye_normal;
        float* this_normal;
        float  hit[3], u[3], v[3], aabb[6];
        int    max_traces,
               current_traces,
               recent_cid,
               shader;
        Node   this_parent;
        //const PackedNodes* recent_parent;
        //const OctreeManager* octree;

    this()
    {
        this_normal = normals;
        max_traces = 5;
        current_traces = 0;
    }

    void shade_on_miss(RayHit& hit)
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
