.class Landroid/webkit/OSDDFetcher$1;
.super Ljava/lang/Object;
.source "OSDDFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/OSDDFetcher;->endData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/OSDDFetcher;


# direct methods
.method constructor <init>(Landroid/webkit/OSDDFetcher;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Landroid/webkit/OSDDFetcher$1;->this$0:Landroid/webkit/OSDDFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Landroid/webkit/OSDDFetcher$1;->this$0:Landroid/webkit/OSDDFetcher;

    # getter for: Landroid/webkit/OSDDFetcher;->mHandle:Landroid/net/http/RequestHandle;
    invoke-static {v0}, Landroid/webkit/OSDDFetcher;->access$000(Landroid/webkit/OSDDFetcher;)Landroid/net/http/RequestHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Landroid/webkit/OSDDFetcher$1;->this$0:Landroid/webkit/OSDDFetcher;

    # getter for: Landroid/webkit/OSDDFetcher;->mHandle:Landroid/net/http/RequestHandle;
    invoke-static {v0}, Landroid/webkit/OSDDFetcher;->access$000(Landroid/webkit/OSDDFetcher;)Landroid/net/http/RequestHandle;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/OSDDFetcher$1;->this$0:Landroid/webkit/OSDDFetcher;

    # getter for: Landroid/webkit/OSDDFetcher;->mUrl:Ljava/net/URL;
    invoke-static {v1}, Landroid/webkit/OSDDFetcher;->access$100(Landroid/webkit/OSDDFetcher;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/OSDDFetcher$1;->this$0:Landroid/webkit/OSDDFetcher;

    # getter for: Landroid/webkit/OSDDFetcher;->mStatusCode:I
    invoke-static {v2}, Landroid/webkit/OSDDFetcher;->access$200(Landroid/webkit/OSDDFetcher;)I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/http/RequestHandle;->setupRedirect(Ljava/lang/String;ILjava/util/Map;)Z

    .line 172
    :cond_0
    return-void
.end method
