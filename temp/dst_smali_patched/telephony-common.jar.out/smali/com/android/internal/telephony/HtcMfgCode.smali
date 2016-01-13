.class public Lcom/android/internal/telephony/HtcMfgCode;
.super Landroid/os/Handler;
.source "HtcMfgCode.java"


# static fields
.field private static ENABLED:Z = false

.field private static final EVENT_HTC_GET_DEVICE_MFG_CODE_IN_NV:I = 0x2

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0x1

.field private static LOG_TAG:Ljava/lang/String;

.field private static MFG_CODE_PROPERTY:Ljava/lang/String;


# instance fields
.field private mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private mDeviceMfgCodeRequested:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "HtcMfgCode"

    sput-object v0, Lcom/android/internal/telephony/HtcMfgCode;->LOG_TAG:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/HtcMfgCode;->MFG_CODE_PROPERTY:Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/telephony/HtcMfgCode;->htcDmCommandForMfgCode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/HtcMfgCode;->ENABLED:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p1, "cm"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    sget-boolean v0, Lcom/android/internal/telephony/HtcMfgCode;->ENABLED:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcMfgCode;->getMfgCode(Lcom/android/internal/telephony/CommandsInterface;)V

    :cond_0
    return-void
.end method

.method private getMfgCode(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .param p1, "cm"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/HtcMfgCode;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v0, p0, Lcom/android/internal/telephony/HtcMfgCode;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private static htcDmCommandForMfgCode()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "C8F88D00"

    return-object v0
.end method

.method private htcParseMfgCode(Landroid/os/AsyncResult;)Ljava/lang/Integer;
    .locals 18
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .local v11, "resultCode":Ljava/lang/Integer;
    const/4 v1, 0x0

    .local v1, "deviceMfgCode":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v15, :cond_9

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v15, :cond_e

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/android/internal/telephony/HtcMfgCode;->htcDmCommandForMfgCode()Ljava/lang/String;

    move-result-object v2

    .local v2, "dmCmd":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_c

    const/4 v15, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v1, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    shr-int/lit8 v15, v15, 0x1

    new-array v3, v15, [I

    .local v3, "hexConverter":[I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    array-length v15, v3

    if-ge v4, v15, :cond_2

    add-int/lit8 v14, v4, 0x1

    .local v14, "valueEndPos":I
    array-length v15, v3

    if-ge v14, v15, :cond_1

    mul-int/lit8 v14, v14, 0x2

    :goto_1
    const/4 v13, 0x0

    .local v13, "value":I
    mul-int/lit8 v15, v4, 0x2

    :try_start_0
    invoke-virtual {v1, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    :goto_2
    add-int/lit8 v15, v4, 0x1

    mul-int/lit8 v15, v15, 0x2

    if-ge v14, v15, :cond_0

    shl-int/lit8 v15, v13, 0x4

    and-int/lit16 v13, v15, 0xf0

    :cond_0
    aput v13, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v13    # "value":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    goto :goto_1

    .end local v14    # "valueEndPos":I
    :cond_2
    const/4 v10, 0x0

    .local v10, "possibleTextLen":I
    :goto_3
    array-length v15, v3

    if-ge v10, v15, :cond_3

    const/16 v15, 0x20

    aget v16, v3, v10

    move/from16 v0, v16

    if-gt v15, v0, :cond_3

    aget v15, v3, v10

    const/16 v16, 0x7e

    move/from16 v0, v16

    if-gt v15, v0, :cond_3

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    const/4 v15, 0x1

    if-lt v10, v15, :cond_a

    const/4 v9, 0x0

    .local v9, "possibleRemainingLen":I
    :goto_4
    if-ge v10, v9, :cond_4

    array-length v15, v3

    sub-int/2addr v15, v9

    add-int/lit8 v15, v15, -0x1

    aget v15, v3, v15

    if-nez v15, :cond_4

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    array-length v15, v3

    sub-int/2addr v15, v10

    sub-int v8, v15, v9

    .local v8, "possibleDigitsLen":I
    const/4 v15, 0x5

    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    .local v6, "lenText":I
    sub-int v15, v10, v6

    add-int/2addr v8, v15

    const/4 v15, 0x3

    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    move-result v5

    .local v5, "lenDigits":I
    mul-int/lit8 v15, v5, 0x2

    add-int/2addr v15, v6

    new-array v7, v15, [B

    .local v7, "mfgCode":[B
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v6, :cond_5

    aget v15, v3, v4

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v5, :cond_8

    add-int v15, v6, v4

    aget v15, v3, v15

    and-int/lit16 v15, v15, 0xf0

    shr-int/lit8 v15, v15, 0x4

    int-to-byte v12, v15

    .local v12, "tmpCode":B
    const/16 v15, 0xa

    if-ge v12, v15, :cond_6

    add-int/lit8 v15, v12, 0x30

    int-to-byte v12, v15

    :goto_7
    mul-int/lit8 v15, v4, 0x2

    add-int/2addr v15, v6

    aput-byte v12, v7, v15

    add-int v15, v6, v4

    aget v15, v3, v15

    and-int/lit8 v15, v15, 0xf

    int-to-byte v12, v15

    const/16 v15, 0xa

    if-ge v12, v15, :cond_7

    add-int/lit8 v15, v12, 0x30

    int-to-byte v12, v15

    :goto_8
    mul-int/lit8 v15, v4, 0x2

    add-int/2addr v15, v6

    add-int/lit8 v15, v15, 0x1

    aput-byte v12, v7, v15

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v15, v12, -0xa

    add-int/lit8 v15, v15, 0x41

    int-to-byte v12, v15

    goto :goto_7

    :cond_7
    add-int/lit8 v15, v12, -0xa

    add-int/lit8 v15, v15, 0x41

    int-to-byte v12, v15

    goto :goto_8

    .end local v12    # "tmpCode":B
    :cond_8
    const-string v15, "persist.radio.htc_mfg_code"

    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .end local v2    # "dmCmd":Ljava/lang/String;
    .end local v3    # "hexConverter":[I
    .end local v4    # "index":I
    .end local v5    # "lenDigits":I
    .end local v6    # "lenText":I
    .end local v7    # "mfgCode":[B
    .end local v8    # "possibleDigitsLen":I
    .end local v9    # "possibleRemainingLen":I
    .end local v10    # "possibleTextLen":I
    :cond_9
    :goto_9
    sget-object v15, Lcom/android/internal/telephony/HtcMfgCode;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")DeviceMfgCode = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    .restart local v2    # "dmCmd":Ljava/lang/String;
    .restart local v3    # "hexConverter":[I
    .restart local v4    # "index":I
    .restart local v10    # "possibleTextLen":I
    :cond_a
    const/4 v15, 0x7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_9

    .end local v3    # "hexConverter":[I
    .end local v4    # "index":I
    .end local v10    # "possibleTextLen":I
    :cond_b
    const/4 v15, 0x6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_9

    :cond_c
    const/4 v15, 0x5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_9

    .end local v2    # "dmCmd":Ljava/lang/String;
    :cond_d
    const/4 v15, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_9

    :cond_e
    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_9

    .restart local v2    # "dmCmd":Ljava/lang/String;
    .restart local v3    # "hexConverter":[I
    .restart local v4    # "index":I
    .restart local v13    # "value":I
    .restart local v14    # "valueEndPos":I
    :catch_0
    move-exception v15

    goto/16 :goto_2
.end method

.method private htcRequestMfgCode()Ljava/lang/Integer;
    .locals 3

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/HtcMfgCode;->htcDmCommandForMfgCode()Ljava/lang/String;

    move-result-object v0

    .local v0, "dmCmd":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/HtcMfgCode;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/HtcMfgCode;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/HtcMfgCode;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/HtcMfgCode;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcMfgCode;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/android/internal/telephony/HtcMfgCode;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcMfgCode;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .local v0, "currentRadioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v1, p0, Lcom/android/internal/telephony/HtcMfgCode;->mDeviceMfgCodeRequested:Ljava/lang/Integer;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/HtcMfgCode;->htcRequestMfgCode()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcMfgCode;->mDeviceMfgCodeRequested:Ljava/lang/Integer;

    goto :goto_0

    .end local v0    # "currentRadioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HtcMfgCode;->htcParseMfgCode(Landroid/os/AsyncResult;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcMfgCode;->mDeviceMfgCodeRequested:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcMfgCode;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/HtcMfgCode;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
