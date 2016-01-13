.class public Lcom/htc/server/medialinkdialog/OutputTVDialog;
.super Ljava/lang/Object;
.source "OutputTVDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final INTENT_EXTRA_OUTPUTTV_RESULT:Ljava/lang/String; = "com.htc.intent.action.EXTRA_OUTPUTTV_RESULT"

.field public static final INTENT_WIRELESS_DISPLAY_OUTPUTTV_RESULT:Ljava/lang/String; = "com.htc.intent.action.WIRELESS_DISPLAY_OUTPUTTV_RESULT"

.field private static final MAX_COUNT_DOWN:I = 0x5

.field private static final MESSAGE_COUNT_DOWN:I = 0x2711

.field public static final OUTPUTTV_DIALOG_RESULT_NO:I = 0x0

.field public static final OUTPUTTV_DIALOG_RESULT_YES:I = 0x1

.field public static final OUTPUTTV_OPTION_DEFAULT_NO:I = 0x2

.field public static final OUTPUTTV_OPTION_DEFAULT_YES:I = 0x1

.field public static final OUTPUTTV_OPTION_NODEFAULT:I = 0x0

.field public static final SETTINGS_SECURE_OUTPUTTV_DEFAULT_OPTION:Ljava/lang/String; = "outputtv_default_option"

.field static final TAG:Ljava/lang/String; = "OutputTVDialog"


# instance fields
.field private mBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/htc/dialog/HtcAlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mSupportKDDI:Z

.field private mbChecked:Z

.field private mckbxDefault:Lcom/htc/widget/HtcCheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "supportKDDI"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mSupportKDDI:Z

    new-instance v0, Lcom/htc/server/medialinkdialog/OutputTVDialog$1;

    invoke-direct {v0, p0}, Lcom/htc/server/medialinkdialog/OutputTVDialog$1;-><init>(Lcom/htc/server/medialinkdialog/OutputTVDialog;)V

    iput-object v0, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mHandler:Landroid/os/Handler;

    iput-boolean p2, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mSupportKDDI:Z

    iput-object p1, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/server/medialinkdialog/OutputTVDialog;)Lcom/htc/dialog/HtcAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/medialinkdialog/OutputTVDialog;

    .prologue
    iget-object v0, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/server/medialinkdialog/OutputTVDialog;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/medialinkdialog/OutputTVDialog;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/server/medialinkdialog/OutputTVDialog;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/server/medialinkdialog/OutputTVDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/medialinkdialog/OutputTVDialog;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/server/medialinkdialog/OutputTVDialog;->broadcastIntent(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/server/medialinkdialog/OutputTVDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/medialinkdialog/OutputTVDialog;

    .prologue
    iget-object v0, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private broadcastIntent(I)V
    .locals 4
    .param p1, "result"    # I

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.WIRELESS_DISPLAY_OUTPUTTV_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.htc.intent.action.EXTRA_OUTPUTTV_RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    const-string v1, "OutputTVDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INTENT_WIRELESS_DISPLAY_OUTPUTTV_RESULT:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private getDefaultOption()I
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "outputtv_default_option"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getText(I)Ljava/lang/String;
    .locals 6
    .param p1, "nSeconds"    # I

    .prologue
    iget-object v2, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x30700f0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "strText":Ljava/lang/String;
    return-object v1
.end method

.method private setDefaultOption(I)V
    .locals 2
    .param p1, "option"    # I

    .prologue
    iget-object v0, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "outputtv_default_option"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/16 v2, 0x2711

    const/4 v0, 0x0

    .local v0, "nDefaultOption":I
    const/4 v1, -0x1

    if-ne v1, p2, :cond_2

    iget-boolean v1, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mbChecked:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, v0}, Lcom/htc/server/medialinkdialog/OutputTVDialog;->setDefaultOption(I)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/server/medialinkdialog/OutputTVDialog;->broadcastIntent(I)V

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    const-string v1, "OutputTVDialog"

    const-string v2, "BUTTON_POSITIVE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, -0x2

    if-ne v1, p2, :cond_1

    iget-boolean v1, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mbChecked:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    :cond_3
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, v0}, Lcom/htc/server/medialinkdialog/OutputTVDialog;->setDefaultOption(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/server/medialinkdialog/OutputTVDialog;->broadcastIntent(I)V

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    const-string v1, "OutputTVDialog"

    const-string v2, "BUTTON_NEGATIVE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    check-cast p1, Lcom/htc/widget/HtcCompoundButton;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/htc/widget/HtcCompoundButton;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mbChecked:Z

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    iget-object v0, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    return-void
.end method

.method public show()V
    .locals 8

    .prologue
    const/16 v7, 0x2711

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    :cond_0
    iget-object v4, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x3030028

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, "dialogView":Landroid/view/View;
    const v4, 0x3110048

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcCheckBox;

    iput-object v4, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mckbxDefault:Lcom/htc/widget/HtcCheckBox;

    iget-object v4, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mckbxDefault:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v4, p0}, Lcom/htc/widget/HtcCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x3110049

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .local v3, "txtNotShow":Landroid/widget/TextView;
    const v4, 0x30700f1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/htc/server/medialinkdialog/OutputTVDialog;->getDefaultOption()I

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mbChecked:Z

    iget-object v4, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mckbxDefault:Lcom/htc/widget/HtcCheckBox;

    iget-boolean v6, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mbChecked:Z

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    iget-object v6, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-boolean v4, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mSupportKDDI:Z

    if-eqz v4, :cond_2

    const v4, 0x307019c

    :goto_1
    invoke-virtual {v6, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    const v6, 0x10404e3

    invoke-virtual {v4, v6, p0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    const v6, 0x10404e4

    invoke-virtual {v4, v6, p0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x5

    invoke-direct {p0, v5}, Lcom/htc/server/medialinkdialog/OutputTVDialog;->getText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    iget-object v4, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    iget-object v4, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .local v2, "msg":Landroid/os/Message;
    iput v7, v2, Landroid/os/Message;->what:I

    const/4 v4, 0x4

    iput v4, v2, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/htc/server/medialinkdialog/OutputTVDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const v4, 0x3070190

    goto :goto_1
.end method
