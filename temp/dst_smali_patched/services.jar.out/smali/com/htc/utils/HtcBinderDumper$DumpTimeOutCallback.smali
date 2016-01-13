.class Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;
.super Ljava/lang/Object;
.source "HtcBinderDumper.java"

# interfaces
.implements Lcom/htc/utils/HtcBinderDumper$TimeOutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/utils/HtcBinderDumper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DumpTimeOutCallback"
.end annotation


# instance fields
.field private mIsTimeout:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;->mIsTimeout:Z

    return-void
.end method


# virtual methods
.method public isTimeout()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;->mIsTimeout:Z

    return v0
.end method

.method public timeout()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/utils/HtcBinderDumper$DumpTimeOutCallback;->mIsTimeout:Z

    return-void
.end method
