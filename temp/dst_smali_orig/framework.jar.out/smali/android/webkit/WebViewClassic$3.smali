.class Landroid/webkit/WebViewClassic$3;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewClassic;->onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;

.field final synthetic val$neverRemember:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;Landroid/os/Message;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/webkit/WebViewClassic$3;->this$0:Landroid/webkit/WebViewClassic;

    iput-object p2, p0, Landroid/webkit/WebViewClassic$3;->val$neverRemember:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/webkit/WebViewClassic$3;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mResumeMsg:Landroid/os/Message;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$2300(Landroid/webkit/WebViewClassic;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic$3;->val$neverRemember:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Landroid/webkit/WebViewClassic$3;->this$0:Landroid/webkit/WebViewClassic;

    # setter for: Landroid/webkit/WebViewClassic;->mResumeMsg:Landroid/os/Message;
    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->access$2302(Landroid/webkit/WebViewClassic;Landroid/os/Message;)Landroid/os/Message;

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic$3;->this$0:Landroid/webkit/WebViewClassic;

    # setter for: Landroid/webkit/WebViewClassic;->mSavePasswordDialog:Lcom/htc/dialog/HtcAlertDialog;
    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->access$2402(Landroid/webkit/WebViewClassic;Lcom/htc/dialog/HtcAlertDialog;)Lcom/htc/dialog/HtcAlertDialog;

    return-void
.end method
