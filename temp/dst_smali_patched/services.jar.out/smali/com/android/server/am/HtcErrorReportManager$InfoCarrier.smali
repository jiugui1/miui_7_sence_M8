.class public Lcom/android/server/am/HtcErrorReportManager$InfoCarrier;
.super Ljava/lang/Object;
.source "HtcErrorReportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/HtcErrorReportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoCarrier"
.end annotation


# instance fields
.field private finlizerTimeoutFlagFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFinlizerTimeoutFlagFile()Ljava/io/File;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/HtcErrorReportManager$InfoCarrier;->finlizerTimeoutFlagFile:Ljava/io/File;

    return-object v0
.end method

.method public setFinlizerTimeoutFlagFile(Ljava/io/File;)V
    .locals 0
    .param p1, "finlizerTimeoutFlagFile"    # Ljava/io/File;

    .prologue
    iput-object p1, p0, Lcom/android/server/am/HtcErrorReportManager$InfoCarrier;->finlizerTimeoutFlagFile:Ljava/io/File;

    return-void
.end method
