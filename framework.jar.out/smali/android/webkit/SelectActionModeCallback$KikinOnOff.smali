.class Landroid/webkit/SelectActionModeCallback$KikinOnOff;
.super Landroid/content/BroadcastReceiver;
.source "SelectActionModeCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/SelectActionModeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KikinOnOff"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/SelectActionModeCallback;


# direct methods
.method constructor <init>(Landroid/webkit/SelectActionModeCallback;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallback$KikinOnOff;->this$0:Landroid/webkit/SelectActionModeCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 470
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 475
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 485
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 481
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v2, "com.kikin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 482
    iget-object v2, p0, Landroid/webkit/SelectActionModeCallback$KikinOnOff;->this$0:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v2}, Landroid/webkit/SelectActionModeCallback;->finish()V

    goto :goto_0
.end method
