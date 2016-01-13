.class Lcom/android/server/am/HtcAmsUtil$AppWarningDialog;
.super Lcom/htc/widget/HtcAlertDialog;
.source "HtcAmsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/HtcAmsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppWarningDialog"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "result"    # Lcom/android/server/am/AppErrorResult;
    .param p4, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p5, "warningType"    # I

    .prologue
    const/high16 v9, 0x20000

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 266
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 269
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v5, p4, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ne v5, v7, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, "name":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    .line 274
    :goto_0
    new-instance v1, Lcom/android/server/am/HtcAmsUtil$AppWarningDialog$1;

    invoke-direct {v1, p0, p2, p4, p3}, Lcom/android/server/am/HtcAmsUtil$AppWarningDialog$1;-><init>(Lcom/android/server/am/HtcAmsUtil$AppWarningDialog;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/AppErrorResult;)V

    .line 288
    .local v1, "handler":Landroid/os/Handler;
    invoke-virtual {p0, v8}, Lcom/android/server/am/HtcAmsUtil$AppWarningDialog;->setCancelable(Z)V

    .line 289
    const v5, 0x30701df

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/am/HtcAmsUtil$AppWarningDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 291
    if-ne p5, v7, :cond_2

    .line 292
    const v5, 0x30701e0

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 296
    .local v4, "warningMsg":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/server/am/HtcAmsUtil$AppWarningDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 298
    const/4 v5, -0x1

    const v6, 0x104000a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/am/HtcAmsUtil$AppWarningDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 300
    invoke-virtual {p0}, Lcom/android/server/am/HtcAmsUtil$AppWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 301
    invoke-virtual {p0}, Lcom/android/server/am/HtcAmsUtil$AppWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 304
    invoke-virtual {p0}, Lcom/android/server/am/HtcAmsUtil$AppWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 305
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application Warning: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 306
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v5, v5, 0x110

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 308
    invoke-virtual {p0}, Lcom/android/server/am/HtcAmsUtil$AppWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 309
    iget-boolean v5, p4, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v5, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/android/server/am/HtcAmsUtil$AppWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7da

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 312
    :cond_0
    const-wide/32 v5, 0xea60

    invoke-virtual {v1, v8, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 313
    return-void

    .line 272
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "name":Ljava/lang/CharSequence;
    .end local v4    # "warningMsg":Ljava/lang/String;
    :cond_1
    iget-object v2, p4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .restart local v2    # "name":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 294
    .restart local v1    # "handler":Landroid/os/Handler;
    :cond_2
    const-string v5, "Unknown warning from %s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "warningMsg":Ljava/lang/String;
    goto :goto_1
.end method
