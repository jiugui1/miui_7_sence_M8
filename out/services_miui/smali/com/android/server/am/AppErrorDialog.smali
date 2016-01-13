.class final Lcom/android/server/am/AppErrorDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppErrorDialog.java"


# static fields
.field static final DISMISS_TIMEOUT:J = 0x493e0L

.field static final FORCE_QUIT:I = 0x0

.field static final FORCE_QUIT_AND_REPORT:I = 0x1


# instance fields
.field mCrashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mResult:Lcom/android/server/am/AppErrorResult;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "result"    # Lcom/android/server/am/AppErrorResult;
    .param p4, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 166
    new-instance v3, Lcom/android/server/am/AppErrorDialog$2;

    invoke-direct {v3, p0}, Lcom/android/server/am/AppErrorDialog$2;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    iput-object v3, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 55
    .local v2, "res":Landroid/content/res/Resources;
    iput-object p2, p0, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 56
    iput-object p4, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 57
    iput-object p3, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 59
    iget-object v3, p4, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ne v3, v7, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "name":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 61
    const v3, 0x11070036

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/AppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 71
    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/server/am/AppErrorDialog;->setCancelable(Z)V

    .line 73
    const/4 v3, -0x1

    const v4, 0x1107003e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 77
    iget-object v3, p4, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 78
    const/4 v3, -0x2

    const v4, 0x1107003f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 83
    :cond_0
    const v3, 0x11070038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/AppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 85
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v3, v3, 0x110

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 88
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 89
    iget-boolean v3, p4, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v3, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7da

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 94
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v5, 0x493e0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 97
    return-void

    .line 65
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "name":Ljava/lang/CharSequence;
    :cond_2
    iget-object v1, p4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 66
    .restart local v1    # "name":Ljava/lang/CharSequence;
    const v3, 0x11070037

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/AppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "result"    # Lcom/android/server/am/AppErrorResult;
    .param p4, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p5, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 166
    new-instance v10, Lcom/android/server/am/AppErrorDialog$2;

    invoke-direct {v10, p0}, Lcom/android/server/am/AppErrorDialog$2;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    iput-object v10, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    .line 105
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 106
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 107
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 108
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mCrashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 110
    const/4 v9, 0x0

    .line 112
    .local v9, "title":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 113
    .local v7, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, "name":Ljava/lang/CharSequence;
    if-eqz v6, :cond_0

    .line 115
    const v10, 0x11070036

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v7, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 122
    :goto_0
    invoke-virtual {p0, v9}, Lcom/android/server/am/AppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 124
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v10, v10, 0x110

    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 126
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 128
    move-object v3, p1

    .line 129
    .local v3, "contextInner":Landroid/content/Context;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x110700a1

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "dialogBody":Ljava/lang/String;
    const v10, 0x110700a2

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, "dialogDumpToPreview":Ljava/lang/String;
    new-instance v8, Landroid/text/SpannableStringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 132
    .local v8, "textBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v10, Lcom/android/server/am/AppErrorDialog$1;

    invoke-direct {v10, p0, v3}, Lcom/android/server/am/AppErrorDialog$1;-><init>(Lcom/android/server/am/AppErrorDialog;Landroid/content/Context;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    const/16 v13, 0x21

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 146
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 147
    .local v2, "contentView":Landroid/widget/TextView;
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x110a002a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x110d000b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 151
    invoke-virtual {p0, v2}, Lcom/android/server/am/AppErrorDialog;->setView(Landroid/view/View;)V

    .line 153
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/am/AppErrorDialog;->setCancelable(Z)V

    .line 155
    const/4 v10, -0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1107003f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 158
    const/4 v10, -0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Landroid/R$string;->cancel:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 163
    iget-object v10, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    const-wide/32 v12, 0x493e0

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 164
    return-void

    .line 118
    .end local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "contentView":Landroid/widget/TextView;
    .end local v3    # "contextInner":Landroid/content/Context;
    .end local v4    # "dialogBody":Ljava/lang/String;
    .end local v5    # "dialogDumpToPreview":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/CharSequence;
    .end local v8    # "textBuilder":Landroid/text/SpannableStringBuilder;
    :cond_0
    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 119
    .restart local v6    # "name":Ljava/lang/CharSequence;
    const v10, 0x11070037

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v7, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method
