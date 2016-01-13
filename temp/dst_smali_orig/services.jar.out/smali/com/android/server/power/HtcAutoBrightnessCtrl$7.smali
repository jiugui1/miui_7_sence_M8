.class Lcom/android/server/power/HtcAutoBrightnessCtrl$7;
.super Landroid/content/BroadcastReceiver;
.source "HtcAutoBrightnessCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcAutoBrightnessCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/power/HtcAutoBrightnessCtrl;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/32 v11, 0xea60

    const/4 v10, 0x1

    if-nez p2, :cond_1

    const-string v7, "HABCtrl"

    const-string v8, "mBrighterOnlyReceiver intent is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_2

    const-string v7, "HABCtrl"

    const-string v8, "onReceive, action is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "HABCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive, action = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v7, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v7}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$800(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$900(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$900(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "HABCtrl"

    const-string v8, "onReceive: ON, Skip"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # setter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v7, v10}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$802(Lcom/android/server/power/HtcAutoBrightnessCtrl;Z)Z

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->USE_NEW_BACKLIGHT_MECHANISM:Z
    invoke-static {}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$1000()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->CAMERA_APP_MIN_DISPLAY_BRIGHTNESS_VALUE:I
    invoke-static {}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$1200()I

    move-result v8

    # setter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I
    invoke-static {v7, v8}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$1102(Lcom/android/server/power/HtcAutoBrightnessCtrl;I)I

    :goto_1
    const-string v7, "backlight.delay"

    const/16 v8, 0x14

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .local v3, "enteringDelay":I
    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # setter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mCameraEnteringDelay:I
    invoke-static {v7, v3}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$1302(Lcom/android/server/power/HtcAutoBrightnessCtrl;I)I

    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v7}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$500(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->getCurrentBrightness()I

    move-result v1

    .local v1, "curLcdValue":I
    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v7}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$500(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->getTargetBrightness()I

    move-result v2

    .local v2, "endLcdValue":I
    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I
    invoke-static {v7}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$1100(Lcom/android/server/power/HtcAutoBrightnessCtrl;)I

    move-result v5

    .local v5, "newLcdValue":I
    if-le v5, v1, :cond_7

    :goto_2
    if-le v5, v2, :cond_8

    :goto_3
    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "HABCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: ON ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v9}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$800(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mScreenState:Z
    invoke-static {v9}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$1400(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I
    invoke-static {v9}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$1100(Lcom/android/server/power/HtcAutoBrightnessCtrl;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamMode:Z
    invoke-static {v7}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$1500(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "HABCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: ON, Skip. ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamMode:Z
    invoke-static {v9}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$1500(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "curLcdValue":I
    .end local v2    # "endLcdValue":I
    .end local v3    # "enteringDelay":I
    .end local v5    # "newLcdValue":I
    :cond_6
    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    const-string v8, "entering.screen.brightness"

    const/16 v9, 0x7f

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    # setter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I
    invoke-static {v7, v8}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$1102(Lcom/android/server/power/HtcAutoBrightnessCtrl;I)I

    goto/16 :goto_1

    .restart local v1    # "curLcdValue":I
    .restart local v2    # "endLcdValue":I
    .restart local v3    # "enteringDelay":I
    .restart local v5    # "newLcdValue":I
    :cond_7
    move v5, v1

    goto/16 :goto_2

    :cond_8
    move v5, v2

    goto/16 :goto_3

    :cond_9
    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # invokes: Lcom/android/server/power/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z
    invoke-static {v7}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$1600(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v7}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$500(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->setScreenBrightnessMode(I)V

    :cond_a
    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$900(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$900(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mScreenState:Z
    invoke-static {v7}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$1400(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # setter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mCameraForceUpdateBrightness:Z
    invoke-static {v7, v10}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$1702(Lcom/android/server/power/HtcAutoBrightnessCtrl;Z)Z

    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "HABCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BRIGHTER_ONLY_ON, set CFUB: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mCameraForceUpdateBrightness:Z
    invoke-static {v9}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$1700(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # invokes: Lcom/android/server/power/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I
    invoke-static {v7, v5}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$1800(Lcom/android/server/power/HtcAutoBrightnessCtrl;I)I

    move-result v6

    .local v6, "target":I
    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # invokes: Lcom/android/server/power/HtcAutoBrightnessCtrl;->setBacklight(II)V
    invoke-static {v7, v6, v3}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$1900(Lcom/android/server/power/HtcAutoBrightnessCtrl;II)V

    goto/16 :goto_0

    .end local v1    # "curLcdValue":I
    .end local v2    # "endLcdValue":I
    .end local v3    # "enteringDelay":I
    .end local v5    # "newLcdValue":I
    .end local v6    # "target":I
    :cond_c
    const-string v7, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    const/4 v8, 0x0

    # setter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mCameraForceUpdateBrightness:Z
    invoke-static {v7, v8}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$1702(Lcom/android/server/power/HtcAutoBrightnessCtrl;Z)Z

    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mScreenState:Z
    invoke-static {v7}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$1400(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # invokes: Lcom/android/server/power/HtcAutoBrightnessCtrl;->isKeyguardLocked()Z
    invoke-static {v7}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$2000(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamMode:Z
    invoke-static {v7}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$1500(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "HABCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: OFF, Skip. ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mDayDreamMode:Z
    invoke-static {v9}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$1500(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    const-string v7, "backlight.delay"

    const/16 v8, 0x28

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .local v4, "leavingDelay":I
    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "HABCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: OFF ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/power/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v9}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$800(Lcom/android/server/power/HtcAutoBrightnessCtrl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v7, p0, Lcom/android/server/power/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/power/HtcAutoBrightnessCtrl;

    # invokes: Lcom/android/server/power/HtcAutoBrightnessCtrl;->reset(I)V
    invoke-static {v7, v4}, Lcom/android/server/power/HtcAutoBrightnessCtrl;->access$2100(Lcom/android/server/power/HtcAutoBrightnessCtrl;I)V

    goto/16 :goto_0

    .end local v4    # "leavingDelay":I
    :cond_f
    const-string v7, "HABCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown intent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
