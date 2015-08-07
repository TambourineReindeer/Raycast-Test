public class Node
{
    public:


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

    void setChild(child)
    {
        this.child = child;
    }

    void setParent(parent)
    {
        this.parent = parent;
    }
}
