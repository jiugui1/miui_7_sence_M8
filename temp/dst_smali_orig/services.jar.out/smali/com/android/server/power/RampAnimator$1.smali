.class Lcom/android/server/power/RampAnimator$1;
.super Ljava/lang/Object;
.source "RampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/RampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/power/RampAnimator;)V
    .locals 0

    .prologue
    .local p0, "this":Lcom/android/server/power/RampAnimator$1;, "Lcom/android/server/power/RampAnimator.1;"
    iput-object p1, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .local p0, "this":Lcom/android/server/power/RampAnimator$1;, "Lcom/android/server/power/RampAnimator.1;"
    const/4 v14, 0x0

    const/4 v13, 0x0

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mDuration:I
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$000(Lcom/android/server/power/RampAnimator;)I

    move-result v9

    if-lez v9, :cond_0

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mStartTimeNanos:J
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$100(Lcom/android/server/power/RampAnimator;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gez v9, :cond_0

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v10, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v10}, Lcom/android/server/power/RampAnimator;->access$200(Lcom/android/server/power/RampAnimator;)Landroid/view/Choreographer;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v10

    # setter for: Lcom/android/server/power/RampAnimator;->mStartTimeNanos:J
    invoke-static {v9, v10, v11}, Lcom/android/server/power/RampAnimator;->access$102(Lcom/android/server/power/RampAnimator;J)J

    :cond_0
    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$200(Lcom/android/server/power/RampAnimator;)Landroid/view/Choreographer;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v4

    .local v4, "frameTimeNanos":J
    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)J

    move-result-wide v9

    sub-long v9, v4, v9

    long-to-float v9, v9

    const v10, 0x3089705f    # 1.0E-9f

    mul-float v8, v9, v10

    .local v8, "timeDelta":F
    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # setter for: Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J
    invoke-static {v9, v4, v5}, Lcom/android/server/power/RampAnimator;->access$302(Lcom/android/server/power/RampAnimator;J)J

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v7

    .local v7, "scale":F
    cmpl-float v9, v7, v13

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mRate:I
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$400(Lcom/android/server/power/RampAnimator;)I

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mDuration:I
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$000(Lcom/android/server/power/RampAnimator;)I

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mRate:I
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$400(Lcom/android/server/power/RampAnimator;)I

    move-result v9

    if-gtz v9, :cond_d

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mDuration:I
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$000(Lcom/android/server/power/RampAnimator;)I

    move-result v9

    if-gtz v9, :cond_d

    :cond_1
    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->DEBUG_ON:Z
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "XAN-RA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mCb:Anim off.("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v11}, Lcom/android/server/power/RampAnimator;->access$600(Lcom/android/server/power/RampAnimator;)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v11}, Lcom/android/server/power/RampAnimator;->access$700(Lcom/android/server/power/RampAnimator;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mRate:I
    invoke-static {v11}, Lcom/android/server/power/RampAnimator;->access$400(Lcom/android/server/power/RampAnimator;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mDuration:I
    invoke-static {v11}, Lcom/android/server/power/RampAnimator;->access$000(Lcom/android/server/power/RampAnimator;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v10, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v10}, Lcom/android/server/power/RampAnimator;->access$700(Lcom/android/server/power/RampAnimator;)I

    move-result v10

    int-to-float v10, v10

    # setter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v9, v10}, Lcom/android/server/power/RampAnimator;->access$602(Lcom/android/server/power/RampAnimator;F)F

    :cond_3
    :goto_0
    sget v6, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    .local v6, "oldCurrentValue":I
    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$600(Lcom/android/server/power/RampAnimator;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    sput v9, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->DEBUG_ON:Z
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_4
    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->DEBUG_ON:Z
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)Z

    move-result v9

    if-eqz v9, :cond_6

    cmpl-float v9, v7, v13

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mRate:I
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$400(Lcom/android/server/power/RampAnimator;)I

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mDuration:I
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$000(Lcom/android/server/power/RampAnimator;)I

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mRate:I
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$400(Lcom/android/server/power/RampAnimator;)I

    move-result v9

    if-gtz v9, :cond_6

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mDuration:I
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$000(Lcom/android/server/power/RampAnimator;)I

    move-result v9

    if-gtz v9, :cond_6

    :cond_5
    const-string v9, "XAN-RA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mCb:setValue ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget v9, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-ne v6, v9, :cond_7

    sget v9, Lcom/android/server/power/RampAnimator;->mTargetButtonValue:I

    sget v10, Lcom/android/server/power/RampAnimator;->mCurrentButtonValue:I

    if-eq v9, v10, :cond_c

    :cond_7
    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->DEBUG_ON:Z
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)Z

    move-result v9

    if-eqz v9, :cond_9

    cmpl-float v9, v7, v13

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mRate:I
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$400(Lcom/android/server/power/RampAnimator;)I

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mDuration:I
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$000(Lcom/android/server/power/RampAnimator;)I

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mRate:I
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$400(Lcom/android/server/power/RampAnimator;)I

    move-result v9

    if-gtz v9, :cond_9

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mDuration:I
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$000(Lcom/android/server/power/RampAnimator;)I

    move-result v9

    if-gtz v9, :cond_9

    :cond_8
    const-string v9, "XAN-RA"

    const-string v10, "mCb:SV S"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$1000(Lcom/android/server/power/RampAnimator;)Landroid/util/IntProperty;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/power/RampAnimator;->access$900(Lcom/android/server/power/RampAnimator;)Ljava/lang/Object;

    move-result-object v10

    sget v11, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    invoke-virtual {v9, v10, v11}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->DEBUG_ON:Z
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)Z

    move-result v9

    if-eqz v9, :cond_b

    cmpl-float v9, v7, v13

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mRate:I
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$400(Lcom/android/server/power/RampAnimator;)I

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mDuration:I
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$000(Lcom/android/server/power/RampAnimator;)I

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mRate:I
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$400(Lcom/android/server/power/RampAnimator;)I

    move-result v9

    if-gtz v9, :cond_b

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mDuration:I
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$000(Lcom/android/server/power/RampAnimator;)I

    move-result v9

    if-gtz v9, :cond_b

    :cond_a
    const-string v9, "XAN-RA"

    const-string v10, "mCb:SV E"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    sget v9, Lcom/android/server/power/RampAnimator;->mTargetButtonValue:I

    sput v9, Lcom/android/server/power/RampAnimator;->mCurrentButtonValue:I

    :cond_c
    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$700(Lcom/android/server/power/RampAnimator;)I

    move-result v9

    sget v10, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-eq v9, v10, :cond_11

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # invokes: Lcom/android/server/power/RampAnimator;->postCallback()V
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$1100(Lcom/android/server/power/RampAnimator;)V

    :goto_1
    return-void

    .end local v6    # "oldCurrentValue":I
    :cond_d
    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mDuration:I
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$000(Lcom/android/server/power/RampAnimator;)I

    move-result v9

    if-lez v9, :cond_f

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$700(Lcom/android/server/power/RampAnimator;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mStartValue:I
    invoke-static {v10}, Lcom/android/server/power/RampAnimator;->access$800(Lcom/android/server/power/RampAnimator;)I

    move-result v10

    sub-int v1, v9, v10

    .local v1, "DELTA":I
    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mStartTimeNanos:J
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$100(Lcom/android/server/power/RampAnimator;)J

    move-result-wide v9

    sub-long v9, v4, v9

    long-to-float v2, v9

    .local v2, "ELAPSED":F
    int-to-float v9, v1

    iget-object v10, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mDuration:I
    invoke-static {v10}, Lcom/android/server/power/RampAnimator;->access$000(Lcom/android/server/power/RampAnimator;)I

    move-result v10

    int-to-float v10, v10

    const v11, 0x49742400    # 1000000.0f

    mul-float/2addr v10, v11

    div-float v10, v2, v10

    mul-float v0, v9, v10

    .local v0, "AMOUNT":F
    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v10, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mStartValue:I
    invoke-static {v10}, Lcom/android/server/power/RampAnimator;->access$800(Lcom/android/server/power/RampAnimator;)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v0

    # setter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v9, v10}, Lcom/android/server/power/RampAnimator;->access$602(Lcom/android/server/power/RampAnimator;F)F

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mStartValue:I
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$800(Lcom/android/server/power/RampAnimator;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v10}, Lcom/android/server/power/RampAnimator;->access$700(Lcom/android/server/power/RampAnimator;)I

    move-result v10

    if-le v9, v10, :cond_e

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v10, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v10}, Lcom/android/server/power/RampAnimator;->access$700(Lcom/android/server/power/RampAnimator;)I

    move-result v10

    iget-object v11, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v11}, Lcom/android/server/power/RampAnimator;->access$600(Lcom/android/server/power/RampAnimator;)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v10, v10

    # setter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v9, v10}, Lcom/android/server/power/RampAnimator;->access$602(Lcom/android/server/power/RampAnimator;F)F

    :goto_2
    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->DEBUG_ON:Z
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto/16 :goto_0

    :cond_e
    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v10, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v10}, Lcom/android/server/power/RampAnimator;->access$700(Lcom/android/server/power/RampAnimator;)I

    move-result v10

    iget-object v11, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v11}, Lcom/android/server/power/RampAnimator;->access$600(Lcom/android/server/power/RampAnimator;)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v10, v10

    # setter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v9, v10}, Lcom/android/server/power/RampAnimator;->access$602(Lcom/android/server/power/RampAnimator;F)F

    goto :goto_2

    .end local v0    # "AMOUNT":F
    .end local v1    # "DELTA":I
    .end local v2    # "ELAPSED":F
    :cond_f
    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mRate:I
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$400(Lcom/android/server/power/RampAnimator;)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    div-float v3, v9, v7

    .local v3, "amount":F
    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$700(Lcom/android/server/power/RampAnimator;)I

    move-result v9

    sget v10, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-le v9, v10, :cond_10

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v10, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v10}, Lcom/android/server/power/RampAnimator;->access$600(Lcom/android/server/power/RampAnimator;)F

    move-result v10

    add-float/2addr v10, v3

    iget-object v11, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v11}, Lcom/android/server/power/RampAnimator;->access$700(Lcom/android/server/power/RampAnimator;)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    # setter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v9, v10}, Lcom/android/server/power/RampAnimator;->access$602(Lcom/android/server/power/RampAnimator;F)F

    :goto_3
    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->DEBUG_ON:Z
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto/16 :goto_0

    :cond_10
    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v10, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v10}, Lcom/android/server/power/RampAnimator;->access$600(Lcom/android/server/power/RampAnimator;)F

    move-result v10

    sub-float/2addr v10, v3

    iget-object v11, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v11}, Lcom/android/server/power/RampAnimator;->access$700(Lcom/android/server/power/RampAnimator;)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    # setter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v9, v10}, Lcom/android/server/power/RampAnimator;->access$602(Lcom/android/server/power/RampAnimator;F)F

    goto :goto_3

    .end local v3    # "amount":F
    .restart local v6    # "oldCurrentValue":I
    :cond_11
    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->DEBUG_ON:Z
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)Z

    move-result v9

    if-eqz v9, :cond_12

    const-string v9, "XAN-RA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mCb:FV ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v11}, Lcom/android/server/power/RampAnimator;->access$700(Lcom/android/server/power/RampAnimator;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    const-wide/16 v10, -0x1

    # setter for: Lcom/android/server/power/RampAnimator;->mStartTimeNanos:J
    invoke-static {v9, v10, v11}, Lcom/android/server/power/RampAnimator;->access$102(Lcom/android/server/power/RampAnimator;J)J

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    const/4 v10, -0x1

    # setter for: Lcom/android/server/power/RampAnimator;->mDuration:I
    invoke-static {v9, v10}, Lcom/android/server/power/RampAnimator;->access$002(Lcom/android/server/power/RampAnimator;I)I

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # setter for: Lcom/android/server/power/RampAnimator;->mCameraAnimating:Z
    invoke-static {v9, v14}, Lcom/android/server/power/RampAnimator;->access$1202(Lcom/android/server/power/RampAnimator;Z)Z

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # setter for: Lcom/android/server/power/RampAnimator;->mAnimating:Z
    invoke-static {v9, v14}, Lcom/android/server/power/RampAnimator;->access$1302(Lcom/android/server/power/RampAnimator;Z)Z

    goto/16 :goto_1
.end method
