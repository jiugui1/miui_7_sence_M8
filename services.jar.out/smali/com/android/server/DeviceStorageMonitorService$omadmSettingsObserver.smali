.class final Lcom/android/server/DeviceStorageMonitorService$omadmSettingsObserver;
.super Landroid/database/ContentObserver;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "omadmSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceStorageMonitorService;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceStorageMonitorService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService$omadmSettingsObserver;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    .line 481
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 482
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$omadmSettingsObserver;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService$omadmSettingsObserver;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/DeviceStorageMonitorService;->access$500(Lcom/android/server/DeviceStorageMonitorService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "omadm.fumo.storage.cap"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    # setter for: Lcom/android/server/DeviceStorageMonitorService;->mNewLowOmaDmMemThreshold:J
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceStorageMonitorService;->access$402(Lcom/android/server/DeviceStorageMonitorService;J)J

    .line 487
    const-string v0, "DeviceStorageMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New omadm storage threshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService$omadmSettingsObserver;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/DeviceStorageMonitorService;->mNewLowOmaDmMemThreshold:J
    invoke-static {v2}, Lcom/android/server/DeviceStorageMonitorService;->access$400(Lcom/android/server/DeviceStorageMonitorService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return-void
.end method
