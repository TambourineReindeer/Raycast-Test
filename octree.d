class Octree
{
    public:

    private:
        Node nodes[8];

    this()
    {

    }

    Node Octree::getNode(int i)
    {
        return nodes[i];
    }
};
