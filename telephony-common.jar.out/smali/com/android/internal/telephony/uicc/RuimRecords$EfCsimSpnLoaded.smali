.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimSpnLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/RuimRecords$1;

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    const-string v0, "EF_CSIM_SPN"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 13
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/16 v12, 0xff

    const/4 v8, 0x1

    const/16 v4, 0x20

    const/4 v9, 0x0

    .line 513
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    .line 514
    .local v0, "data":[B
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CSIM_SPN="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 517
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    aget-byte v10, v0, v9

    and-int/lit16 v10, v10, 0xff

    iput v10, v7, Lcom/android/internal/telephony/uicc/RuimRecords;->spnDisplayCondition:I

    .line 520
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    aget-byte v7, v0, v9

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    move v7, v8

    :goto_0
    iput-boolean v7, v10, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    .line 522
    aget-byte v2, v0, v8

    .line 523
    .local v2, "encoding":I
    const/4 v7, 0x2

    aget-byte v3, v0, v7

    .line 524
    .local v3, "language":I
    new-array v6, v4, [B

    .line 525
    .local v6, "spnData":[B
    array-length v7, v0

    add-int/lit8 v7, v7, -0x3

    if-ge v7, v4, :cond_0

    array-length v7, v0

    add-int/lit8 v4, v7, -0x3

    .line 526
    .local v4, "len":I
    :cond_0
    const/4 v7, 0x3

    invoke-static {v0, v7, v6, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    const/4 v5, 0x0

    .local v5, "numBytes":I
    :goto_1
    array-length v7, v6

    if-ge v5, v7, :cond_1

    .line 530
    aget-byte v7, v6, v5

    and-int/lit16 v7, v7, 0xff

    if-ne v7, v12, :cond_4

    .line 533
    :cond_1
    if-nez v5, :cond_5

    .line 534
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v8, ""

    iput-object v8, v7, Lcom/android/internal/telephony/uicc/RuimRecords;->mSpn:Ljava/lang/String;

    .line 588
    :cond_2
    :goto_2
    return-void

    .end local v2    # "encoding":I
    .end local v3    # "language":I
    .end local v4    # "len":I
    .end local v5    # "numBytes":I
    .end local v6    # "spnData":[B
    :cond_3
    move v7, v9

    .line 520
    goto :goto_0

    .line 529
    .restart local v2    # "encoding":I
    .restart local v3    # "language":I
    .restart local v4    # "len":I
    .restart local v5    # "numBytes":I
    .restart local v6    # "spnData":[B
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 538
    :cond_5
    packed-switch v2, :pswitch_data_0

    .line 563
    :pswitch_0
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v8, "SPN encoding not supported"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :cond_6
    :goto_3
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "spn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v9, v9, Lcom/android/internal/telephony/uicc/RuimRecords;->mSpn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 569
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "spnCondition="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-boolean v9, v9, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 573
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-boolean v7, v7, Lcom/android/internal/telephony/uicc/RuimRecords;->mIsControlledByIccCardProxy:Z

    if-nez v7, :cond_7

    .line 575
    const-string v7, "gsm.sim.operator.alpha"

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v8, v8, Lcom/android/internal/telephony/uicc/RuimRecords;->mSpn:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # invokes: Lcom/android/internal/telephony/uicc/RuimRecords;->isDualPhoneWithCdmaSupport()Z
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$400(Lcom/android/internal/telephony/uicc/RuimRecords;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 582
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v8, v8, Lcom/android/internal/telephony/uicc/RuimRecords;->mSpn:Ljava/lang/String;

    # invokes: Lcom/android/internal/telephony/uicc/RuimRecords;->setUimOperatorAlpha(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$500(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)V

    goto :goto_2

    .line 541
    :pswitch_1
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "ISO-8859-1"

    invoke-direct {v8, v6, v9, v5, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v8, v7, Lcom/android/internal/telephony/uicc/RuimRecords;->mSpn:Ljava/lang/String;

    .line 542
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v7, v7, Lcom/android/internal/telephony/uicc/RuimRecords;->mSpn:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 543
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v8, v8, Lcom/android/internal/telephony/uicc/RuimRecords;->mSpn:Ljava/lang/String;

    const/16 v9, 0xff

    # invokes: Lcom/android/internal/telephony/uicc/RuimRecords;->trimOffTrailingChars(Ljava/lang/String;C)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$200(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/telephony/uicc/RuimRecords;->mSpn:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 565
    :catch_0
    move-exception v1

    .line 566
    .local v1, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "spn decode error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 548
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "ISO-8859-1"

    invoke-direct {v8, v6, v9, v5, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v8, v7, Lcom/android/internal/telephony/uicc/RuimRecords;->mSpn:Ljava/lang/String;

    goto/16 :goto_3

    .line 552
    :pswitch_3
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const/4 v8, 0x0

    mul-int/lit8 v9, v5, 0x8

    div-int/lit8 v9, v9, 0x7

    invoke-static {v6, v8, v9}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/telephony/uicc/RuimRecords;->mSpn:Ljava/lang/String;

    goto/16 :goto_3

    .line 556
    :pswitch_4
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const/4 v9, 0x0

    # invokes: Lcom/android/internal/telephony/uicc/RuimRecords;->cdmaSpn7bitAsciiStringFieldToString([BII)Ljava/lang/String;
    invoke-static {v8, v6, v9, v5}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$300(Lcom/android/internal/telephony/uicc/RuimRecords;[BII)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/telephony/uicc/RuimRecords;->mSpn:Ljava/lang/String;

    goto/16 :goto_3

    .line 560
    :pswitch_5
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "utf-16"

    invoke-direct {v8, v6, v9, v5, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v8, v7, Lcom/android/internal/telephony/uicc/RuimRecords;->mSpn:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 538
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
