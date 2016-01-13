.class public Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;
.super Ljava/lang/Object;
.source "HtcCdmaNitz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcCdmaNitz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "infoBaseStation"
.end annotation


# instance fields
.field baseStationId:I

.field baseStationLatitude:I

.field baseStationLongitude:I

.field infoReceivedDate:Ljava/util/Date;

.field infoReceivedTime:J

.field networkId:I

.field serviceState:I

.field systemId:I

.field updateFrom:I


# direct methods
.method public constructor <init>(JLjava/util/Date;IIIII)V
    .locals 10
    .param p1, "infoReceivedTime"    # J
    .param p3, "infoReceivedDate"    # Ljava/util/Date;
    .param p4, "baseStationId"    # I
    .param p5, "baseStationLatitude"    # I
    .param p6, "baseStationLongitude"    # I
    .param p7, "systemId"    # I
    .param p8, "networkId"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, -0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->infoBaseStationSetup(JLjava/util/Date;IIIIII)V

    return-void
.end method

.method public constructor <init>(JLjava/util/Date;IIIIII)V
    .locals 0
    .param p1, "infoReceivedTime"    # J
    .param p3, "infoReceivedDate"    # Ljava/util/Date;
    .param p4, "serviceState"    # I
    .param p5, "baseStationId"    # I
    .param p6, "baseStationLatitude"    # I
    .param p7, "baseStationLongitude"    # I
    .param p8, "systemId"    # I
    .param p9, "networkId"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct/range {p0 .. p9}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->infoBaseStationSetup(JLjava/util/Date;IIIIII)V

    return-void
.end method

.method private infoBaseStationSetup(JLjava/util/Date;IIIIII)V
    .locals 0
    .param p1, "infoReceivedTime"    # J
    .param p3, "infoReceivedDate"    # Ljava/util/Date;
    .param p4, "serviceState"    # I
    .param p5, "baseStationId"    # I
    .param p6, "baseStationLatitude"    # I
    .param p7, "baseStationLongitude"    # I
    .param p8, "systemId"    # I
    .param p9, "networkId"    # I

    .prologue
    iput-wide p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->infoReceivedTime:J

    iput-object p3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->infoReceivedDate:Ljava/util/Date;

    iput p4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->serviceState:I

    iput p5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->baseStationId:I

    iput p6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->baseStationLatitude:I

    iput p7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->baseStationLongitude:I

    iput p8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->systemId:I

    iput p9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->networkId:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const v8, 0x7fffffff

    const/16 v7, 0x2d

    const/4 v6, 0x0

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->infoReceivedTime:J

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    long-to-int v0, v2

    .local v0, "antiSpoofing":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, "strBuf":Ljava/lang/StringBuilder;
    # getter for: Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->CHAR_SQUARE_BRACKET:[C
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$000()[C

    move-result-object v2

    aget-char v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->infoReceivedDate:Ljava/util/Date;

    # invokes: Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->logShortDate(Ljava/util/Date;)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$100(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->CHAR_SLASH:[C
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$200()[C

    move-result-object v2

    aget-char v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->infoReceivedTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->CHAR_SQUARE_BRACKET:[C
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$000()[C

    move-result-object v2

    const/4 v3, 0x1

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->updateFrom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->serviceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->CHAR_SLASH:[C
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$200()[C

    move-result-object v2

    aget-char v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->baseStationId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->CHAR_SLASH:[C
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$200()[C

    move-result-object v2

    aget-char v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->systemId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->CHAR_SLASH:[C
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$200()[C

    move-result-object v2

    aget-char v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->CHAR_SLASH:[C
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$200()[C

    move-result-object v2

    aget-char v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->baseStationLatitude:I

    if-ne v2, v8, :cond_0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    # getter for: Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->CHAR_SLASH:[C
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$200()[C

    move-result-object v2

    aget-char v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->baseStationLongitude:I

    if-ne v2, v8, :cond_1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->baseStationLatitude:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->baseStationLongitude:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
