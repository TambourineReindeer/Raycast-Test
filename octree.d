module octree;

class Node
{
    private:
        Node child,
        parent;

    this()
    {
        child = null;
        parent = null;
    }

    Node getChild()
    {
        return child;
    }

    Node getParent()
    {
        return parent;
    }

    void setChild(Node child)
    {
        this.child = child;
    }

    void setParent(Node parent)
    {
        this.parent = parent;
    }
}

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
