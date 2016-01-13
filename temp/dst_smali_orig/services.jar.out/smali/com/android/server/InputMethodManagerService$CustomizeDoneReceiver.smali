.class Lcom/android/server/InputMethodManagerService$CustomizeDoneReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomizeDoneReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$CustomizeDoneReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p2, "x1"    # Lcom/android/server/InputMethodManagerService$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService$CustomizeDoneReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    if-nez p2, :cond_1

    const-string v0, "InputMethodManagerService"

    const-string v1, "[CustomizeDoneReceiver.onReceive] intent is null!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InputMethodManagerService"

    const-string v1, "Receive : customization is done"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$CustomizeDoneReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->setDefualtIM()Z
    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->access$1400(Lcom/android/server/InputMethodManagerService;)Z

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$CustomizeDoneReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CustomizedDefaultIME"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$CustomizeDoneReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$CustomizeDoneReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mCustomizeDoneReceiver:Lcom/android/server/InputMethodManagerService$CustomizeDoneReceiver;
    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$1500(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$CustomizeDoneReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$CustomizeDoneReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/InputMethodManagerService;->mCustomizeDoneReceiver:Lcom/android/server/InputMethodManagerService$CustomizeDoneReceiver;
    invoke-static {v0, v1}, Lcom/android/server/InputMethodManagerService;->access$1502(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$CustomizeDoneReceiver;)Lcom/android/server/InputMethodManagerService$CustomizeDoneReceiver;

    goto :goto_0
.end method
