.class Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "SystemCrashChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/SystemCrashChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemCrashCheckerInner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner$CheckSystemServerCrash;,
        Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner$CheckSystemCrashMainRunnable;
    }
.end annotation


# instance fields
.field private final SYSTEM_CRASH_ENTRY:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHtcErrorReportManager:Lcom/android/server/am/HtcErrorReportManager;

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field final synthetic this$0:Lcom/htc/server/SystemCrashChecker;


# direct methods
.method private constructor <init>(Lcom/htc/server/SystemCrashChecker;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;->this$0:Lcom/htc/server/SystemCrashChecker;

    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    const-string v0, "SystemCrashCheckerInner"

    iput-object v0, p0, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;->TAG:Ljava/lang/String;

    const-string v0, "/data/system/last_crash_msg"

    iput-object v0, p0, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;->SYSTEM_CRASH_ENTRY:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/SystemCrashChecker;Lcom/htc/server/SystemCrashChecker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/htc/server/SystemCrashChecker;
    .param p2, "x1"    # Lcom/htc/server/SystemCrashChecker$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;-><init>(Lcom/htc/server/SystemCrashChecker;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;

    .prologue
    iget-object v0, p0, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;

    .prologue
    iget-object v0, p0, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onFinishBooting()V
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner$CheckSystemCrashMainRunnable;

    invoke-direct {v1, p0}, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner$CheckSystemCrashMainRunnable;-><init>(Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;)V

    const-string v2, "CheckSystemCrash"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;->mContext:Landroid/content/Context;

    return-void
.end method
