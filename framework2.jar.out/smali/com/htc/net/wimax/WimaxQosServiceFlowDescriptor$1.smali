.class final Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$1;
.super Ljava/lang/Object;
.source "WimaxQosServiceFlowDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 157
    new-instance v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;-><init>(Landroid/os/Parcel;Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 161
    new-array v0, p1, [Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$1;->newArray(I)[Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;

    move-result-object v0

    return-object v0
.end method
