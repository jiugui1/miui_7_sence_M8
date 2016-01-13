.class Lcom/android/internal/app/ResolverActivity$ResolverHandler;
.super Landroid/os/Handler;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResolverHandler"
.end annotation


# static fields
.field static final DELAY_FINISH:I = 0xa


# instance fields
.field mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/app/ResolverActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 919
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 920
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolverHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 921
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 924
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolverHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity;

    .line 925
    .local v0, "resolverActivity":Lcom/android/internal/app/ResolverActivity;
    if-nez v0, :cond_1

    .line 937
    :cond_0
    :goto_0
    return-void

    .line 926
    :cond_1
    if-eqz p1, :cond_0

    .line 928
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 930
    :pswitch_0
    # getter for: Lcom/android/internal/app/ResolverActivity;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/app/ResolverActivity;->access$300()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ResolverActivity"

    const-string v2, "call finish()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto :goto_0

    .line 928
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method