public class Ray
{
    public:
        double startPos,
               direction,
               depth,
               voxel_entry,
               voxel_exit;
        float  color,
               mnormal,
               dot_eye_normal;
        float* normal;
        float  hit[3], u[3], v[3], aabb[6];
        int    max_traces,
               current_traces
               recent_cid
               shader;
        const PackedNodes* recent_parent;
        //const OctreeManager* octree;

    Ray::Ray()
    {
        normal = mnormal;
    }
    Ray::~Ray()
    {

    }

    void shade_on_miss(RayHit& hit)
    {
        hit.depth = INFINITY;
        Supplies::traceHDRI(direction, hit.color);
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

    bool visible()
    {

    }

    bool hits()
    {
        hit.depth = INFINITY;
    }
}
