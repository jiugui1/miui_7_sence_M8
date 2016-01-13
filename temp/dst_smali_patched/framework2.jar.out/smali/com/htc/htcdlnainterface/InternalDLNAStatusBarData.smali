.class public Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;
.super Ljava/lang/Object;
.source "InternalDLNAStatusBarData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPendingIntent:Landroid/app/PendingIntent;

.field private nFilterType:I

.field private szActionLaunch:Ljava/lang/String;

.field private szAppName:Ljava/lang/String;

.field private szControllerName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData$1;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData$1;-><init>()V

    sput-object v0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->nFilterType:I

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szAppName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szControllerName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->nFilterType:I

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szAppName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szControllerName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, p1}, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getActionLaunch()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getControllerName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szControllerName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->nFilterType:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->nFilterType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szAppName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szControllerName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    const-class v1, Landroid/app/PendingIntent;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->mPendingIntent:Landroid/app/PendingIntent;
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

.method public setActionLaunch(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionLaunch"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szAppName:Ljava/lang/String;

    return-void
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public setControllerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "controllerName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szControllerName:Ljava/lang/String;

    return-void
.end method

.method public setFilterType(I)V
    .locals 0
    .param p1, "filterType"    # I

    .prologue
    iput p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->nFilterType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    :try_start_0
    iget v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->nFilterType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szAppName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szControllerName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
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
