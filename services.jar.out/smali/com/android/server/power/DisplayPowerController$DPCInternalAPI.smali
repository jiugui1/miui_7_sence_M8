.class public final Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "DPCInternalAPI"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method private constructor <init>(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0

    .prologue
    .line 2344
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2345
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/DisplayPowerController;Lcom/android/server/power/DisplayPowerController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p2, "x1"    # Lcom/android/server/power/DisplayPowerController$1;

    .prologue
    .line 2248
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    return-void
.end method


# virtual methods
.method protected cancelAnimation()V
    .locals 1

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$2200(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/DisplayPowerState;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2305
    :goto_0
    return-void

    .line 2304
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$1000(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/RampAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/RampAnimator;->cancelAnimation()V

    goto :goto_0
.end method

.method protected createAutoBrightnessSpline([I[I)Landroid/util/Spline;
    .locals 1
    .param p1, "lux"    # [I
    .param p2, "brightness"    # [I

    .prologue
    .line 2251
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->createAutoBrightnessSpline([I[I)Landroid/util/Spline;
    invoke-static {p1, p2}, Lcom/android/server/power/DisplayPowerController;->access$2100([I[I)Landroid/util/Spline;

    move-result-object v0

    return-object v0
.end method

.method protected forceBrightnessUpdate(I)V
    .locals 2
    .param p1, "DURATION"    # I

    .prologue
    .line 2309
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$2200(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/DisplayPowerState;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2316
    :cond_0
    :goto_0
    return-void

    .line 2313
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$2500(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$2600(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerRequest;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v0, :cond_0

    .line 2314
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(ZI)V
    invoke-static {v0, v1, p1}, Lcom/android/server/power/DisplayPowerController;->access$2700(Lcom/android/server/power/DisplayPowerController;ZI)V

    goto :goto_0
.end method

.method protected getCurrentBrightness()I
    .locals 1

    .prologue
    .line 2291
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$1000(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/RampAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/RampAnimator;->getCurrentBrightness()I

    move-result v0

    return v0
.end method

.method protected getManualDisplayBrightness(I)I
    .locals 1
    .param p1, "lcdValue"    # I

    .prologue
    .line 2340
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->getManualDisplayBrightness(I)I
    invoke-static {v0, p1}, Lcom/android/server/power/DisplayPowerController;->access$2900(Lcom/android/server/power/DisplayPowerController;I)I

    move-result v0

    return v0
.end method

.method protected getTargetBrightness()I
    .locals 1

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$1000(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/RampAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/RampAnimator;->getTargetBrightness()I

    move-result v0

    return v0
.end method

.method protected sendDelayScreenOnStateAfterEndCall(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 2331
    # getter for: Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2332
    const-string v0, "XAN-DPC"

    const-string v1, "DPCAPI: sDSOSAEC"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->sendDelayScreenOnStateAfterEndCall(I)V
    invoke-static {v0, p1}, Lcom/android/server/power/DisplayPowerController;->access$2800(Lcom/android/server/power/DisplayPowerController;I)V

    .line 2335
    return-void
.end method

.method protected sendUpdatePowerState()V
    .locals 2

    .prologue
    .line 2320
    # getter for: Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2321
    const-string v0, "XAN-DPC"

    const-string v1, "DPCAPI: sendUPS"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$200(Lcom/android/server/power/DisplayPowerController;)V

    .line 2324
    return-void
.end method

.method protected setScreenBrightnessMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 2255
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->this$0:Lcom/android/server/power/DisplayPowerController;

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    if-eqz v0, :cond_0

    .line 2256
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->this$0:Lcom/android/server/power/DisplayPowerController;

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController;->mPMSInternalAPI:Lcom/android/server/power/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService$PMSInternalAPI;->setScreenBrightnessMode(I)V

    .line 2258
    :cond_0
    return-void
.end method

.method protected setSmoothBacklight(II)V
    .locals 4
    .param p1, "targetLcdValue"    # I
    .param p2, "DURATION"    # I

    .prologue
    .line 2262
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->access$2200(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/power/DisplayPowerState;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2273
    :goto_0
    return-void

    .line 2266
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->access$2300(Lcom/android/server/power/DisplayPowerController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2268
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->access$2400(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3, p1, p2}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2269
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2270
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->access$2400(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2272
    monitor-exit v2

    goto :goto_0

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected setSmoothBacklightForCamera(II)V
    .locals 4
    .param p1, "targetLcdValue"    # I
    .param p2, "DURATION"    # I

    .prologue
    .line 2278
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->access$2200(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/power/DisplayPowerState;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2287
    :goto_0
    return-void

    .line 2282
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->access$2300(Lcom/android/server/power/DisplayPowerController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2283
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->access$2400(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1, v3, p1, p2}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2284
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2285
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->access$2400(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2286
    monitor-exit v2

    goto :goto_0

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
