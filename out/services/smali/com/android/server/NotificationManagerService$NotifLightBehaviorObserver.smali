.class Lcom/android/server/NotificationManagerService$NotifLightBehaviorObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifLightBehaviorObserver"
.end annotation


# static fields
.field public static final ALWAYS_FLASH:I = 0x0

.field public static final DEFAULT_VALUE:I = 0x0

.field public static final KEY:Ljava/lang/String; = "htc_notification_light_behavior"


# instance fields
.field private registered:Z

.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2817
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$NotifLightBehaviorObserver;->this$0:Lcom/android/server/NotificationManagerService;

    .line 2818
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2815
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService$NotifLightBehaviorObserver;->registered:Z

    .line 2819
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2823
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$NotifLightBehaviorObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2824
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-boolean v3, p0, Lcom/android/server/NotificationManagerService$NotifLightBehaviorObserver;->registered:Z

    if-nez v3, :cond_0

    .line 2825
    iput-boolean v1, p0, Lcom/android/server/NotificationManagerService$NotifLightBehaviorObserver;->registered:Z

    .line 2826
    const-string v3, "htc_notification_light_behavior"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2831
    :cond_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$NotifLightBehaviorObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v4, "htc_notification_light_behavior"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    # setter for: Lcom/android/server/NotificationManagerService;->mNotificationLightAlwaysFlash:Z
    invoke-static {v3, v1}, Lcom/android/server/NotificationManagerService;->access$5302(Lcom/android/server/NotificationManagerService;Z)Z

    .line 2833
    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alwaysFlash="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NotificationManagerService$NotifLightBehaviorObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationLightAlwaysFlash:Z
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$5300(Lcom/android/server/NotificationManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    return-void

    :cond_1
    move v1, v2

    .line 2831
    goto :goto_0
.end method
