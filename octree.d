module octree;

public class Octree
{
    public:

    private:
        Node[8] nodes;

    this()
    {

    }

    Node getNode(int i)
    {
        return nodes[i];
    }
}
