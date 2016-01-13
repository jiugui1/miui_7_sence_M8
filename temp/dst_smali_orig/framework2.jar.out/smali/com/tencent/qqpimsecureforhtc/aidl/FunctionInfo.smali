.class public Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;
.super Ljava/lang/Object;
.source "FunctionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private callNum:I

.field private intercept:Ljava/lang/String;

.field private network:Ljava/lang/String;

.field private optimization:Ljava/lang/String;

.field private remainForMonth:Ljava/lang/String;

.field private smsNum:I

.field private totalForMonth:Ljava/lang/String;

.field private usedFlowPercent:F

.field private usedFormonth:Ljava/lang/String;

.field private virus:Ljava/lang/String;

.field private virusNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo$1;

    invoke-direct {v0}, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo$1;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->virus:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->network:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->optimization:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->intercept:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->virusNum:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->totalForMonth:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->remainForMonth:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->usedFormonth:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->smsNum:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->callNum:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->usedFlowPercent:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIF)V
    .locals 0
    .param p1, "virus"    # Ljava/lang/String;
    .param p2, "network"    # Ljava/lang/String;
    .param p3, "optimization"    # Ljava/lang/String;
    .param p4, "intercept"    # Ljava/lang/String;
    .param p5, "virusNum"    # I
    .param p6, "totalForMonth"    # Ljava/lang/String;
    .param p7, "remainForMonth"    # Ljava/lang/String;
    .param p8, "usedFormonth"    # Ljava/lang/String;
    .param p9, "smsNum"    # I
    .param p10, "callNum"    # I
    .param p11, "usedFlowPercent"    # F

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->virus:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->network:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->optimization:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->intercept:Ljava/lang/String;

    iput p5, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->virusNum:I

    iput-object p6, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->totalForMonth:Ljava/lang/String;

    iput-object p7, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->remainForMonth:Ljava/lang/String;

    iput-object p8, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->usedFormonth:Ljava/lang/String;

    iput p9, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->smsNum:I

    iput p10, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->callNum:I

    iput p11, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->usedFlowPercent:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getCallNum()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->callNum:I

    return v0
.end method

.method public getIntercept()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->intercept:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->network:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkTotalForMonth()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->totalForMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getOptimization()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->optimization:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainForMonth()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->remainForMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsNum()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->smsNum:I

    return v0
.end method

.method public getUsedFlowPercent()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->usedFlowPercent:F

    return v0
.end method

.method public getUsedFormonth()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->usedFormonth:Ljava/lang/String;

    return-object v0
.end method

.method public getVirus()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->virus:Ljava/lang/String;

    return-object v0
.end method

.method public getVirusNum()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->virusNum:I

    return v0
.end method

.method public setCallNum(I)V
    .locals 0
    .param p1, "callNum"    # I

    .prologue
    iput p1, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->callNum:I

    return-void
.end method

.method public setIntercept(Ljava/lang/String;)V
    .locals 0
    .param p1, "intercept"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->intercept:Ljava/lang/String;

    return-void
.end method

.method public setNetwork(Ljava/lang/String;)V
    .locals 0
    .param p1, "network"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->network:Ljava/lang/String;

    return-void
.end method

.method public setOptimization(Ljava/lang/String;)V
    .locals 0
    .param p1, "optimization"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->optimization:Ljava/lang/String;

    return-void
.end method

.method public setRemainForMonth(Ljava/lang/String;)V
    .locals 0
    .param p1, "remainForMonth"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->remainForMonth:Ljava/lang/String;

    return-void
.end method

.method public setSmsNum(I)V
    .locals 0
    .param p1, "smsNum"    # I

    .prologue
    iput p1, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->smsNum:I

    return-void
.end method

.method public setTotalForMonth(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalForMonth"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->totalForMonth:Ljava/lang/String;

    return-void
.end method

.method public setUsedFlowPercent(F)V
    .locals 0
    .param p1, "usedFlowPercent"    # F

    .prologue
    iput p1, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->usedFlowPercent:F

    return-void
.end method

.method public setUsedFormonth(Ljava/lang/String;)V
    .locals 0
    .param p1, "usedFormonth"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->usedFormonth:Ljava/lang/String;

    return-void
.end method

.method public setVirus(Ljava/lang/String;)V
    .locals 0
    .param p1, "virus"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->virus:Ljava/lang/String;

    return-void
.end method

.method public setVirusNum(I)V
    .locals 0
    .param p1, "virusNum"    # I

    .prologue
    iput p1, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->virusNum:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->virus:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->network:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->optimization:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->intercept:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->virusNum:I

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->totalForMonth:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->remainForMonth:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->usedFormonth:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->smsNum:I

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->callNum:I

    if-nez v0, :cond_9

    :goto_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->usedFlowPercent:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_a

    move v0, v2

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->virus:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->network:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->optimization:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->intercept:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->virusNum:I

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->totalForMonth:Ljava/lang/String;

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->remainForMonth:Ljava/lang/String;

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->usedFormonth:Ljava/lang/String;

    goto :goto_7

    :cond_8
    iget v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->smsNum:I

    goto :goto_8

    :cond_9
    iget v1, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->callNum:I

    goto :goto_9

    :cond_a
    iget v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->usedFlowPercent:F

    goto :goto_a
.end method
