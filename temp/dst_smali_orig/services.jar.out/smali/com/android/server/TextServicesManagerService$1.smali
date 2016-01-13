.class Lcom/android/server/TextServicesManagerService$1;
.super Landroid/os/Handler;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/TextServicesManagerService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$1;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$1;->this$0:Lcom/android/server/TextServicesManagerService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/TextServicesManagerService;->mSystemReady:Z
    invoke-static {v3, v4}, Lcom/android/server/TextServicesManagerService;->access$002(Lcom/android/server/TextServicesManagerService;Z)Z

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$1;->this$0:Lcom/android/server/TextServicesManagerService;

    # setter for: Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3, v0}, Lcom/android/server/TextServicesManagerService;->access$102(Lcom/android/server/TextServicesManagerService;Landroid/content/Context;)Landroid/content/Context;

    const/4 v2, 0x0

    .local v2, "userId":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    new-instance v4, Lcom/android/server/TextServicesManagerService$1$1;

    invoke-direct {v4, p0}, Lcom/android/server/TextServicesManagerService$1$1;-><init>(Lcom/android/server/TextServicesManagerService$1;)V

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v2, v3, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$1;->this$0:Lcom/android/server/TextServicesManagerService;

    new-instance v4, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    iget-object v5, p0, Lcom/android/server/TextServicesManagerService$1;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-direct {v4, v5, v7}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$1;)V

    # setter for: Lcom/android/server/TextServicesManagerService;->mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;
    invoke-static {v3, v4}, Lcom/android/server/TextServicesManagerService;->access$502(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$TextServicesMonitor;)Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$1;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;
    invoke-static {v3}, Lcom/android/server/TextServicesManagerService;->access$500(Lcom/android/server/TextServicesManagerService;)Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    move-result-object v3

    invoke-virtual {v3, v0, v7, v6}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$1;->this$0:Lcom/android/server/TextServicesManagerService;

    new-instance v4, Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;-><init>(Landroid/content/ContentResolver;I)V

    # setter for: Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;
    invoke-static {v3, v4}, Lcom/android/server/TextServicesManagerService;->access$702(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$1;->this$0:Lcom/android/server/TextServicesManagerService;

    # invokes: Lcom/android/server/TextServicesManagerService;->switchUserLocked(I)V
    invoke-static {v3, v2}, Lcom/android/server/TextServicesManagerService;->access$300(Lcom/android/server/TextServicesManagerService;I)V

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$1;->this$0:Lcom/android/server/TextServicesManagerService;

    # setter for: Lcom/android/server/TextServicesManagerService;->mInitReady:Z
    invoke-static {v3, v6}, Lcom/android/server/TextServicesManagerService;->access$802(Lcom/android/server/TextServicesManagerService;Z)Z

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$1;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mSystemReadyFromSystemServer:Z
    invoke-static {v3}, Lcom/android/server/TextServicesManagerService;->access$900(Lcom/android/server/TextServicesManagerService;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$1;->this$0:Lcom/android/server/TextServicesManagerService;

    # setter for: Lcom/android/server/TextServicesManagerService;->mSystemReady:Z
    invoke-static {v3, v6}, Lcom/android/server/TextServicesManagerService;->access$002(Lcom/android/server/TextServicesManagerService;Z)Z

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/TextServicesManagerService;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x186a1
        :pswitch_0
    .end packed-switch
.end method
