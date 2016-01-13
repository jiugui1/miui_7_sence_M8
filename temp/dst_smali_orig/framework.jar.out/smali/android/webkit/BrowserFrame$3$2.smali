.class Landroid/webkit/BrowserFrame$3$2;
.super Ljava/lang/Object;
.source "BrowserFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/BrowserFrame$3;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/BrowserFrame$3;


# direct methods
.method constructor <init>(Landroid/webkit/BrowserFrame$3;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/webkit/BrowserFrame$3$2;->this$1:Landroid/webkit/BrowserFrame$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    invoke-static {}, Landroid/webkit/SslCertLookupTable;->getInstance()Landroid/webkit/SslCertLookupTable;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/BrowserFrame$3$2;->this$1:Landroid/webkit/BrowserFrame$3;

    iget-object v4, v4, Landroid/webkit/BrowserFrame$3;->val$sslError:Landroid/net/http/SslError;

    invoke-virtual {v3, v4}, Landroid/webkit/SslCertLookupTable;->removePendingHandles(Landroid/net/http/SslError;)Ljava/util/ArrayList;

    move-result-object v1

    .local v1, "handles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "handle":I
    iget-object v3, p0, Landroid/webkit/BrowserFrame$3$2;->this$1:Landroid/webkit/BrowserFrame$3;

    iget-object v3, v3, Landroid/webkit/BrowserFrame$3;->this$0:Landroid/webkit/BrowserFrame;

    iget-object v4, p0, Landroid/webkit/BrowserFrame$3$2;->this$1:Landroid/webkit/BrowserFrame$3;

    iget v4, v4, Landroid/webkit/BrowserFrame$3;->val$certError:I

    # invokes: Landroid/webkit/BrowserFrame;->nativeSslCertErrorCancel(II)V
    invoke-static {v3, v0, v4}, Landroid/webkit/BrowserFrame;->access$500(Landroid/webkit/BrowserFrame;II)V

    goto :goto_0
.end method
