.class public Lcom/htc/server/SystemCrashChecker;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "SystemCrashChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/SystemCrashChecker$1;,
        Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;,
        Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;,
        Lcom/htc/server/SystemCrashChecker$FinalizerTimeoutObject;
    }
.end annotation


# instance fields
.field private final mCheckers:[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

.field private final mErrController:Lcom/htc/server/errorreport/ErrorReportController;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    iput-object v0, p0, Lcom/htc/server/SystemCrashChecker;->mCheckers:[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    iget-object v0, p0, Lcom/htc/server/SystemCrashChecker;->mCheckers:[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;

    invoke-direct {v2, p0, v3}, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;-><init>(Lcom/htc/server/SystemCrashChecker;Lcom/htc/server/SystemCrashChecker$1;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/htc/server/SystemCrashChecker;->mCheckers:[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    const/4 v1, 0x1

    new-instance v2, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;

    invoke-direct {v2, p0, v3}, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;-><init>(Lcom/htc/server/SystemCrashChecker;Lcom/htc/server/SystemCrashChecker$1;)V

    aput-object v2, v0, v1

    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/server/errorreport/ErrorReportController;

    invoke-direct {v0}, Lcom/htc/server/errorreport/ErrorReportController;-><init>()V

    iput-object v0, p0, Lcom/htc/server/SystemCrashChecker;->mErrController:Lcom/htc/server/errorreport/ErrorReportController;

    :goto_0
    return-void

    :cond_0
    iput-object v3, p0, Lcom/htc/server/SystemCrashChecker;->mErrController:Lcom/htc/server/errorreport/ErrorReportController;

    goto :goto_0
.end method


# virtual methods
.method public onFinishBooting()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/htc/server/SystemCrashChecker;->mCheckers:[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v0, "arr$":[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, "checker":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onFinishBooting()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "checker":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :cond_0
    return-void
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    iget-object v0, p0, Lcom/htc/server/SystemCrashChecker;->mCheckers:[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v0, "arr$":[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, "checker":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    invoke-virtual {v1, p1, p2}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "checker":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :cond_0
    iget-object v4, p0, Lcom/htc/server/SystemCrashChecker;->mErrController:Lcom/htc/server/errorreport/ErrorReportController;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/server/SystemCrashChecker;->mErrController:Lcom/htc/server/errorreport/ErrorReportController;

    invoke-virtual {v4, p2}, Lcom/htc/server/errorreport/ErrorReportController;->startWatching(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onShutdown()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/SystemCrashChecker;->mErrController:Lcom/htc/server/errorreport/ErrorReportController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/SystemCrashChecker;->mErrController:Lcom/htc/server/errorreport/ErrorReportController;

    invoke-virtual {v0}, Lcom/htc/server/errorreport/ErrorReportController;->stopWatching()V

    :cond_0
    return-void
.end method
