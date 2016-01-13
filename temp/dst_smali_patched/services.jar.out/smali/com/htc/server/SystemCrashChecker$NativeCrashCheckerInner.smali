.class Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "SystemCrashChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/SystemCrashChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeCrashCheckerInner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner$NativeCrashReceiver;
    }
.end annotation


# instance fields
.field private final AP_NATIVE_CRASH_ACTION:Ljava/lang/String;

.field private final PERMISSION_UBLS_SECURITY_USAGE:Ljava/lang/String;

.field private final SYSTEM_FINALIZER_TIMEOUT_ACTION:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private mThread:Landroid/os/HandlerThread;

.field private mpid:I

.field private mprocessName:Ljava/lang/String;

.field private mtombstoneFile:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/server/SystemCrashChecker;


# direct methods
.method private constructor <init>(Lcom/htc/server/SystemCrashChecker;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->this$0:Lcom/htc/server/SystemCrashChecker;

    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    const-string v0, "NativeCrashCheckerInner"

    iput-object v0, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->TAG:Ljava/lang/String;

    const-string v0, "com.htc.intent.action.NOTIFY_AP_NATIVE_CRASH"

    iput-object v0, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->AP_NATIVE_CRASH_ACTION:Ljava/lang/String;

    const-string v0, "com.htc.intent.action.FINALIZER_TIMEOUT"

    iput-object v0, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->SYSTEM_FINALIZER_TIMEOUT_ACTION:Ljava/lang/String;

    const-string v0, "com.htc.permission.UBLS_SECURITY_USAGE"

    iput-object v0, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->PERMISSION_UBLS_SECURITY_USAGE:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/SystemCrashChecker;Lcom/htc/server/SystemCrashChecker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/htc/server/SystemCrashChecker;
    .param p2, "x1"    # Lcom/htc/server/SystemCrashChecker$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;-><init>(Lcom/htc/server/SystemCrashChecker;)V

    return-void
.end method


# virtual methods
.method public onFinishBooting()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->setup()V

    return-void
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.htc.intent.action.FINALIZER_TIMEOUT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner$NativeCrashReceiver;

    invoke-direct {v1, p0, v4}, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner$NativeCrashReceiver;-><init>(Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;Lcom/htc/server/SystemCrashChecker$1;)V

    .local v1, "receiver":Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner$NativeCrashReceiver;
    iget-object v2, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->mContext:Landroid/content/Context;

    const-string v3, "com.htc.permission.UBLS_SECURITY_USAGE"

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
