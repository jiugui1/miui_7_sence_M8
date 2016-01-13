.class public Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;
.super Ljava/lang/Object;
.source "ConnectionWeakDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final TAG:Ljava/lang/String;

.field private mBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/htc/dialog/HtcAlertDialog;

.field private mSupportKDDI:Z

.field private mckbxDefault:Lcom/htc/widget/HtcCheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "supportKDDI"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WirelessDisplayService_ConnectionWeakDialog"

    iput-object v0, p0, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;->mSupportKDDI:Z

    iput-boolean p2, p0, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;->mSupportKDDI:Z

    iput-object p1, p0, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;->mBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    invoke-virtual {p0}, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;->dismiss()V

    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;->dismiss()V

    iget-object v1, p0, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;->mBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v2, 0x307019b

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;->mBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;->mBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-boolean v1, p0, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;->mSupportKDDI:Z

    if-eqz v1, :cond_0

    const v1, 0x30701a1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;->mBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    iget-object v1, p0, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;->mDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    return-void

    :cond_0
    const v1, 0x3070199

    goto :goto_0
.end method
