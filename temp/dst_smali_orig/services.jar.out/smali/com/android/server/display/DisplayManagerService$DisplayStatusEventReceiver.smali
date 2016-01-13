.class final Lcom/android/server/display/DisplayManagerService$DisplayStatusEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayStatusEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayStatusEventReceiver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0, p2}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onDisplayChanged(JII)V
    .locals 3
    .param p1, "timestampNanos"    # J
    .param p3, "builtInDisplayId"    # I
    .param p4, "status"    # I

    .prologue
    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayStatusEventReceiver;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWFDFuncs:Lcom/android/server/display/DisplayManagerService$DisplayStatusFuncs;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$1700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayStatusFuncs;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayStatusEventReceiver;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWFDFuncs:Lcom/android/server/display/DisplayManagerService$DisplayStatusFuncs;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$1700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayStatusFuncs;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/DisplayManagerService$DisplayStatusFuncs;->dispAdded()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayStatusEventReceiver;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWFDFuncs:Lcom/android/server/display/DisplayManagerService$DisplayStatusFuncs;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$1700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayStatusFuncs;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/DisplayManagerService$DisplayStatusFuncs;->dispRemoved()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayStatusEventReceiver;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWFDFuncs:Lcom/android/server/display/DisplayManagerService$DisplayStatusFuncs;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$1700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayStatusFuncs;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/DisplayManagerService$DisplayStatusFuncs;->dispChanged()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
