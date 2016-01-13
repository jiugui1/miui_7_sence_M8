.class Lcom/android/server/InputMethodManagerService$12;
.super Landroid/os/Handler;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0

    .prologue
    .line 3875
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$12;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v3, 0x3e8

    const/4 v2, 0x1

    .line 3878
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3893
    :goto_0
    return-void

    .line 3880
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$12;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 3881
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/InputMethodManagerService$12;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3885
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$12;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->setDefualtIM()Z
    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->access$1400(Lcom/android/server/InputMethodManagerService;)Z

    move-result v0

    if-nez v0, :cond_1

    # getter for: Lcom/android/server/InputMethodManagerService;->mSetDefaultIMRetryCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$2600()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 3886
    # operator++ for: Lcom/android/server/InputMethodManagerService;->mSetDefaultIMRetryCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$2608()I

    .line 3887
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/InputMethodManagerService$12;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3890
    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$12;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CustomizedDefaultIME"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3878
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
