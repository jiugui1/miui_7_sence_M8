.class Lcom/android/server/DevicePolicyManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DevicePolicyManagerService;

.field final synthetic val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

.field final synthetic val$adminReceiver:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iput-object p3, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1107
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v15}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    .line 1108
    .local v14, "userHandle":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v15, v14}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v13

    .line 1112
    .local v13, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowWifiStatus(Landroid/content/ComponentName;I)I

    move-result v11

    .line 1113
    .local v11, "allowWifi":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowBTStatus(Landroid/content/ComponentName;I)I

    move-result v2

    .line 1114
    .local v2, "allowBT":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowInternetSharingStatus(Landroid/content/ComponentName;I)I

    move-result v6

    .line 1115
    .local v6, "allowInterSharing":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowBrowserStatus(Landroid/content/ComponentName;I)I

    move-result v3

    .line 1116
    .local v3, "allowBrowser":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowTextMessagingStatus(Landroid/content/ComponentName;I)I

    move-result v9

    .line 1117
    .local v9, "allowTextMessage":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowStorageCardStatus(Landroid/content/ComponentName;I)I

    move-result v8

    .line 1119
    .local v8, "allowStorageCard":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowGPSStatus(Landroid/content/ComponentName;I)I

    move-result v4

    .line 1120
    .local v4, "allowGPS":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowVzwLBSStatus(Landroid/content/ComponentName;I)I

    move-result v10

    .line 1121
    .local v10, "allowVzwLBS":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowGoogleLBSStatus(Landroid/content/ComponentName;I)I

    move-result v5

    .line 1124
    .local v5, "allowGoogleLBS":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowLTEStatus(Landroid/content/ComponentName;I)I

    move-result v7

    .line 1127
    .local v7, "allowLTE":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v15, v15, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v12

    .line 1129
    .local v12, "doProxyCleanup":Z
    iget-object v15, v13, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1130
    iget-object v15, v13, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v15, v13}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v15, v13}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1133
    if-eqz v12, :cond_0

    .line 1134
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v17

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    invoke-static {v15, v0}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1136
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    # invokes: Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    invoke-static {v15, v14}, Lcom/android/server/DevicePolicyManagerService;->access$400(Lcom/android/server/DevicePolicyManagerService;I)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v15, v13}, Lcom/android/server/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowWifiStatus(Landroid/content/ComponentName;I)I

    move-result v15

    if-eq v11, v15, :cond_1

    .line 1141
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v17, "com.htc.admin.ALLOW_WIFI_CHANGE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowWifiStatus(Landroid/content/ComponentName;I)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    # invokes: Lcom/android/server/DevicePolicyManagerService;->broadcastAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v15, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->access$500(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 1143
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowBTStatus(Landroid/content/ComponentName;I)I

    move-result v15

    if-eq v2, v15, :cond_2

    .line 1144
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v17, "com.htc.admin.ALLOW_BT_CHANGE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowBTStatus(Landroid/content/ComponentName;I)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    # invokes: Lcom/android/server/DevicePolicyManagerService;->broadcastAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v15, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->access$500(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 1146
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowInternetSharingStatus(Landroid/content/ComponentName;I)I

    move-result v15

    if-eq v6, v15, :cond_3

    .line 1147
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v17, "com.htc.admin.ALLOW_INTERNET_SHARING_CHANGE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowInternetSharingStatus(Landroid/content/ComponentName;I)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    # invokes: Lcom/android/server/DevicePolicyManagerService;->broadcastAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v15, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->access$500(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 1149
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowBrowserStatus(Landroid/content/ComponentName;I)I

    move-result v15

    if-eq v3, v15, :cond_4

    .line 1150
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v17, "com.htc.admin.ALLOW_BROWSER_CHANGE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowBrowserStatus(Landroid/content/ComponentName;I)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    # invokes: Lcom/android/server/DevicePolicyManagerService;->broadcastAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v15, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->access$500(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 1152
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowTextMessagingStatus(Landroid/content/ComponentName;I)I

    move-result v15

    if-eq v9, v15, :cond_5

    .line 1153
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v17, "com.htc.admin.ALLOW_TEXT_MESSAGING_CHANGE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowTextMessagingStatus(Landroid/content/ComponentName;I)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    # invokes: Lcom/android/server/DevicePolicyManagerService;->broadcastAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v15, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->access$500(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 1155
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowStorageCardStatus(Landroid/content/ComponentName;I)I

    move-result v15

    if-eq v8, v15, :cond_6

    .line 1156
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v17, "com.htc.admin.ALLOW_STORAGE_CARD_CHANGE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowStorageCardStatus(Landroid/content/ComponentName;I)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    # invokes: Lcom/android/server/DevicePolicyManagerService;->broadcastAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v15, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->access$500(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 1159
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowGPSStatus(Landroid/content/ComponentName;I)I

    move-result v15

    if-eq v4, v15, :cond_7

    .line 1160
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v17, "com.htc.admin.ALLOW_GPS_CHANGE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowGPSStatus(Landroid/content/ComponentName;I)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    # invokes: Lcom/android/server/DevicePolicyManagerService;->broadcastAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v15, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->access$500(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 1162
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowVzwLBSStatus(Landroid/content/ComponentName;I)I

    move-result v15

    if-eq v10, v15, :cond_8

    .line 1163
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v17, "com.htc.admin.ALLOW_VZW_LBS_CHANGE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowVzwLBSStatus(Landroid/content/ComponentName;I)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    # invokes: Lcom/android/server/DevicePolicyManagerService;->broadcastAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v15, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->access$500(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 1165
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowGoogleLBSStatus(Landroid/content/ComponentName;I)I

    move-result v15

    if-eq v5, v15, :cond_9

    .line 1166
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v17, "com.htc.admin.ALLOW_GOOGLE_LBS_CHANGE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowGoogleLBSStatus(Landroid/content/ComponentName;I)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    # invokes: Lcom/android/server/DevicePolicyManagerService;->broadcastAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v15, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->access$500(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 1170
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowLTEStatus(Landroid/content/ComponentName;I)I

    move-result v15

    if-eq v7, v15, :cond_a

    .line 1171
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v17, "com.htc.admin.ALLOW_LTE_CHANGE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowLTEStatus(Landroid/content/ComponentName;I)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    # invokes: Lcom/android/server/DevicePolicyManagerService;->broadcastAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v15, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->access$500(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 1175
    :cond_a
    monitor-exit v16

    .line 1176
    return-void

    .line 1175
    .end local v2    # "allowBT":I
    .end local v3    # "allowBrowser":I
    .end local v4    # "allowGPS":I
    .end local v5    # "allowGoogleLBS":I
    .end local v6    # "allowInterSharing":I
    .end local v7    # "allowLTE":I
    .end local v8    # "allowStorageCard":I
    .end local v9    # "allowTextMessage":I
    .end local v10    # "allowVzwLBS":I
    .end local v11    # "allowWifi":I
    .end local v12    # "doProxyCleanup":Z
    .end local v13    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .end local v14    # "userHandle":I
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15
.end method