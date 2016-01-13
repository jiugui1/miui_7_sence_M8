.class final Lcom/android/server/power/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_CAMERA_LEAVE_MODE:I = 0x1

.field private static final BRIGHTNESS_NONE_MODE:I

.field static mCurrentButtonValue:I

.field static mCurrentValue:I

.field static mTargetButtonValue:I


# instance fields
.field private final DEBUG_ON:Z

.field private final TAG:Ljava/lang/String;

.field private mAnimatedValue:F

.field private mAnimating:Z

.field private final mCallback:Ljava/lang/Runnable;

.field private mCameraAnimating:Z

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mDuration:I

.field private mFirstTime:Z

.field private mLastFrameTimeNanos:J

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mRate:I

.field private mStartTimeNanos:J

.field private mStartValue:I

.field private mTargetValue:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/IntProperty;, "Landroid/util/IntProperty<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "XAN-RA"

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->TAG:Ljava/lang/String;

    .line 35
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/server/power/RampAnimator;->DEBUG_ON:Z

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/RampAnimator;->mStartTimeNanos:J

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/RampAnimator;->mDuration:I

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mCameraAnimating:Z

    .line 208
    new-instance v0, Lcom/android/server/power/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/RampAnimator$1;-><init>(Lcom/android/server/power/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->mCallback:Ljava/lang/Runnable;

    .line 73
    iput-object p1, p0, Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;

    .line 74
    iput-object p2, p0, Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;

    .line 75
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/RampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mDuration:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/power/RampAnimator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mDuration:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/power/RampAnimator;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/android/server/power/RampAnimator;->mStartTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/RampAnimator;)Landroid/util/IntProperty;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/power/RampAnimator;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;
    .param p1, "x1"    # J

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/android/server/power/RampAnimator;->mStartTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/server/power/RampAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->postCallback()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/server/power/RampAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/server/power/RampAnimator;->mCameraAnimating:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/server/power/RampAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/power/RampAnimator;)Landroid/view/Choreographer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/power/RampAnimator;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/server/power/RampAnimator;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;
    .param p1, "x1"    # J

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/server/power/RampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/power/RampAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/power/RampAnimator;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mAnimatedValue:F

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/power/RampAnimator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;
    .param p1, "x1"    # F

    .prologue
    .line 32
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mAnimatedValue:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/power/RampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/power/RampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mStartValue:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/power/RampAnimator;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/RampAnimator;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method private postCallback()V
    .locals 4

    .prologue
    .line 205
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/power/RampAnimator;->mCallback:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 206
    return-void
.end method


# virtual methods
.method public animateTo(IIII)Z
    .locals 6
    .param p1, "target"    # I
    .param p2, "rate"    # I
    .param p3, "buttonValue"    # I
    .param p4, "duration"    # I

    .prologue
    .line 80
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/RampAnimator;->animateTo(IIIII)Z

    move-result v0

    return v0
.end method

.method public animateTo(IIIII)Z
    .locals 7
    .param p1, "target"    # I
    .param p2, "rate"    # I
    .param p3, "buttonValue"    # I
    .param p4, "duration"    # I
    .param p5, "mode"    # I

    .prologue
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    const/4 v0, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x1

    .line 98
    iget-boolean v4, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    if-eqz v4, :cond_0

    .line 99
    iput-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    .line 101
    sput p3, Lcom/android/server/power/RampAnimator;->mTargetButtonValue:I

    .line 104
    iget-object v4, p0, Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v5, p0, Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v4, v5, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 107
    sget v4, Lcom/android/server/power/RampAnimator;->mTargetButtonValue:I

    sput v4, Lcom/android/server/power/RampAnimator;->mCurrentButtonValue:I

    .line 109
    sput p1, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    .line 187
    :goto_0
    return v3

    .line 114
    :cond_0
    if-ne p5, v3, :cond_1

    .line 115
    iput-boolean v3, p0, Lcom/android/server/power/RampAnimator;->mCameraAnimating:Z

    .line 120
    :cond_1
    iget v2, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    .line 121
    .local v2, "old_rate":I
    iget v1, p0, Lcom/android/server/power/RampAnimator;->mDuration:I

    .line 133
    .local v1, "old_duration":I
    if-gez p4, :cond_c

    iget-boolean v4, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    if-gt p2, v4, :cond_3

    sget v4, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt p1, v4, :cond_2

    sget v4, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    iget v5, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    if-le v4, v5, :cond_3

    :cond_2
    iget v4, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    sget v5, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt v4, v5, :cond_c

    sget v4, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt v4, p1, :cond_c

    .line 139
    :cond_3
    iput p2, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    .line 141
    iget-boolean v4, p0, Lcom/android/server/power/RampAnimator;->mCameraAnimating:Z

    if-nez v4, :cond_4

    .line 142
    iput v6, p0, Lcom/android/server/power/RampAnimator;->mDuration:I

    .line 155
    :cond_4
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/power/RampAnimator;->DEBUG_ON:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    if-nez v4, :cond_5

    sget v4, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-ne p1, v4, :cond_6

    :cond_5
    if-ltz p3, :cond_7

    sget v4, Lcom/android/server/power/RampAnimator;->mCurrentButtonValue:I

    if-eq p3, v4, :cond_7

    .line 157
    :cond_6
    const-string v4, "XAN-RA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animateTo("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", target("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bValue("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/power/RampAnimator;->mCurrentButtonValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/power/RampAnimator;->mTargetButtonValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", duration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/RampAnimator;->mDuration:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAnimating="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAnimatedValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/RampAnimator;->mAnimatedValue:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_7
    iget v4, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    if-ne v4, p1, :cond_8

    if-ltz p3, :cond_9

    sget v4, Lcom/android/server/power/RampAnimator;->mTargetButtonValue:I

    if-eq v4, p3, :cond_9

    :cond_8
    move v0, v3

    .line 171
    .local v0, "changed":Z
    :cond_9
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    .line 174
    sput p3, Lcom/android/server/power/RampAnimator;->mTargetButtonValue:I

    .line 179
    iget-boolean v4, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    if-nez v4, :cond_b

    sget v4, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-ne p1, v4, :cond_a

    if-ltz p3, :cond_b

    sget v4, Lcom/android/server/power/RampAnimator;->mCurrentButtonValue:I

    if-eq p3, v4, :cond_b

    .line 181
    :cond_a
    iput-boolean v3, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    .line 182
    sget v3, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/server/power/RampAnimator;->mAnimatedValue:F

    .line 183
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J

    .line 184
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->postCallback()V

    :cond_b
    move v3, v0

    .line 187
    goto/16 :goto_0

    .line 146
    .end local v0    # "changed":Z
    :cond_c
    if-ltz p4, :cond_4

    .line 147
    iput v6, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    .line 148
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/power/RampAnimator;->mStartTimeNanos:J

    .line 149
    sget v4, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    iput v4, p0, Lcom/android/server/power/RampAnimator;->mStartValue:I

    .line 150
    iput p4, p0, Lcom/android/server/power/RampAnimator;->mDuration:I

    goto/16 :goto_1
.end method

.method cancelAnimation()V
    .locals 4

    .prologue
    .line 200
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    const/4 v1, 0x0

    sget v2, Lcom/android/server/power/RampAnimator;->mTargetButtonValue:I

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/power/RampAnimator;->animateTo(IIII)Z

    .line 201
    return-void
.end method

.method getCurrentBrightness()I
    .locals 1

    .prologue
    .line 192
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    sget v0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    return v0
.end method

.method getTargetBrightness()I
    .locals 1

    .prologue
    .line 196
    .local p0, "this":Lcom/android/server/power/RampAnimator;, "Lcom/android/server/power/RampAnimator<TT;>;"
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    return v0
.end method
