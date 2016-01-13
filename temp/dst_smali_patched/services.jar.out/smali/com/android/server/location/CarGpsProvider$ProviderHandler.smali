.class final Lcom/android/server/location/CarGpsProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "CarGpsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/CarGpsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/CarGpsProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/CarGpsProvider;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/server/location/CarGpsProvider$ProviderHandler;->this$0:Lcom/android/server/location/CarGpsProvider;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v1, p1, Landroid/os/Message;->what:I

    .local v1, "message":I
    packed-switch v1, :pswitch_data_0

    :goto_0
    iget v2, p1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "CarGpsProvider"

    const-string v3, "handleMessage: wake lock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :pswitch_0
    const-string v2, "CarGpsProvider"

    const-string v3, "handleMessage: ENABLE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string v2, "CarGpsProvider"

    const-string v3, "handleMessage: SET_REQUEST"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/location/CarGpsProvider$CarGpsRequest;

    .local v0, "cargpsRequest":Lcom/android/server/location/CarGpsProvider$CarGpsRequest;
    iget-object v2, p0, Lcom/android/server/location/CarGpsProvider$ProviderHandler;->this$0:Lcom/android/server/location/CarGpsProvider;

    iget-object v3, v0, Lcom/android/server/location/CarGpsProvider$CarGpsRequest;->request:Lcom/android/internal/location/ProviderRequest;

    iget-object v4, v0, Lcom/android/server/location/CarGpsProvider$CarGpsRequest;->source:Landroid/os/WorkSource;

    # invokes: Lcom/android/server/location/CarGpsProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/location/CarGpsProvider;->access$000(Lcom/android/server/location/CarGpsProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
