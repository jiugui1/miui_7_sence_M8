.class Landroid/webkit/CallbackProxy$UploadFile;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadFile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private mValue:Landroid/net/Uri;

.field final synthetic this$0:Landroid/webkit/CallbackProxy;


# direct methods
.method private constructor <init>(Landroid/webkit/CallbackProxy;)V
    .locals 0

    .prologue
    .line 1596
    iput-object p1, p0, Landroid/webkit/CallbackProxy$UploadFile;->this$0:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/CallbackProxy;Landroid/webkit/CallbackProxy$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkit/CallbackProxy;
    .param p2, "x1"    # Landroid/webkit/CallbackProxy$1;

    .prologue
    .line 1596
    invoke-direct {p0, p1}, Landroid/webkit/CallbackProxy$UploadFile;-><init>(Landroid/webkit/CallbackProxy;)V

    return-void
.end method


# virtual methods
.method public getResult()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1608
    iget-object v0, p0, Landroid/webkit/CallbackProxy$UploadFile;->mValue:Landroid/net/Uri;

    return-object v0
.end method

.method public onReceiveValue(Landroid/net/Uri;)V
    .locals 3
    .param p1, "value"    # Landroid/net/Uri;

    .prologue
    .line 1599
    iput-object p1, p0, Landroid/webkit/CallbackProxy$UploadFile;->mValue:Landroid/net/Uri;

    .line 1600
    iget-object v1, p0, Landroid/webkit/CallbackProxy$UploadFile;->this$0:Landroid/webkit/CallbackProxy;

    monitor-enter v1

    .line 1602
    :try_start_0
    # getter for: Landroid/webkit/CallbackProxy;->HTC_DEBUG:Z
    invoke-static {}, Landroid/webkit/CallbackProxy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WebViewCallback"

    const-string v2, "Main thread notify "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    :cond_0
    iget-object v0, p0, Landroid/webkit/CallbackProxy$UploadFile;->this$0:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1605
    monitor-exit v1

    .line 1606
    return-void

    .line 1605
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1596
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/webkit/CallbackProxy$UploadFile;->onReceiveValue(Landroid/net/Uri;)V

    return-void
.end method
