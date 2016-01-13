.class Lcom/android/server/AppOpsService$HintDialog;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HintDialog"
.end annotation


# instance fields
.field private final mData:Lcom/android/server/AppOpsService$HintDialogData;

.field private final mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mDontHintAgain:Z

.field private mResult:Z

.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;Lcom/android/server/AppOpsService$HintDialogData;)V
    .locals 6
    .param p2, "data"    # Lcom/android/server/AppOpsService$HintDialogData;

    .prologue
    const/high16 v5, 0x20000

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/android/server/AppOpsService$HintDialog;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p1, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const v2, 0x30701c8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/AppOpsService$HintDialog;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const v2, 0x30701cb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/AppOpsService$HintDialog$3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/AppOpsService$HintDialog$3;-><init>(Lcom/android/server/AppOpsService$HintDialog;Lcom/android/server/AppOpsService;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCheckBox(Ljava/lang/CharSequence;ZLcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x30701c9

    new-instance v2, Lcom/android/server/AppOpsService$HintDialog$2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/AppOpsService$HintDialog$2;-><init>(Lcom/android/server/AppOpsService$HintDialog;Lcom/android/server/AppOpsService;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0xa

    # invokes: Lcom/android/server/AppOpsService;->getDisallowButtonString(I)Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/server/AppOpsService;->access$100(Lcom/android/server/AppOpsService;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/AppOpsService$HintDialog$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/AppOpsService$HintDialog$1;-><init>(Lcom/android/server/AppOpsService$HintDialog;Lcom/android/server/AppOpsService;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppOpsService$HintDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v0, p0, Lcom/android/server/AppOpsService$HintDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/server/AppOpsService$HintDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/AppOpsService$HintDialog;)Lcom/android/server/AppOpsService$HintDialogData;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AppOpsService$HintDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/AppOpsService$HintDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AppOpsService$HintDialog;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/AppOpsService$HintDialog;->mResult:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/AppOpsService$HintDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppOpsService$HintDialog;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/AppOpsService$HintDialog;->mResult:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/AppOpsService$HintDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppOpsService$HintDialog;

    .prologue
    invoke-direct {p0}, Lcom/android/server/AppOpsService$HintDialog;->updateOpsMode()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/AppOpsService$HintDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppOpsService$HintDialog;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/AppOpsService$HintDialog;->mDontHintAgain:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/AppOpsService$HintDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AppOpsService$HintDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/AppOpsService$HintDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method private getMessage()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .local v2, "stringId":I
    iget-object v3, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    iget v3, v3, Lcom/android/server/AppOpsService$HintDialogData;->code:I

    sparse-switch v3, :sswitch_data_0

    :goto_0
    iget-object v3, p0, Lcom/android/server/AppOpsService$HintDialog;->this$0:Lcom/android/server/AppOpsService;

    iget-object v3, v3, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    iget-object v4, v4, Lcom/android/server/AppOpsService$HintDialogData;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "appName":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    iget-object v3, v3, Lcom/android/server/AppOpsService$HintDialogData;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_0
    if-nez v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Do you want to grant %s permission to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    iget v4, v4, Lcom/android/server/AppOpsService$HintDialogData;->code:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "fmt":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .end local v0    # "appName":Ljava/lang/CharSequence;
    .end local v1    # "fmt":Ljava/lang/String;
    :sswitch_0
    const v2, 0x30701cc

    goto :goto_0

    :sswitch_1
    const v2, 0x30701cd

    goto :goto_0

    :sswitch_2
    const v2, 0x30701ce

    goto :goto_0

    :sswitch_3
    const v2, 0x30701cf

    goto :goto_0

    :sswitch_4
    const v2, 0x30701d0

    goto :goto_0

    :sswitch_5
    const v2, 0x30701d9

    goto :goto_0

    :sswitch_6
    const v2, 0x30701d1

    goto :goto_0

    :sswitch_7
    const v2, 0x30701d2

    goto :goto_0

    :sswitch_8
    const v2, 0x30701d3

    goto :goto_0

    :sswitch_9
    const v2, 0x30701d7

    goto :goto_0

    :sswitch_a
    const v2, 0x30701d8

    goto :goto_0

    :sswitch_b
    const v2, 0x30701d4

    goto :goto_0

    :sswitch_c
    const v2, 0x30701d5

    goto :goto_0

    :sswitch_d
    const v2, 0x30701d6

    goto :goto_0

    .restart local v0    # "appName":Ljava/lang/CharSequence;
    :cond_1
    iget-object v3, p0, Lcom/android/server/AppOpsService$HintDialog;->this$0:Lcom/android/server/AppOpsService;

    iget-object v3, v3, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0xd -> :sswitch_5
        0xe -> :sswitch_7
        0xf -> :sswitch_8
        0x14 -> :sswitch_6
        0x1a -> :sswitch_9
        0x1b -> :sswitch_a
        0x3e8 -> :sswitch_b
        0x3e9 -> :sswitch_c
        0x3ea -> :sswitch_d
    .end sparse-switch
.end method

.method private updateOpsMode()V
    .locals 3

    .prologue
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v1, "AppOps"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Click hint allow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/AppOpsService$HintDialog;->mResult:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " c="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    iget v2, v2, Lcom/android/server/AppOpsService$HintDialogData;->code:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " u="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    iget v2, v2, Lcom/android/server/AppOpsService$HintDialogData;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " noAgain="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/AppOpsService$HintDialog;->mDontHintAgain:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/AppOpsService$HintDialog;->mDontHintAgain:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/AppOpsService$HintDialog$4;

    invoke-direct {v1, p0}, Lcom/android/server/AppOpsService$HintDialog$4;-><init>(Lcom/android/server/AppOpsService$HintDialog;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method dismiss()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/AppOpsService$HintDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AppOpsService$HintDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/server/AppOpsService$HintDialog;->this$0:Lcom/android/server/AppOpsService;

    # getter for: Lcom/android/server/AppOpsService;->mHintDialogHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/AppOpsService;->access$600(Lcom/android/server/AppOpsService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method getResult()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/AppOpsService$HintDialog;->mResult:Z

    return v0
.end method
