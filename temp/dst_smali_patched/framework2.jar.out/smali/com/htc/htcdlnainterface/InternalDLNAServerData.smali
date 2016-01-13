.class public Lcom/htc/htcdlnainterface/InternalDLNAServerData;
.super Ljava/lang/Object;
.source "InternalDLNAServerData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/htcdlnainterface/InternalDLNAServerData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private serverID:Ljava/lang/String;

.field private serverName:Ljava/lang/String;

.field private thumbnailPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/htc/htcdlnainterface/InternalDLNAServerData$1;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/InternalDLNAServerData$1;-><init>()V

    sput-object v0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverID:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->thumbnailPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverID:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->thumbnailPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverID:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverID:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->thumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->thumbnailPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setServerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverID:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverName:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->thumbnailPath:Ljava/lang/String;

    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverID"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverID:Ljava/lang/String;

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverName:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbnailPath"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->thumbnailPath:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
