.class Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 504
    :cond_0
    :goto_0
    sget v2, Lcom/android/server/power/RampAnimator;->mTargetButtonValue:I

    .line 508
    .local v2, "buttonValue":I
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$600()Z

    move-result v8

    if-eqz v8, :cond_1

    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG_ON_A:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$1700()Z

    move-result v8

    if-eqz v8, :cond_1

    # getter for: Lcom/android/server/power/DisplayPowerState;->USE_NEW_BACKLIGHT_MECHANISM:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$1600()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 509
    const-string v8, "XAN-DPS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PhoMod Task: on="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z
    invoke-static {v10}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1800(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z
    invoke-static {v10}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1900(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", lValue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I
    invoke-static {v10}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$2000(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I
    invoke-static {v10}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$2100(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", bValue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mCurrentButtonValue:I
    invoke-static {v10}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$100(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_1
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$2200(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 516
    :try_start_0
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z
    invoke-static {v9}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1900(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z

    move-result v4

    .line 517
    .local v4, "on":Z
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z
    invoke-static {v9}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1800(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z

    move-result v9

    if-eq v4, v9, :cond_3

    move v5, v6

    .line 519
    .local v5, "onChanged":Z
    :goto_1
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$600()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 520
    if-eqz v5, :cond_2

    .line 521
    const-string v9, "XAN-DPS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mTask ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z
    invoke-static {v11}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1800(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z
    invoke-static {v11}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1900(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I
    invoke-static {v11}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$2000(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I
    invoke-static {v11}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$2100(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_2
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I
    invoke-static {v9}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$2100(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I

    move-result v0

    .line 529
    .local v0, "backlight":I
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I
    invoke-static {v9}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$2000(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I

    move-result v9

    if-eq v0, v9, :cond_4

    move v1, v6

    .line 530
    .local v1, "backlightChanged":Z
    :goto_2
    if-nez v5, :cond_5

    if-nez v1, :cond_5

    .line 531
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z
    invoke-static {v6, v7}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$2302(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;Z)Z

    .line 532
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v6, v6, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # invokes: Lcom/android/server/power/DisplayPowerState;->postScreenUpdateThreadSafe()V
    invoke-static {v6}, Lcom/android/server/power/DisplayPowerState;->access$2600(Lcom/android/server/power/DisplayPowerState;)V

    .line 597
    return-void

    .end local v0    # "backlight":I
    .end local v1    # "backlightChanged":Z
    .end local v5    # "onChanged":Z
    :cond_3
    move v5, v7

    .line 517
    goto :goto_1

    .restart local v0    # "backlight":I
    .restart local v5    # "onChanged":Z
    :cond_4
    move v1, v7

    .line 529
    goto :goto_2

    .line 534
    .restart local v1    # "backlightChanged":Z
    :cond_5
    :try_start_1
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # setter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z
    invoke-static {v9, v4}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1802(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;Z)Z

    .line 535
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # setter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I
    invoke-static {v9, v0}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$2002(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;I)I

    .line 536
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 539
    if-eqz v4, :cond_e

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mCurrentButtonValue:I
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$100(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I

    move-result v8

    if-eq v8, v2, :cond_e

    if-ltz v2, :cond_e

    .line 540
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$600()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 541
    const-string v8, "XAN-DPS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PhoMod:bValue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mCurrentButtonValue:I
    invoke-static {v10}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$100(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_6
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v8, v8, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerState;->access$1500(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/LightsService$Light;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 545
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # setter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mCurrentButtonValue:I
    invoke-static {v8, v2}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$102(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;I)I

    .line 555
    :cond_7
    :goto_3
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$800()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 556
    const-string v8, "XAN-DPS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updating screen state: on="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", backlight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_8
    if-eqz v5, :cond_a

    if-eqz v4, :cond_a

    .line 560
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$600()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 561
    const-string v8, "XAN-DPS"

    const-string v9, "PhoMod:unblankAllDisplays"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_9
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v8, v8, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerState;->access$2400(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/DisplayBlanker;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/power/DisplayBlanker;->unblankAllDisplays()V

    .line 564
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$600()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 565
    const-string v8, "XAN-DPS"

    const-string v9, "PhoMod:unblankAllDisplays E"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_a
    if-eqz v1, :cond_c

    .line 571
    # getter for: Lcom/android/server/power/DisplayPowerState;->USE_NEW_BACKLIGHT_MECHANISM:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$1600()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 573
    const/high16 v8, -0x80000000

    or-int v3, v0, v8

    .line 574
    .local v3, "newBacklight":I
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$600()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 575
    const-string v8, "XAN-DPS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "backlight=("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_b
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v8, v8, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mBacklight:Lcom/android/server/LightsService$Light;
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerState;->access$2500(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/LightsService$Light;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 584
    .end local v3    # "newBacklight":I
    :cond_c
    :goto_4
    if-eqz v5, :cond_0

    if-nez v4, :cond_0

    .line 585
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$600()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 586
    const-string v8, "XAN-DPS"

    const-string v9, "PhoMod:blankAllDisplays"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_d
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v8, v8, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerState;->access$2400(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/DisplayBlanker;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/power/DisplayBlanker;->blankAllDisplays()V

    .line 589
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$600()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 590
    const-string v8, "XAN-DPS"

    const-string v9, "PhoMod:blankAllDisplays E"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 536
    .end local v0    # "backlight":I
    .end local v1    # "backlightChanged":Z
    .end local v4    # "on":Z
    .end local v5    # "onChanged":Z
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 546
    .restart local v0    # "backlight":I
    .restart local v1    # "backlightChanged":Z
    .restart local v4    # "on":Z
    .restart local v5    # "onChanged":Z
    :cond_e
    if-eqz v0, :cond_f

    if-nez v4, :cond_7

    if-eqz v5, :cond_7

    .line 547
    :cond_f
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$600()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 548
    const-string v8, "XAN-DPS"

    const-string v9, "PhoMod:turning off button light"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_10
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v8, v8, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerState;->access$1500(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/LightsService$Light;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 551
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # setter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mCurrentButtonValue:I
    invoke-static {v8, v7}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$102(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;I)I

    goto/16 :goto_3

    .line 579
    :cond_11
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v8, v8, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mBacklight:Lcom/android/server/LightsService$Light;
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerState;->access$2500(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/LightsService$Light;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto :goto_4
.end method
