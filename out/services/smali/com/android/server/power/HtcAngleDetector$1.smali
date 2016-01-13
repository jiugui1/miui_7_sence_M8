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
    .line 813
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
    .line 1202
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 20
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 816
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGSensorEnabled:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$700(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 817
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v15}, Landroid/hardware/Sensor;->getType()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 818
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x0

    aget v9, v15, v16

    .line 819
    .local v9, "x":F
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x1

    aget v11, v15, v16

    .line 820
    .local v11, "y":F
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x2

    aget v13, v15, v16

    .line 822
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

    .line 826
    .local v2, "gravity":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsGSensorTimeout:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$800(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1197
    .end local v2    # "gravity":F
    .end local v9    # "x":F
    .end local v11    # "y":F
    .end local v13    # "z":F
    :cond_0
    :goto_0
    return-void

    .line 829
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

    .line 830
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

    .line 831
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

    .line 834
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

    .line 835
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

    .line 836
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

    .line 840
    .local v14, "zAngle":I
    # getter for: Lcom/android/server/power/HtcAngleDetector;->gravityBuffer:[F
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1400()[F

    move-result-object v15

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1500()I

    move-result v16

    aput v2, v15, v16

    .line 841
    # getter for: Lcom/android/server/power/HtcAngleDetector;->xAngleBuffer:[I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1600()[I

    move-result-object v15

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1500()I

    move-result v16

    aput v10, v15, v16

    .line 842
    # getter for: Lcom/android/server/power/HtcAngleDetector;->yAngleBuffer:[I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1700()[I

    move-result-object v15

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1500()I

    move-result v16

    aput v12, v15, v16

    .line 843
    # getter for: Lcom/android/server/power/HtcAngleDetector;->zAngleBuffer:[I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1800()[I

    move-result-object v15

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1500()I

    move-result v16

    aput v14, v15, v16

    .line 844
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

    .line 846
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->BUFFER_DEBUG_SWITCH:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$2000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 848
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

    .line 850
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/16 v15, 0xa

    if-ge v6, v15, :cond_3

    .line 851
    # getter for: Lcom/android/server/power/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$1500()I

    move-result v15

    sub-int v7, v15, v6

    .line 852
    .local v7, "j":I
    if-ltz v7, :cond_2

    .line 853
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

    .line 850
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 859
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

    .line 867
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

    .line 870
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

    .line 871
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

    .line 872
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsPickupInTalking:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$2500(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 873
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

    .line 874
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

    .line 879
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

    .line 880
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isReading(III)Z
    invoke-static {v15, v10, v12, v14}, Lcom/android/server/power/HtcAngleDetector;->access$2900(Lcom/android/server/power/HtcAngleDetector;III)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 881
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 882
    const-string v15, "HtcAngleDetector"

    const-string v16, "mGSL.onSC: screen off in reading at start."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3100(Lcom/android/server/power/HtcAngleDetector;)V

    .line 885
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isSamePose(III)Z
    invoke-static {v15, v10, v12, v14}, Lcom/android/server/power/HtcAngleDetector;->access$3200(Lcom/android/server/power/HtcAngleDetector;III)Z

    .line 889
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mInitCompleted:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$2302(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 893
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

    .line 894
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3100(Lcom/android/server/power/HtcAngleDetector;)V

    .line 896
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3400(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v15

    if-nez v15, :cond_7

    .line 897
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsPsensorNear:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3502(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 899
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsShakeAwake:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3602(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 900
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3702(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 901
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3802(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 903
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

    .line 904
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendUpdatePowerState()V

    .line 906
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

    .line 907
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendDelayScreenOnStateAfterEndCall(I)V

    .line 911
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

    .line 912
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

    .line 918
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

    .line 919
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4502(Lcom/android/server/power/HtcAngleDetector;I)I

    .line 920
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4602(Lcom/android/server/power/HtcAngleDetector;I)I

    goto/16 :goto_0

    .line 925
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 926
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

    .line 960
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

    .line 961
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # operator++ for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4608(Lcom/android/server/power/HtcAngleDetector;)I

    .line 963
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

    .line 964
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 965
    const-string v15, "HtcAngleDetector"

    const-string v16, "mGSL.onSC: reading detected. turning on."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3100(Lcom/android/server/power/HtcAngleDetector;)V

    .line 969
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3400(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v15

    if-nez v15, :cond_e

    .line 970
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsPsensorNear:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3502(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 972
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4602(Lcom/android/server/power/HtcAngleDetector;I)I

    .line 973
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3702(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 975
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4502(Lcom/android/server/power/HtcAngleDetector;I)I

    .line 976
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3802(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 978
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4902(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 980
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

    .line 982
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendUpdatePowerState()V

    .line 985
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

    .line 986
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendDelayScreenOnStateAfterEndCall(I)V

    .line 1026
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

    .line 1028
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v15}, Landroid/hardware/Sensor;->getType()I

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1029
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x0

    aget v3, v15, v16

    .line 1030
    .local v3, "gyroX":F
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x1

    aget v4, v15, v16

    .line 1031
    .local v4, "gyroY":F
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x2

    aget v5, v15, v16

    .line 1033
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

    .line 1036
    .local v8, "omegaMagnitude":F
    # getter for: Lcom/android/server/power/HtcAngleDetector;->omegaMagnitudeBuffer:[F
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5300()[F

    move-result-object v15

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5400()I

    move-result v16

    aput v8, v15, v16

    .line 1037
    # getter for: Lcom/android/server/power/HtcAngleDetector;->gyroXBuffer:[F
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5500()[F

    move-result-object v15

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5400()I

    move-result v16

    aput v3, v15, v16

    .line 1038
    # getter for: Lcom/android/server/power/HtcAngleDetector;->gyroYBuffer:[F
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5600()[F

    move-result-object v15

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5400()I

    move-result v16

    aput v4, v15, v16

    .line 1039
    # getter for: Lcom/android/server/power/HtcAngleDetector;->gyroZBuffer:[F
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5700()[F

    move-result-object v15

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5400()I

    move-result v16

    aput v5, v15, v16

    .line 1041
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->BUFFER_DEBUG_SWITCH:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$2000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 1043
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

    .line 1045
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    const/16 v15, 0xa

    if-ge v6, v15, :cond_16

    .line 1046
    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/power/HtcAngleDetector;->access$5400()I

    move-result v15

    sub-int v7, v15, v6

    .line 1047
    .restart local v7    # "j":I
    if-ltz v7, :cond_15

    .line 1048
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

    .line 1045
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 992
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

    .line 993
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # operator++ for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4508(Lcom/android/server/power/HtcAngleDetector;)I

    .line 994
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

    .line 995
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 996
    const-string v15, "HtcAngleDetector"

    const-string v16, "mGSL.onSC: talking detected. turning off."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3100(Lcom/android/server/power/HtcAngleDetector;)V

    .line 1000
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4502(Lcom/android/server/power/HtcAngleDetector;I)I

    .line 1001
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3802(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 1003
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4602(Lcom/android/server/power/HtcAngleDetector;I)I

    .line 1004
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3702(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 1006
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendUpdatePowerState()V

    .line 1008
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsGyroMoveTimeout:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$5102(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 1009
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

    .line 1010
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

    .line 1014
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

    .line 1015
    :cond_13
    const-string v15, "HtcAngleDetector"

    const-string v16, "mGSL.onSC: reset talking/reading counter and flag."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4602(Lcom/android/server/power/HtcAngleDetector;I)I

    .line 1020
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4502(Lcom/android/server/power/HtcAngleDetector;I)I

    goto/16 :goto_3

    .line 1053
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

    .line 1060
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

    .line 1064
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

    .line 1067
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_17

    .line 1068
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

    .line 1074
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

    .line 1075
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_18

    .line 1076
    const-string v15, "HtcAngleDetector"

    const-string v16, "mGyro.onSC: Gyro shaking detected. turning on."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_18
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3100(Lcom/android/server/power/HtcAngleDetector;)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3400(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v15

    if-nez v15, :cond_19

    .line 1081
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsPsensorNear:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3502(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 1083
    :cond_19
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4602(Lcom/android/server/power/HtcAngleDetector;I)I

    .line 1084
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3702(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 1086
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4502(Lcom/android/server/power/HtcAngleDetector;I)I

    .line 1087
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3802(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 1089
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4902(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 1091
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

    .line 1093
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendUpdatePowerState()V

    .line 1095
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

    .line 1096
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendDelayScreenOnStateAfterEndCall(I)V

    .line 1100
    :cond_1a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsGyroMoveTimeout:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$5102(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 1101
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

    .line 1102
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

    .line 1110
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

    .line 1111
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

    .line 1112
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_1c

    .line 1113
    const-string v15, "HtcAngleDetector"

    const-string v16, "mGyro.onSC: Gyro awake. turning on."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_1c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3100(Lcom/android/server/power/HtcAngleDetector;)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3400(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v15

    if-nez v15, :cond_1d

    .line 1118
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsPsensorNear:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3502(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 1120
    :cond_1d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4602(Lcom/android/server/power/HtcAngleDetector;I)I

    .line 1121
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3702(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 1123
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4502(Lcom/android/server/power/HtcAngleDetector;I)I

    .line 1124
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3802(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 1126
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4902(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 1128
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

    .line 1130
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendUpdatePowerState()V

    .line 1132
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

    .line 1133
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendDelayScreenOnStateAfterEndCall(I)V

    .line 1137
    :cond_1e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsGyroMoveTimeout:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$5102(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 1138
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

    .line 1139
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

    .line 1143
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

    .line 1144
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

    .line 1145
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_20

    .line 1146
    const-string v15, "HtcAngleDetector"

    const-string v16, "mGyro.onSC: Gyro talking. turning off."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_20
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3100(Lcom/android/server/power/HtcAngleDetector;)V

    .line 1150
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4502(Lcom/android/server/power/HtcAngleDetector;I)I

    .line 1151
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3802(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 1153
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4602(Lcom/android/server/power/HtcAngleDetector;I)I

    .line 1154
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3702(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 1156
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendUpdatePowerState()V

    .line 1158
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4902(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 1159
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsGyroMoveTimeout:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$5102(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 1160
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

    .line 1161
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

    .line 1166
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

    .line 1167
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

    .line 1168
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3702(Lcom/android/server/power/HtcAngleDetector;Z)Z

    goto/16 :goto_0

    .line 1170
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

    .line 1171
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3702(Lcom/android/server/power/HtcAngleDetector;Z)Z

    goto/16 :goto_0

    .line 1173
    :cond_23
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3700(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 1174
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3000(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v15

    if-eqz v15, :cond_24

    .line 1175
    const-string v15, "HtcAngleDetector"

    const-string v16, "mGyro.onSC: Gyro talking. turning off.(mIsPickupInTalking)"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    :cond_24
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$3100(Lcom/android/server/power/HtcAngleDetector;)V

    .line 1179
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4502(Lcom/android/server/power/HtcAngleDetector;I)I

    .line 1180
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3802(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 1182
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4602(Lcom/android/server/power/HtcAngleDetector;I)I

    .line 1183
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$3702(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 1185
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v15}, Lcom/android/server/power/HtcAngleDetector;->access$4100(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendUpdatePowerState()V

    .line 1187
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$4902(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 1188
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/16 v16, 0x1

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsGyroMoveTimeout:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/power/HtcAngleDetector;->access$5102(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 1189
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

    .line 1190
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
