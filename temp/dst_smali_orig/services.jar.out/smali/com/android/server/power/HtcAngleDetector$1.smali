.class Lcom/android/server/power/HtcAngleDetector$1;
.super Ljava/lang/Object;
.source "HtcAngleDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcAngleDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/HtcAngleDetector;


# direct methods
.method constructor <init>(Lcom/android/server/power/HtcAngleDetector;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 20
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGSensorEnabled:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$700(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_f

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v15}, Landroid/hardware/Sensor;->getType()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x0

    aget v9, v15, v16

    .local v9, "x":F
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x1

    aget v11, v15, v16

    .local v11, "y":F
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x2

    aget v13, v15, v16

    .local v13, "z":F
    mul-float v15, v9, v9

    mul-float v16, v11, v11

    add-float v15, v15, v16

    mul-float v16, v13, v13

    add-float v15, v15, v16

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    double-to-float v2, v15

    .local v2, "gravity":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsGSensorTimeout:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$800(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_1

    .end local v2    # "gravity":F
    .end local v9    # "x":F
    .end local v11    # "y":F
    .end local v13    # "z":F
    :cond_0
    :goto_0
    return-void

    .restart local v2    # "gravity":F
    .restart local v9    # "x":F
    .restart local v11    # "y":F
    .restart local v13    # "z":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsGSensorTimeout:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$802(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$1000(Lcom/android/server/power/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGSensorTimeoutTask:Lcom/android/server/power/HtcAngleDetector$GSensorTimeoutTask;
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$900(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/HtcAngleDetector$GSensorTimeoutTask;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$1000(Lcom/android/server/power/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGSensorTimeoutTask:Lcom/android/server/power/HtcAngleDetector$GSensorTimeoutTask;
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$900(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/HtcAngleDetector$GSensorTimeoutTask;

    move-result-object v16

    const-wide/16 v17, 0xc8

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    div-float v16, v9, v2

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->asin(D)D

    move-result-wide v16

    const-wide v18, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mOld_xAngle:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$1102(Lcom/android/server/power/HtcAngleDetector;I)I

    move-result v10

    .local v10, "xAngle":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    div-float v16, v11, v2

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->asin(D)D

    move-result-wide v16

    const-wide v18, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mOld_yAngle:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$1202(Lcom/android/server/power/HtcAngleDetector;I)I

    move-result v12

    .local v12, "yAngle":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    div-float v16, v13, v2

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->asin(D)D

    move-result-wide v16

    const-wide v18, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mOld_zAngle:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$1302(Lcom/android/server/power/HtcAngleDetector;I)I

    move-result v14

    .local v14, "zAngle":I
    # getter for: Lcom/android/server/power/HtcAngleDetector;->gravityBuffer:[F
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1400()[F

    move-result-object v15

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1500()I

    move-result v16

    aput v2, v15, v16

    # getter for: Lcom/android/server/power/HtcAngleDetector;->xAngleBuffer:[I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1600()[I

    move-result-object v15

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1500()I

    move-result v16

    aput v10, v15, v16

    # getter for: Lcom/android/server/power/HtcAngleDetector;->yAngleBuffer:[I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1700()[I

    move-result-object v15

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1500()I

    move-result v16

    aput v12, v15, v16

    # getter for: Lcom/android/server/power/HtcAngleDetector;->zAngleBuffer:[I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1800()[I

    move-result-object v15

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1500()I

    move-result v16

    aput v14, v15, v16

    # getter for: Lcom/android/server/power/HtcAngleDetector;->projXZBuffer:[F
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1900()[F

    move-result-object v15

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1500()I

    move-result v16

    mul-float v17, v9, v9

    mul-float v18, v13, v13

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->BUFFER_DEBUG_SWITCH:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$2000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_3

    const-string v15, "HtcAngleDetector"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "BufferMech, angleBuffer: xAngle, yAngle, zAngle, gravity, pointer = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1500()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/16 v15, 0xa

    if-ge v6, v15, :cond_3

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1500()I

    move-result v15

    sub-int v7, v15, v6

    .local v7, "j":I
    if-ltz v7, :cond_2

    const-string v15, "HtcAngleDetector"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "BufferMech, ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->xAngleBuffer:[I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1600()[I

    move-result-object v18

    aget v18, v18, v7

    # invokes: Lcom/android/server/power/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/server/power/HtcAngleDetector;->access$2100(Lcom/android/server/power/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->yAngleBuffer:[I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1700()[I

    move-result-object v18

    aget v18, v18, v7

    # invokes: Lcom/android/server/power/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/server/power/HtcAngleDetector;->access$2100(Lcom/android/server/power/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->zAngleBuffer:[I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1800()[I

    move-result-object v18

    aget v18, v18, v7

    # invokes: Lcom/android/server/power/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/server/power/HtcAngleDetector;->access$2100(Lcom/android/server/power/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->gravityBuffer:[F
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1400()[F

    move-result-object v18

    aget v18, v18, v7

    # invokes: Lcom/android/server/power/HtcAngleDetector;->acceleroMeterToString(F)Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/server/power/HtcAngleDetector;->access$2200(Lcom/android/server/power/HtcAngleDetector;F)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->projXZBuffer:[F
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1900()[F

    move-result-object v18

    aget v18, v18, v7

    # invokes: Lcom/android/server/power/HtcAngleDetector;->acceleroMeterToString(F)Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/server/power/HtcAngleDetector;->access$2200(Lcom/android/server/power/HtcAngleDetector;F)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_2
    const-string v15, "HtcAngleDetector"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "BufferMech, ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->xAngleBuffer:[I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1600()[I

    move-result-object v18

    add-int/lit8 v19, v7, 0xa

    aget v18, v18, v19

    # invokes: Lcom/android/server/power/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/server/power/HtcAngleDetector;->access$2100(Lcom/android/server/power/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->yAngleBuffer:[I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1700()[I

    move-result-object v18

    add-int/lit8 v19, v7, 0xa

    aget v18, v18, v19

    # invokes: Lcom/android/server/power/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/server/power/HtcAngleDetector;->access$2100(Lcom/android/server/power/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->zAngleBuffer:[I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1800()[I

    move-result-object v18

    add-int/lit8 v19, v7, 0xa

    aget v18, v18, v19

    # invokes: Lcom/android/server/power/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/server/power/HtcAngleDetector;->access$2100(Lcom/android/server/power/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->gravityBuffer:[F
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1400()[F

    move-result-object v18

    add-int/lit8 v19, v7, 0xa

    aget v18, v18, v19

    # invokes: Lcom/android/server/power/HtcAngleDetector;->acceleroMeterToString(F)Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/server/power/HtcAngleDetector;->access$2200(Lcom/android/server/power/HtcAngleDetector;F)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->projXZBuffer:[F
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1900()[F

    move-result-object v18

    add-int/lit8 v19, v7, 0xa

    aget v18, v18, v19

    # invokes: Lcom/android/server/power/HtcAngleDetector;->acceleroMeterToString(F)Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/server/power/HtcAngleDetector;->access$2200(Lcom/android/server/power/HtcAngleDetector;F)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v6    # "i":I
    .end local v7    # "j":I
    :cond_3
    # getter for: Lcom/android/server/power/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1500()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    rem-int/lit8 v15, v15, 0xa

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$1502(I)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mInitCompleted:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$2300(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-nez v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGyroSensorEnabled:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$2400(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isTalking(III)Z
    invoke-static {v0, v10, v12, v14}, Lcom/android/server/power/HtcAngleDetector;->access$2600(Lcom/android/server/power/HtcAngleDetector;III)Z

    move-result v16

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsPickupInTalking:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$2502(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsPickupInTalking:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$2500(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$1000(Lcom/android/server/power/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsPickupTalkingTask:Lcom/android/server/power/HtcAngleDetector$IsPickupTalkingTask;
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$2700(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/HtcAngleDetector$IsPickupTalkingTask;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$1000(Lcom/android/server/power/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsPickupTalkingTask:Lcom/android/server/power/HtcAngleDetector$IsPickupTalkingTask;
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$2700(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/HtcAngleDetector$IsPickupTalkingTask;

    move-result-object v16

    const-wide/16 v17, 0x3e8

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mInitCompleted:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$2300(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-nez v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$2800(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-nez v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isReading(III)Z
    invoke-static {v15, v10, v12, v14}, Lcom/android/server/power/HtcAngleDetector;->access$2900(Lcom/android/server/power/HtcAngleDetector;III)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_5

    const-string v15, "HtcAngleDetector"

    const-string v16, "mGSL.onSC: screen off in reading at start."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3100(Lcom/android/server/power/HtcAngleDetector;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isSamePose(III)Z
    invoke-static {v15, v10, v12, v14}, Lcom/android/server/power/HtcAngleDetector;->access$3200(Lcom/android/server/power/HtcAngleDetector;III)Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mInitCompleted:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$2302(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isShaking(F)Z
    invoke-static {v15, v2}, Lcom/android/server/power/HtcAngleDetector;->access$3300(Lcom/android/server/power/HtcAngleDetector;F)Z

    move-result v15

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$2800(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-nez v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGyroSensorEnabled:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$2400(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-nez v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3400(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3100(Lcom/android/server/power/HtcAngleDetector;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3400(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v15

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsPsensorNear:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3502(Lcom/android/server/power/HtcAngleDetector;Z)Z

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsShakeAwake:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3602(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3702(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3802(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3900(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v16

    # invokes: Lcom/android/server/power/HtcAngleDetector;->setScreenTimeout(I)V
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4000(Lcom/android/server/power/HtcAngleDetector;I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendUpdatePowerState()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mReleaseProximityWakeLockOn:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4200(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendDelayScreenOnStateAfterEndCall(I)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$1000(Lcom/android/server/power/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mShakeAwakeTimeoutTask:Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4300(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$1000(Lcom/android/server/power/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mShakeAwakeTimeoutTask:Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4300(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;

    move-result-object v16

    const-wide/16 v17, 0x3e8

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isSamePose(III)Z
    invoke-static {v15, v10, v12, v14}, Lcom/android/server/power/HtcAngleDetector;->access$3200(Lcom/android/server/power/HtcAngleDetector;III)Z

    move-result v15

    if-nez v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsShakeAwake:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3600(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-nez v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsCmpLastAngleTimeout:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4400(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4502(Lcom/android/server/power/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4602(Lcom/android/server/power/HtcAngleDetector;I)I

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_c

    const-string v15, "HtcAngleDetector"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mGSL.onSC: x="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/power/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static {v0, v10}, Lcom/android/server/power/HtcAngleDetector;->access$2100(Lcom/android/server/power/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", y="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/power/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static {v0, v12}, Lcom/android/server/power/HtcAngleDetector;->access$2100(Lcom/android/server/power/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", z="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/power/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static {v0, v14}, Lcom/android/server/power/HtcAngleDetector;->access$2100(Lcom/android/server/power/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", gravity="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/power/HtcAngleDetector;->acceleroMeterToString(F)Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/server/power/HtcAngleDetector;->access$2200(Lcom/android/server/power/HtcAngleDetector;F)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isReading(III)Z
    invoke-static {v15, v10, v12, v14}, Lcom/android/server/power/HtcAngleDetector;->access$2900(Lcom/android/server/power/HtcAngleDetector;III)Z

    move-result v15

    if-eqz v15, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$2800(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-nez v15, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3400(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # operator++ for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4608(Lcom/android/server/power/HtcAngleDetector;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3700(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-nez v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4600(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4700(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isSameZAngle(I)Z
    invoke-static {v15, v14}, Lcom/android/server/power/HtcAngleDetector;->access$4800(Lcom/android/server/power/HtcAngleDetector;I)Z

    move-result v15

    if-nez v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_d

    const-string v15, "HtcAngleDetector"

    const-string v16, "mGSL.onSC: reading detected. turning on."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3100(Lcom/android/server/power/HtcAngleDetector;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3400(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v15

    if-nez v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsPsensorNear:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3502(Lcom/android/server/power/HtcAngleDetector;Z)Z

    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4602(Lcom/android/server/power/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3702(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4502(Lcom/android/server/power/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3802(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4902(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3900(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v16

    # invokes: Lcom/android/server/power/HtcAngleDetector;->setScreenTimeout(I)V
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4000(Lcom/android/server/power/HtcAngleDetector;I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendUpdatePowerState()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mReleaseProximityWakeLockOn:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4200(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v15

    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendDelayScreenOnStateAfterEndCall(I)V

    .end local v2    # "gravity":F
    .end local v9    # "x":F
    .end local v10    # "xAngle":I
    .end local v11    # "y":F
    .end local v12    # "yAngle":I
    .end local v13    # "z":F
    .end local v14    # "zAngle":I
    :cond_f
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGyroSensorEnabled:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$2400(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v15}, Landroid/hardware/Sensor;->getType()I

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x0

    aget v3, v15, v16

    .local v3, "gyroX":F
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x1

    aget v4, v15, v16

    .local v4, "gyroY":F
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x2

    aget v5, v15, v16

    .local v5, "gyroZ":F
    mul-float v15, v3, v3

    mul-float v16, v4, v4

    add-float v15, v15, v16

    mul-float v16, v5, v5

    add-float v15, v15, v16

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    double-to-float v8, v15

    .local v8, "omegaMagnitude":F
    # getter for: Lcom/android/server/power/HtcAngleDetector;->omegaMagnitudeBuffer:[F
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5300()[F

    move-result-object v15

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5400()I

    move-result v16

    aput v8, v15, v16

    # getter for: Lcom/android/server/power/HtcAngleDetector;->gyroXBuffer:[F
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5500()[F

    move-result-object v15

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5400()I

    move-result v16

    aput v3, v15, v16

    # getter for: Lcom/android/server/power/HtcAngleDetector;->gyroYBuffer:[F
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5600()[F

    move-result-object v15

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5400()I

    move-result v16

    aput v4, v15, v16

    # getter for: Lcom/android/server/power/HtcAngleDetector;->gyroZBuffer:[F
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5700()[F

    move-result-object v15

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5400()I

    move-result v16

    aput v5, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->BUFFER_DEBUG_SWITCH:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$2000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_16

    const-string v15, "HtcAngleDetector"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "BufferMech,  gyroBuffer: gyroX, gyroY, gyroZ, omegaMagnitude, pointer = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5400()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    const/16 v15, 0xa

    if-ge v6, v15, :cond_16

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5400()I

    move-result v15

    sub-int v7, v15, v6

    .restart local v7    # "j":I
    if-ltz v7, :cond_15

    const-string v15, "HtcAngleDetector"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "BufferMech, ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    # getter for: Lcom/android/server/power/HtcAngleDetector;->gyroXBuffer:[F
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5500()[F

    move-result-object v17

    aget v17, v17, v7

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    # getter for: Lcom/android/server/power/HtcAngleDetector;->gyroYBuffer:[F
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5600()[F

    move-result-object v17

    aget v17, v17, v7

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    # getter for: Lcom/android/server/power/HtcAngleDetector;->gyroZBuffer:[F
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5700()[F

    move-result-object v17

    aget v17, v17, v7

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    # getter for: Lcom/android/server/power/HtcAngleDetector;->omegaMagnitudeBuffer:[F
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5300()[F

    move-result-object v17

    aget v17, v17, v7

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .end local v3    # "gyroX":F
    .end local v4    # "gyroY":F
    .end local v5    # "gyroZ":F
    .end local v6    # "i":I
    .end local v7    # "j":I
    .end local v8    # "omegaMagnitude":F
    .restart local v2    # "gravity":F
    .restart local v9    # "x":F
    .restart local v10    # "xAngle":I
    .restart local v11    # "y":F
    .restart local v12    # "yAngle":I
    .restart local v13    # "z":F
    .restart local v14    # "zAngle":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isTalking(III)Z
    invoke-static {v15, v10, v12, v14}, Lcom/android/server/power/HtcAngleDetector;->access$2600(Lcom/android/server/power/HtcAngleDetector;III)Z

    move-result v15

    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$2800(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4900(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-nez v15, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsPickupInTalking:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$2500(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-nez v15, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # operator++ for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4508(Lcom/android/server/power/HtcAngleDetector;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3800(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-nez v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4500(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$5000(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_11

    const-string v15, "HtcAngleDetector"

    const-string v16, "mGSL.onSC: talking detected. turning off."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3100(Lcom/android/server/power/HtcAngleDetector;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4502(Lcom/android/server/power/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3802(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4602(Lcom/android/server/power/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3702(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendUpdatePowerState()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsGyroMoveTimeout:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$5102(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$1000(Lcom/android/server/power/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/power/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$5200(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$1000(Lcom/android/server/power/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/power/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$5200(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v16

    const-wide/16 v17, 0x1f4

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4600(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v15

    if-nez v15, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3700(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-nez v15, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4500(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v15

    if-nez v15, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3800(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_14

    :cond_13
    const-string v15, "HtcAngleDetector"

    const-string v16, "mGSL.onSC: reset talking/reading counter and flag."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4602(Lcom/android/server/power/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4502(Lcom/android/server/power/HtcAngleDetector;I)I

    goto/16 :goto_3

    .end local v2    # "gravity":F
    .end local v9    # "x":F
    .end local v10    # "xAngle":I
    .end local v11    # "y":F
    .end local v12    # "yAngle":I
    .end local v13    # "z":F
    .end local v14    # "zAngle":I
    .restart local v3    # "gyroX":F
    .restart local v4    # "gyroY":F
    .restart local v5    # "gyroZ":F
    .restart local v6    # "i":I
    .restart local v7    # "j":I
    .restart local v8    # "omegaMagnitude":F
    :cond_15
    const-string v15, "HtcAngleDetector"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "BufferMech, ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    # getter for: Lcom/android/server/power/HtcAngleDetector;->gyroXBuffer:[F
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5500()[F

    move-result-object v17

    add-int/lit8 v18, v7, 0xa

    aget v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    # getter for: Lcom/android/server/power/HtcAngleDetector;->gyroYBuffer:[F
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5600()[F

    move-result-object v17

    add-int/lit8 v18, v7, 0xa

    aget v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    # getter for: Lcom/android/server/power/HtcAngleDetector;->gyroZBuffer:[F
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5700()[F

    move-result-object v17

    add-int/lit8 v18, v7, 0xa

    aget v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    # getter for: Lcom/android/server/power/HtcAngleDetector;->omegaMagnitudeBuffer:[F
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5300()[F

    move-result-object v17

    add-int/lit8 v18, v7, 0xa

    aget v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .end local v6    # "i":I
    .end local v7    # "j":I
    :cond_16
    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5400()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    rem-int/lit8 v15, v15, 0xa

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$5402(I)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsGyroMoveTimeout:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$5100(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mInitCompleted:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$2300(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsCmpLastAngleTimeout:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4400(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_17

    const-string v15, "HtcAngleDetector"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mGyro.onSC:, M="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", x="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", y="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", z="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", GyroAwake="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/power/HtcAngleDetector;->access$4900(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", screen="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/power/HtcAngleDetector;->access$2800(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", PickupInTalking="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsPickupInTalking:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/power/HtcAngleDetector;->access$2500(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsTimeoutInReading:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$5800(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_1b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isGyroShakeAwake()Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$5900(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_1b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$2800(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-nez v15, :cond_1b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3400(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_18

    const-string v15, "HtcAngleDetector"

    const-string v16, "mGyro.onSC: Gyro shaking detected. turning on."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3100(Lcom/android/server/power/HtcAngleDetector;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3400(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v15

    if-nez v15, :cond_19

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsPsensorNear:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3502(Lcom/android/server/power/HtcAngleDetector;Z)Z

    :cond_19
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4602(Lcom/android/server/power/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3702(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4502(Lcom/android/server/power/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3802(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4902(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3900(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v16

    # invokes: Lcom/android/server/power/HtcAngleDetector;->setScreenTimeout(I)V
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4000(Lcom/android/server/power/HtcAngleDetector;I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendUpdatePowerState()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mReleaseProximityWakeLockOn:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4200(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_1a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v15

    if-eqz v15, :cond_1a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendDelayScreenOnStateAfterEndCall(I)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsGyroMoveTimeout:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$5102(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$1000(Lcom/android/server/power/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/power/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$5200(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$1000(Lcom/android/server/power/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/power/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$5200(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v16

    const-wide/16 v17, 0x3e8

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$2800(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-nez v15, :cond_1f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isGyroAwakeMove()Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$6000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_1f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3400(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsTimeoutInReading:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$5800(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-nez v15, :cond_1f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_xAngle:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$1100(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_yAngle:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/power/HtcAngleDetector;->access$1200(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_zAngle:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/power/HtcAngleDetector;->access$1300(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v18

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isSameAngle(III)Z
    invoke-static/range {v15 .. v18}, Lcom/android/server/power/HtcAngleDetector;->access$6100(Lcom/android/server/power/HtcAngleDetector;III)Z

    move-result v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_1c

    const-string v15, "HtcAngleDetector"

    const-string v16, "mGyro.onSC: Gyro awake. turning on."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3100(Lcom/android/server/power/HtcAngleDetector;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3400(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v15

    if-nez v15, :cond_1d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsPsensorNear:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3502(Lcom/android/server/power/HtcAngleDetector;Z)Z

    :cond_1d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4602(Lcom/android/server/power/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3702(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4502(Lcom/android/server/power/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3802(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4902(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3900(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v16

    # invokes: Lcom/android/server/power/HtcAngleDetector;->setScreenTimeout(I)V
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4000(Lcom/android/server/power/HtcAngleDetector;I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendUpdatePowerState()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mReleaseProximityWakeLockOn:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4200(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_1e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v15

    if-eqz v15, :cond_1e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendDelayScreenOnStateAfterEndCall(I)V

    :cond_1e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsGyroMoveTimeout:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$5102(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$1000(Lcom/android/server/power/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/power/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$5200(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$1000(Lcom/android/server/power/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/power/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$5200(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v16

    const-wide/16 v17, 0x1f4

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4900(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_21

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsTimeoutInReading:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$5800(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-nez v15, :cond_21

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsPickupInTalking:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$2500(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-nez v15, :cond_21

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$2800(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_21

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isGyroTalkingMove()Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$6200(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_xAngle:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$1100(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_yAngle:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/power/HtcAngleDetector;->access$1200(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_zAngle:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/power/HtcAngleDetector;->access$1300(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v18

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isReading(III)Z
    invoke-static/range {v15 .. v18}, Lcom/android/server/power/HtcAngleDetector;->access$2900(Lcom/android/server/power/HtcAngleDetector;III)Z

    move-result v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_20

    const-string v15, "HtcAngleDetector"

    const-string v16, "mGyro.onSC: Gyro talking. turning off."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3100(Lcom/android/server/power/HtcAngleDetector;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4502(Lcom/android/server/power/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3802(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4602(Lcom/android/server/power/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3702(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendUpdatePowerState()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4902(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsGyroMoveTimeout:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$5102(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$1000(Lcom/android/server/power/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/power/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$5200(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$1000(Lcom/android/server/power/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/power/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$5200(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v16

    const-wide/16 v17, 0x1f4

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsPickupInTalking:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$2500(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$2800(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isGyroTalkingMove()Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$6200(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_xAngle:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$1100(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_yAngle:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/power/HtcAngleDetector;->access$1200(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_zAngle:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/power/HtcAngleDetector;->access$1300(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v18

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isReading(III)Z
    invoke-static/range {v15 .. v18}, Lcom/android/server/power/HtcAngleDetector;->access$2900(Lcom/android/server/power/HtcAngleDetector;III)Z

    move-result v15

    if-eqz v15, :cond_22

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3702(Lcom/android/server/power/HtcAngleDetector;Z)Z

    goto/16 :goto_0

    :cond_22
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3700(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_23

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_xAngle:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$1100(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_yAngle:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/power/HtcAngleDetector;->access$1200(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mOld_zAngle:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/power/HtcAngleDetector;->access$1300(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v18

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isTalking(III)Z
    invoke-static/range {v15 .. v18}, Lcom/android/server/power/HtcAngleDetector;->access$2600(Lcom/android/server/power/HtcAngleDetector;III)Z

    move-result v15

    if-eqz v15, :cond_23

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3702(Lcom/android/server/power/HtcAngleDetector;Z)Z

    goto/16 :goto_0

    :cond_23
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3700(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_24

    const-string v15, "HtcAngleDetector"

    const-string v16, "mGyro.onSC: Gyro talking. turning off.(mIsPickupInTalking)"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3100(Lcom/android/server/power/HtcAngleDetector;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4502(Lcom/android/server/power/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3802(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4602(Lcom/android/server/power/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3702(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendUpdatePowerState()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4902(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsGyroMoveTimeout:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$5102(Lcom/android/server/power/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$1000(Lcom/android/server/power/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/power/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$5200(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$1000(Lcom/android/server/power/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/power/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$5200(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v16

    const-wide/16 v17, 0x1f4

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
