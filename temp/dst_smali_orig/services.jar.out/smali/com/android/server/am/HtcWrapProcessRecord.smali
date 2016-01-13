.class public Lcom/android/server/am/HtcWrapProcessRecord;
.super Ljava/lang/Object;
.source "HtcWrapProcessRecord.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcWrapProcessRecord"


# instance fields
.field public crashing:Z

.field public info:Landroid/content/pm/ApplicationInfo;

.field public isDirty:Z

.field private mProcessRecord:Lcom/android/server/am/ProcessRecord;

.field public pid:I

.field public processName:Ljava/lang/String;

.field public stopReason:I

.field public uid:I

.field public userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string v0, "HtcWrapProcessRecord"

    const-string v1, "You can not wrap a null ProcessRecord"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/am/HtcWrapProcessRecord;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v0, p0, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v0, p0, Lcom/android/server/am/HtcWrapProcessRecord;->uid:I

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isDirty:Z

    iput-boolean v0, p0, Lcom/android/server/am/HtcWrapProcessRecord;->isDirty:Z

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStopReason()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/HtcWrapProcessRecord;->stopReason:I

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    iput-boolean v0, p0, Lcom/android/server/am/HtcWrapProcessRecord;->crashing:Z

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    iput v0, p0, Lcom/android/server/am/HtcWrapProcessRecord;->userId:I

    goto :goto_0
.end method

.method public static create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;
    .locals 1
    .param p0, "r"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/am/HtcWrapProcessRecord;

    invoke-direct {v0, p0}, Lcom/android/server/am/HtcWrapProcessRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0
.end method


# virtual methods
.method public getStopReason()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/am/HtcWrapProcessRecord;->stopReason:I

    return v0
.end method

.method public setIsDirty(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/am/HtcWrapProcessRecord;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    iput-boolean p1, v0, Lcom/android/server/am/ProcessRecord;->isDirty:Z

    return-void
.end method
