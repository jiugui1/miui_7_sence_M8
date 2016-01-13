.class Lcom/android/server/AppOpsService$HintDialogData;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HintDialogData"
.end annotation


# instance fields
.field final code:I

.field final info:Landroid/content/pm/ApplicationInfo;

.field final notifier:Ljava/lang/Object;

.field final pid:I

.field final uid:I


# direct methods
.method constructor <init>(IIILandroid/content/pm/ApplicationInfo;Ljava/lang/Object;)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "code"    # I
    .param p4, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "notifier"    # Ljava/lang/Object;

    .prologue
    .line 1223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1224
    iput p1, p0, Lcom/android/server/AppOpsService$HintDialogData;->pid:I

    .line 1225
    iput p2, p0, Lcom/android/server/AppOpsService$HintDialogData;->uid:I

    .line 1226
    iput p3, p0, Lcom/android/server/AppOpsService$HintDialogData;->code:I

    .line 1227
    iput-object p4, p0, Lcom/android/server/AppOpsService$HintDialogData;->info:Landroid/content/pm/ApplicationInfo;

    .line 1228
    iput-object p5, p0, Lcom/android/server/AppOpsService$HintDialogData;->notifier:Ljava/lang/Object;

    .line 1229
    return-void
.end method
