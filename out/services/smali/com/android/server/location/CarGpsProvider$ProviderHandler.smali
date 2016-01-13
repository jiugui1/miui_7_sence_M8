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
    .line 141
    iput-object p1, p0, Lcom/android/server/location/CarGpsProvider$ProviderHandler;->this$0:Lcom/android/server/location/CarGpsProvider;

    .line 142
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Z)V

    .line 143
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 147
    iget v1, p1, Landroid/os/Message;->what:I

    .line 148
    .local v1, "message":I
    packed-switch v1, :pswitch_data_0

    .line 166
    :goto_0
    iget v2, p1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 169
    const-string v2, "CarGpsProvider"

    const-string v3, "handleMessage: wake lock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    return-void

    .line 150
    :pswitch_0
    const-string v2, "CarGpsProvider"

    const-string v3, "handleMessage: ENABLE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    :pswitch_1
    const-string v2, "CarGpsProvider"

    const-string v3, "handleMessage: SET_REQUEST"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/location/CarGpsProvider$CarGpsRequest;

    .line 160
    .local v0, "cargpsRequest":Lcom/android/server/location/CarGpsProvider$CarGpsRequest;
    iget-object v2, p0, Lcom/android/server/location/CarGpsProvider$ProviderHandler;->this$0:Lcom/android/server/location/CarGpsProvider;

    iget-object v3, v0, Lcom/android/server/location/CarGpsProvider$CarGpsRequest;->request:Lcom/android/internal/location/ProviderRequest;

    iget-object v4, v0, Lcom/android/server/location/CarGpsProvider$CarGpsRequest;->source:Landroid/os/WorkSource;

    # invokes: Lcom/android/server/location/CarGpsProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/location/CarGpsProvider;->access$000(Lcom/android/server/location/CarGpsProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
