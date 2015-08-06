class Node
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

    Node Node::getChild()
    {
        return child;
    }

    Node Node::getParent()
    {
        return parent;
    }

    void Node::setChild(child)
    {
        this.child = child;
    }

    void Node::setParent(parent)
    {
        this.parent = parent;
    }
};
