.class final Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field protected queue:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;

.field final synthetic this$0:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;Lorg/jaudiotagger/utils/tree/TreeNode;)V
    .locals 2

    iput-object p1, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration;->this$0:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;

    invoke-direct {v1, p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;-><init>(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration;)V

    iput-object v1, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration;->queue:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;

    iget-object v1, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration;->queue:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->enqueue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration;->queue:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;

    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration;->queue:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;

    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->firstObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration;->nextElement()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Lorg/jaudiotagger/utils/tree/TreeNode;
    .locals 3

    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration;->queue:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;

    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->firstObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/utils/tree/TreeNode;

    invoke-interface {v1}, Lorg/jaudiotagger/utils/tree/TreeNode;->children()Ljava/util/Enumeration;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration;->queue:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;

    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->dequeue()Ljava/lang/Object;

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration;->queue:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;

    invoke-virtual {v0, v2}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->enqueue(Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method
