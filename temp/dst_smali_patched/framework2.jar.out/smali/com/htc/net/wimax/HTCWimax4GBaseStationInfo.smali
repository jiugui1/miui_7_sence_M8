.class public Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;
.super Lcom/htc/net/wimax/Wimax4GBaseStationInfo;
.source "HTCWimax4GBaseStationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bandId:I

.field private cinr1:I

.field private cinr3:I

.field private cinrCh0:F

.field private cinrCh0Dev:F

.field private cinrCh1:F

.field private cinrCh1Dev:F

.field private diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

.field private dlPermBase:I

.field private fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

.field private fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

.field private freqId:I

.field private rssiCh0:F

.field private rssiCh0Dev:F

.field private rssiCh1:F

.field private rssiCh1Dev:F

.field private uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

.field private ulPermBase:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$1;

    invoke-direct {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$1;-><init>()V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;-><init>()V

    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->freqId:I

    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_UNKNOW:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_UNKNOW:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_UNKNOW:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_UNKNOW:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->freqId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    return-void
.end method

.method public constructor <init>(Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;)V
    .locals 1
    .param p1, "bsInfo"    # Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;-><init>(Lcom/htc/net/wimax/Wimax4GBaseStationInfo;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->freqId:I

    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    iget-object v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iget-object v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iget-object v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iget-object v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    const/4 v0, 0x1

    invoke-super {p0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->clear()V

    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->freqId:I

    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_UNKNOW:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_UNKNOW:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_UNKNOW:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_UNKNOW:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    return-void
.end method

.method public getBandId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    return v0
.end method

.method public getCINR1()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    return v0
.end method

.method public getCINR3()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    return v0
.end method

.method public getCinrCh0()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    return v0
.end method

.method public getCinrCh0Dev()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    return v0
.end method

.method public getCinrCh1()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    return v0
.end method

.method public getCinrCh1Dev()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    return v0
.end method

.method public getDiuc()Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    return-object v0
.end method

.method public getDlPermBase()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    return v0
.end method

.method public getFecDlModulation()Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    return-object v0
.end method

.method public getFecUlModulation()Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    return-object v0
.end method

.method public getFreqId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->freqId:I

    return v0
.end method

.method public getMeanCINR()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr:I

    return v0
.end method

.method public getMeanRSSI()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssi:I

    return v0
.end method

.method public getRssiCh0()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    return v0
.end method

.method public getRssiCh0Dev()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    return v0
.end method

.method public getRssiCh1()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    return v0
.end method

.method public getRssiCh1Dev()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    return v0
.end method

.method public getUiuc()Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    return-object v0
.end method

.method public getUlPermBase()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-super {p0, p1}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->freqId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    return-void
.end method

.method public setBandId(I)V
    .locals 0
    .param p1, "bandId"    # I

    .prologue
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    return-void
.end method

.method public setCINR1(I)V
    .locals 0
    .param p1, "cinr1"    # I

    .prologue
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    return-void
.end method

.method public setCINR3(I)V
    .locals 0
    .param p1, "cinr3"    # I

    .prologue
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    return-void
.end method

.method public setCinrCh0(F)V
    .locals 0
    .param p1, "cinrCh0"    # F

    .prologue
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    return-void
.end method

.method public setCinrCh0Dev(F)V
    .locals 0
    .param p1, "cinrCh0Dev"    # F

    .prologue
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    return-void
.end method

.method public setCinrCh1(F)V
    .locals 0
    .param p1, "cinrCh1"    # F

    .prologue
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    return-void
.end method

.method public setCinrCh1Dev(F)V
    .locals 0
    .param p1, "cinrCh1Dev"    # F

    .prologue
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    return-void
.end method

.method public setDiuc(Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;)V
    .locals 0
    .param p1, "diuc"    # Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .prologue
    iput-object p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    return-void
.end method

.method public setDlPermBase(I)V
    .locals 0
    .param p1, "dlPermBase"    # I

    .prologue
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    return-void
.end method

.method public setFecDlModulation(Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;)V
    .locals 0
    .param p1, "fecDlModulation"    # Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .prologue
    iput-object p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    return-void
.end method

.method public setFecUlModulation(Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;)V
    .locals 0
    .param p1, "fecUlModulation"    # Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .prologue
    iput-object p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    return-void
.end method

.method public setFreqId(I)V
    .locals 0
    .param p1, "freqId"    # I

    .prologue
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->freqId:I

    return-void
.end method

.method public setRssiCh0(F)V
    .locals 0
    .param p1, "rssiCh0"    # F

    .prologue
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    return-void
.end method

.method public setRssiCh0Dev(F)V
    .locals 0
    .param p1, "rssiCh0Dev"    # F

    .prologue
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    return-void
.end method

.method public setRssiCh1(F)V
    .locals 0
    .param p1, "rssiCh1"    # F

    .prologue
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    return-void
.end method

.method public setRssiCh1Dev(F)V
    .locals 0
    .param p1, "rssiCh1Dev"    # F

    .prologue
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    return-void
.end method

.method public setUiuc(Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;)V
    .locals 0
    .param p1, "uiuc"    # Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .prologue
    iput-object p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    return-void
.end method

.method public setUlPermBase(I)V
    .locals 0
    .param p1, "ulPermBase"    # I

    .prologue
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-super {p0, p1, p2}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->freqId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
