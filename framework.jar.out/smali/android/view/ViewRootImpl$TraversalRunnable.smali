.class final Landroid/view/ViewRootImpl$TraversalRunnable;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TraversalRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .prologue
    .line 5900
    iput-object p1, p0, Landroid/view/ViewRootImpl$TraversalRunnable;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5904
    const/4 v0, 0x1

    const-string v1, "ViewRoot"

    const-string v2, "doTraversal"

    const-string v3, "Traversal Start"

    invoke-static {v0, v1, v2, v3}, Landroid/util/jTestFramework;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 5905
    iget-object v0, p0, Landroid/view/ViewRootImpl$TraversalRunnable;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->doTraversal()V

    .line 5906
    const/4 v0, 0x2

    const-string v1, "ViewRoot"

    const-string v2, "doTraversal"

    const-string v3, "Traversal end"

    invoke-static {v0, v1, v2, v3}, Landroid/util/jTestFramework;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 5908
    return-void
.end method
