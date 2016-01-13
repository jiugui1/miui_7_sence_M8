.class public final Lcom/htc/server/deviceinfo/PackageRecord;
.super Ljava/lang/Object;
.source "PackageRecord.java"


# static fields
.field private static final C2DM_PERMISSION_NAME:Ljava/lang/String; = "com.google.android.c2dm.permission.RECEIVE"

.field private static final TAG:Ljava/lang/String; = "HtcDeviceInfoManager"

.field private static sEnableC2DMLogInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/utils/ulog/Util;->isLessThanSense40()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/server/deviceinfo/PackageRecord;->sEnableC2DMLogInfo:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notePackageAdded(Ljava/lang/String;Landroid/content/Context;)V
    .locals 23
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    const/4 v9, 0x0

    .local v9, "label":Ljava/lang/String;
    const/16 v20, 0x0

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v13

    .local v13, "packageContext":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_0

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    if-eqz v20, :cond_4

    :cond_0
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .local v18, "resources":Landroid/content/res/Resources;
    new-instance v12, Landroid/content/res/Configuration;

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .local v12, "org":Landroid/content/res/Configuration;
    new-instance v11, Landroid/content/res/Configuration;

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .local v11, "mod":Landroid/content/res/Configuration;
    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v20

    iput-object v0, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v20, 0x0

    :try_start_1
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move/from16 v20, v0

    if-eqz v20, :cond_5

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    :goto_0
    const/16 v20, 0x0

    :try_start_2
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    sget-boolean v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v20, :cond_1

    const-string v20, "HtcDeviceInfoManager"

    const-string v21, "[PackageRecord.notePackageAdded] Write ULog"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v19

    .local v19, "uLogData":Lcom/htc/utils/ulog/ReusableULogData;
    const-string v20, "system_server"

    invoke-virtual/range {v19 .. v20}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v20

    const-string v21, "launcher_downloaded"

    invoke-interface/range {v20 .. v21}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v20

    const-string v21, "package"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v20

    const-string v21, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v9}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    sget-boolean v20, Lcom/htc/server/deviceinfo/PackageRecord;->sEnableC2DMLogInfo:Z

    if-eqz v20, :cond_3

    const-string v8, "0"

    .local v8, "isC2DM":Ljava/lang/String;
    const-string v20, "package"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    check-cast v17, Lcom/android/server/pm/PackageManagerService;

    .local v17, "pm":Lcom/android/server/pm/PackageManagerService;
    if-eqz v17, :cond_2

    const/16 v20, 0x1000

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v21

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v16

    .local v16, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v14, "permissions":[Ljava/lang/String;
    if-eqz v14, :cond_2

    move-object v5, v14

    .local v5, "arr$":[Ljava/lang/String;
    array-length v10, v5

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v10, :cond_2

    aget-object v15, v5, v7

    .local v15, "permit":Ljava/lang/String;
    if-eqz v15, :cond_6

    const-string v20, "com.google.android.c2dm.permission.RECEIVE"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    const-string v8, "1"

    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .end local v14    # "permissions":[Ljava/lang/String;
    .end local v15    # "permit":Ljava/lang/String;
    .end local v16    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    const-string v20, "C2DM"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .end local v8    # "isC2DM":Ljava/lang/String;
    .end local v17    # "pm":Lcom/android/server/pm/PackageManagerService;
    :cond_3
    invoke-static/range {v19 .. v19}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    invoke-virtual/range {v19 .. v19}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    sget-boolean v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v20, :cond_4

    const-string v20, "HtcDeviceInfoManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "notePackageAdded: package: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", label:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "label":Ljava/lang/String;
    .end local v11    # "mod":Landroid/content/res/Configuration;
    .end local v12    # "org":Landroid/content/res/Configuration;
    .end local v13    # "packageContext":Landroid/content/Context;
    .end local v18    # "resources":Landroid/content/res/Resources;
    .end local v19    # "uLogData":Lcom/htc/utils/ulog/ReusableULogData;
    :cond_4
    :goto_2
    return-void

    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v9    # "label":Ljava/lang/String;
    .restart local v11    # "mod":Landroid/content/res/Configuration;
    .restart local v12    # "org":Landroid/content/res/Configuration;
    .restart local v13    # "packageContext":Landroid/content/Context;
    .restart local v18    # "resources":Landroid/content/res/Resources;
    :cond_5
    :try_start_3
    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    goto/16 :goto_0

    :catchall_0
    move-exception v20

    const/16 v21, 0x0

    :try_start_4
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    throw v20
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "mod":Landroid/content/res/Configuration;
    .end local v12    # "org":Landroid/content/res/Configuration;
    .end local v13    # "packageContext":Landroid/content/Context;
    .end local v18    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v20, :cond_4

    const-string v20, "HtcDeviceInfoManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "notePackageAdded: package: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", label:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v8    # "isC2DM":Ljava/lang/String;
    .restart local v10    # "len$":I
    .restart local v11    # "mod":Landroid/content/res/Configuration;
    .restart local v12    # "org":Landroid/content/res/Configuration;
    .restart local v13    # "packageContext":Landroid/content/Context;
    .restart local v14    # "permissions":[Ljava/lang/String;
    .restart local v15    # "permit":Ljava/lang/String;
    .restart local v16    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v17    # "pm":Lcom/android/server/pm/PackageManagerService;
    .restart local v18    # "resources":Landroid/content/res/Resources;
    .restart local v19    # "uLogData":Lcom/htc/utils/ulog/ReusableULogData;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1
.end method

.method public static notePackageRemoved(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_1

    :try_start_0
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcDeviceInfoManager"

    const-string v3, "[PackageRecord.notePackageRemoved] Write ULog"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v1

    .local v1, "uLogData":Lcom/htc/utils/ulog/ReusableULogData;
    const-string v2, "system_server"

    invoke-virtual {v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "app_uninstalled"

    invoke-interface {v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "package"

    invoke-interface {v2, v3, p0}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {v2, v3, p1}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    invoke-static {v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_1

    const-string v2, "HtcDeviceInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notePackageRemoved: package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", label:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "uLogData":Lcom/htc/utils/ulog/ReusableULogData;
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_1

    const-string v2, "HtcDeviceInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notePackageRemoved: package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", label:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
