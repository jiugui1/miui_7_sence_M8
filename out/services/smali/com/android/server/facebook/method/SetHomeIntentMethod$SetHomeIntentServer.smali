.class Lcom/android/server/facebook/method/SetHomeIntentMethod$SetHomeIntentServer;
.super Lcom/android/server/facebook/method/FacebookMethod$Server;
.source "SetHomeIntentMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/SetHomeIntentMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetHomeIntentServer"
.end annotation


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/android/server/facebook/method/SetHomeIntentMethod;


# direct methods
.method public constructor <init>(Lcom/android/server/facebook/method/SetHomeIntentMethod;Landroid/content/pm/PackageManager;)V
    .locals 0
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/server/facebook/method/SetHomeIntentMethod$SetHomeIntentServer;->this$0:Lcom/android/server/facebook/method/SetHomeIntentMethod;

    invoke-direct {p0, p1}, Lcom/android/server/facebook/method/FacebookMethod$Server;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    .line 55
    iput-object p2, p0, Lcom/android/server/facebook/method/SetHomeIntentMethod$SetHomeIntentServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 56
    return-void
.end method

.method private enforceHomePermission()V
    .locals 8

    .prologue
    .line 125
    iget-object v6, p0, Lcom/android/server/facebook/method/SetHomeIntentMethod$SetHomeIntentServer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "packages":[Ljava/lang/String;
    if-nez v4, :cond_0

    .line 128
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "no package found for caller"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 131
    :cond_0
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 132
    .local v5, "pkg":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/facebook/method/SetHomeIntentMethod$SetHomeIntentServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "com.facebook.system.permission.LAUNCH_HOME"

    invoke-virtual {v6, v7, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 133
    .local v1, "granted":I
    if-eqz v1, :cond_1

    .line 134
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "access to method setHomeIntent requires permission com.facebook.system.permission.LAUNCH_HOME"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 131
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .end local v1    # "granted":I
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private setHomeIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/facebook/method/SetHomeIntentMethod$SetHomeIntentServer;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v14, :cond_0

    .line 120
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/facebook/method/SetHomeIntentMethod$SetHomeIntentServer;->enforceHomePermission()V

    .line 81
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 83
    .local v6, "identity":J
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .local v3, "component":Landroid/content/ComponentName;
    new-instance v8, Landroid/content/Intent;

    const-string v14, "android.intent.action.MAIN"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v8, "intent":Landroid/content/Intent;
    const-string v14, "android.intent.category.HOME"

    invoke-virtual {v8, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v14, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/facebook/method/SetHomeIntentMethod$SetHomeIntentServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v15, 0x10000

    invoke-virtual {v14, v8, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 98
    .local v13, "resolvedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    new-array v4, v14, [Landroid/content/ComponentName;

    .line 100
    .local v4, "componentSet":[Landroid/content/ComponentName;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v14, v4

    if-ge v5, v14, :cond_1

    .line 101
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 102
    .local v12, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 103
    .local v11, "packageName":Ljava/lang/String;
    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 104
    .local v2, "activityName":Ljava/lang/String;
    new-instance v14, Landroid/content/ComponentName;

    invoke-direct {v14, v11, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v4, v5

    .line 100
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 108
    .end local v2    # "activityName":Ljava/lang/String;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .local v9, "intentFilter":Landroid/content/IntentFilter;
    const-string v14, "android.intent.action.MAIN"

    invoke-virtual {v9, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v14, "android.intent.category.HOME"

    invoke-virtual {v9, v14}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 111
    const-string v14, "android.intent.category.DEFAULT"

    invoke-virtual {v9, v14}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 112
    const/16 v14, 0x3e8

    invoke-virtual {v9, v14}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 114
    const/high16 v10, 0x100000

    .line 116
    .local v10, "match":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/facebook/method/SetHomeIntentMethod$SetHomeIntentServer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v14, v9, v10, v4, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v4    # "componentSet":[Landroid/content/ComponentName;
    .end local v5    # "i":I
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "intentFilter":Landroid/content/IntentFilter;
    .end local v10    # "match":I
    .end local v13    # "resolvedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_0
    move-exception v14

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14
.end method


# virtual methods
.method public handleMethod(Landroid/os/Bundle;Landroid/os/Bundle;I)Z
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "reply"    # Landroid/os/Bundle;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    const-string v2, "package"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "activity":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 66
    :cond_0
    const/4 v2, 0x0

    .line 69
    :goto_0
    return v2

    .line 68
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/android/server/facebook/method/SetHomeIntentMethod$SetHomeIntentServer;->setHomeIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v2, 0x1

    goto :goto_0
.end method
