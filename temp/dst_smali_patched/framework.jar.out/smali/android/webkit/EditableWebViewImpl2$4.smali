.class Landroid/webkit/EditableWebViewImpl2$4;
.super Ljava/lang/Object;
.source "EditableWebViewImpl2.java"

# interfaces
.implements Landroid/webkit/WebViewCore$UpdateContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebViewImpl2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/EditableWebViewImpl2;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebViewImpl2;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/webkit/EditableWebViewImpl2$4;->this$0:Landroid/webkit/EditableWebViewImpl2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateContent(I)V
    .locals 3
    .param p1, "pointer"    # I

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Landroid/webkit/HTCWebCoreImpl;->isNeedGetBodyNode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2$4;->this$0:Landroid/webkit/EditableWebViewImpl2;

    # getter for: Landroid/webkit/EditableWebViewImpl2;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;
    invoke-static {v0}, Landroid/webkit/EditableWebViewImpl2;->access$500(Landroid/webkit/EditableWebViewImpl2;)Landroid/webkit/HTCWebCoreImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2$4;->this$0:Landroid/webkit/EditableWebViewImpl2;

    # getter for: Landroid/webkit/EditableWebViewImpl2;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;
    invoke-static {v0}, Landroid/webkit/EditableWebViewImpl2;->access$500(Landroid/webkit/EditableWebViewImpl2;)Landroid/webkit/HTCWebCoreImpl;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/HTCWebCoreImpl;->setBodyNode(I)V

    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl2$4;->this$0:Landroid/webkit/EditableWebViewImpl2;

    # getter for: Landroid/webkit/EditableWebViewImpl2;->mPrivateHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/webkit/EditableWebViewImpl2;->access$600(Landroid/webkit/EditableWebViewImpl2;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x138c

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
