.class public Lcom/android/internal/telephony/cat/InterfaceTransportLevel;
.super Ljava/lang/Object;
.source "InterfaceTransportLevel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/InterfaceTransportLevel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public port:I

.field public protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;)V
    .locals 0
    .param p1, "port"    # I
    .param p2, "protocol"    # Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel;->port:I

    iput-object p2, p0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel;->port:I

    invoke-static {}, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->values()[Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/InterfaceTransportLevel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/internal/telephony/cat/InterfaceTransportLevel$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/InterfaceTransportLevel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel;->port:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
