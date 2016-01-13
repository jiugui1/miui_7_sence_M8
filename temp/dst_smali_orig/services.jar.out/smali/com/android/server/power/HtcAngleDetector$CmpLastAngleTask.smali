.class Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;
.super Ljava/lang/Object;
.source "HtcAngleDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcAngleDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CmpLastAngleTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/HtcAngleDetector;


# direct methods
.method private constructor <init>(Lcom/android/server/power/HtcAngleDetector;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/HtcAngleDetector;Lcom/android/server/power/HtcAngleDetector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p2, "x1"    # Lcom/android/server/power/HtcAngleDetector$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;-><init>(Lcom/android/server/power/HtcAngleDetector;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v0}, Lcom/android/server/power/HtcAngleDetector;->access$3000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    const-string v1, "CmpLastAngle: running."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsCmpLastAngleTimeout:Z
    invoke-static {v0, v4}, Lcom/android/server/power/HtcAngleDetector;->access$4402(Lcom/android/server/power/HtcAngleDetector;Z)Z

    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mNear_xAngle:I
    invoke-static {v0}, Lcom/android/server/power/HtcAngleDetector;->access$6400(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_xAngle:I
    invoke-static {v1}, Lcom/android/server/power/HtcAngleDetector;->access$1100(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->LAST_ANGLE_TOLERANCE:I
    invoke-static {v1}, Lcom/android/server/power/HtcAngleDetector;->access$6500(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mNear_yAngle:I
    invoke-static {v0}, Lcom/android/server/power/HtcAngleDetector;->access$6600(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_yAngle:I
    invoke-static {v1}, Lcom/android/server/power/HtcAngleDetector;->access$1200(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->LAST_ANGLE_TOLERANCE:I
    invoke-static {v1}, Lcom/android/server/power/HtcAngleDetector;->access$6500(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v1

    if-le v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mNear_zAngle:I
    invoke-static {v0}, Lcom/android/server/power/HtcAngleDetector;->access$6700(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_zAngle:I
    invoke-static {v1}, Lcom/android/server/power/HtcAngleDetector;->access$1300(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->LAST_ANGLE_TOLERANCE:I
    invoke-static {v1}, Lcom/android/server/power/HtcAngleDetector;->access$6500(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v1

    if-gt v0, v1, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    iget-object v1, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_xAngle:I
    invoke-static {v1}, Lcom/android/server/power/HtcAngleDetector;->access$1100(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_yAngle:I
    invoke-static {v2}, Lcom/android/server/power/HtcAngleDetector;->access$1200(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_zAngle:I
    invoke-static {v3}, Lcom/android/server/power/HtcAngleDetector;->access$1300(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v3

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isReadingCmpLastAngle(III)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/power/HtcAngleDetector;->access$6800(Lcom/android/server/power/HtcAngleDetector;III)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mNear_zAngle:I
    invoke-static {v0}, Lcom/android/server/power/HtcAngleDetector;->access$6700(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_zAngle:I
    invoke-static {v1}, Lcom/android/server/power/HtcAngleDetector;->access$1300(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->ANGLE_TOLERANCE:I
    invoke-static {v1}, Lcom/android/server/power/HtcAngleDetector;->access$6900(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v1

    if-gt v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_zAngle:I
    invoke-static {v0}, Lcom/android/server/power/HtcAngleDetector;->access$1300(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->ANGLE_TOLERANCE:I
    invoke-static {v1}, Lcom/android/server/power/HtcAngleDetector;->access$6900(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v1

    if-gt v0, v1, :cond_4

    :cond_3
    # getter for: Lcom/android/server/power/HtcAngleDetector;->IS_DETECTOR_ALWAYS_ENABLE:Z
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$7000()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_4
    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v0}, Lcom/android/server/power/HtcAngleDetector;->access$3000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CmpLastAngle: Diff pose. x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mNear_xAngle:I
    invoke-static {v2}, Lcom/android/server/power/HtcAngleDetector;->access$6400(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_xAngle:I
    invoke-static {v2}, Lcom/android/server/power/HtcAngleDetector;->access$1100(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mNear_yAngle:I
    invoke-static {v2}, Lcom/android/server/power/HtcAngleDetector;->access$6600(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_yAngle:I
    invoke-static {v2}, Lcom/android/server/power/HtcAngleDetector;->access$1200(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mNear_zAngle:I
    invoke-static {v2}, Lcom/android/server/power/HtcAngleDetector;->access$6700(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_zAngle:I
    invoke-static {v2}, Lcom/android/server/power/HtcAngleDetector;->access$1300(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CmpLastAngle: turn screen on. AE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/power/HtcAngleDetector;->IS_DETECTOR_ALWAYS_ENABLE:Z
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$7000()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I
    invoke-static {v0}, Lcom/android/server/power/HtcAngleDetector;->access$3400(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsPsensorNear:Z
    invoke-static {v0, v4}, Lcom/android/server/power/HtcAngleDetector;->access$3502(Lcom/android/server/power/HtcAngleDetector;Z)Z

    :cond_6
    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static {v0, v4}, Lcom/android/server/power/HtcAngleDetector;->access$4502(Lcom/android/server/power/HtcAngleDetector;I)I

    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static {v0, v4}, Lcom/android/server/power/HtcAngleDetector;->access$3802(Lcom/android/server/power/HtcAngleDetector;Z)Z

    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static {v0, v4}, Lcom/android/server/power/HtcAngleDetector;->access$4602(Lcom/android/server/power/HtcAngleDetector;I)I

    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static {v0, v5}, Lcom/android/server/power/HtcAngleDetector;->access$3702(Lcom/android/server/power/HtcAngleDetector;Z)Z

    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v0}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendUpdatePowerState()V

    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mReleaseProximityWakeLockOn:Z
    invoke-static {v0}, Lcom/android/server/power/HtcAngleDetector;->access$4200(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v0}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v0}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendDelayScreenOnStateAfterEndCall(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static {v0, v5}, Lcom/android/server/power/HtcAngleDetector;->access$4902(Lcom/android/server/power/HtcAngleDetector;Z)Z

    :goto_0
    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V
    invoke-static {v0}, Lcom/android/server/power/HtcAngleDetector;->access$3100(Lcom/android/server/power/HtcAngleDetector;)V

    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    iget-object v1, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_xAngle:I
    invoke-static {v1}, Lcom/android/server/power/HtcAngleDetector;->access$1100(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_yAngle:I
    invoke-static {v2}, Lcom/android/server/power/HtcAngleDetector;->access$1200(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_zAngle:I
    invoke-static {v3}, Lcom/android/server/power/HtcAngleDetector;->access$1300(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v3

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isSamePose(III)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/power/HtcAngleDetector;->access$3200(Lcom/android/server/power/HtcAngleDetector;III)Z

    return-void

    :cond_8
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CmpLastAngle: Same pose. x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mNear_xAngle:I
    invoke-static {v2}, Lcom/android/server/power/HtcAngleDetector;->access$6400(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_xAngle:I
    invoke-static {v2}, Lcom/android/server/power/HtcAngleDetector;->access$1100(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mNear_yAngle:I
    invoke-static {v2}, Lcom/android/server/power/HtcAngleDetector;->access$6600(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_yAngle:I
    invoke-static {v2}, Lcom/android/server/power/HtcAngleDetector;->access$1200(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mNear_zAngle:I
    invoke-static {v2}, Lcom/android/server/power/HtcAngleDetector;->access$6700(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcAngleDetector$CmpLastAngleTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_zAngle:I
    invoke-static {v2}, Lcom/android/server/power/HtcAngleDetector;->access$1300(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
