.class public Lcom/htc/server/deviceinfo/ExtraUsageWrapper;
.super Ljava/lang/Object;
.source "ExtraUsageWrapper.java"


# instance fields
.field private mClassExtraUsage:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mExtraUsageObj:Ljava/lang/Object;

.field private final mLogcatTag:Ljava/lang/String;

.field private mMethodConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private mMethodGetLocation:Ljava/lang/reflect/Method;

.field private mMethodLog1:Ljava/lang/reflect/Method;

.field private mMethodLog2:Ljava/lang/reflect/Method;

.field private mMethodLog3:Ljava/lang/reflect/Method;

.field private mMethodLog4:Ljava/lang/reflect/Method;

.field private mMethodLog5:Ljava/lang/reflect/Method;

.field private mMethodLog6:Ljava/lang/reflect/Method;

.field private mMethodLog7:Ljava/lang/reflect/Method;

.field private mMethodLog8:Ljava/lang/reflect/Method;

.field private mMethodRequestLocationUpdate:Ljava/lang/reflect/Method;

.field private mMethodSetup:Ljava/lang/reflect/Method;

.field private mMethodUnregisterLocationUpdate:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "logcatTag"    # Ljava/lang/String;
    .param p3, "isVerbose"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mLogcatTag:Ljava/lang/String;

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mExtraUsageObj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const-string v1, "ExtraUsageWrapper constructor end"

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "ExtraUsageWrapper"

    iput-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mLogcatTag:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] cannot find class or method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->throwRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "fail to invoke constructor"

    invoke-static {p2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static getLibPath()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, "aeiPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "framework"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v2, "sysFrameDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v3, "aei.jar"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v0, "aeiFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .end local v0    # "aeiFile":Ljava/io/File;
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "/system/framework/aei.jar"

    :cond_1
    return-object v1
.end method

.method private init()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    new-instance v0, Ldalvik/system/PathClassLoader;

    invoke-static {}, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->getLibPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .local v0, "classLoader":Ldalvik/system/PathClassLoader;
    const-string v2, "com.htc.aei.ExtraUsage"

    invoke-static {v2, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mClassExtraUsage:Ljava/lang/Class;

    iget-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mClassExtraUsage:Ljava/lang/Class;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mClassExtraUsage:Ljava/lang/Class;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v8

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-class v6, Ljava/lang/Boolean;

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodConstructor:Ljava/lang/reflect/Constructor;

    iget-object v4, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mClassExtraUsage:Ljava/lang/Class;

    const-string v5, "logExtraInfo1"

    move-object v2, v3

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodLog1:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mClassExtraUsage:Ljava/lang/Class;

    const-string v5, "logExtraInfo2"

    move-object v2, v3

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodLog2:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mClassExtraUsage:Ljava/lang/Class;

    const-string v5, "logExtraInfo3"

    move-object v2, v3

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodLog3:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mClassExtraUsage:Ljava/lang/Class;

    const-string v5, "logExtraInfo4"

    move-object v2, v3

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodLog4:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mClassExtraUsage:Ljava/lang/Class;

    const-string v5, "logExtraInfo6"

    move-object v2, v3

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodLog6:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mClassExtraUsage:Ljava/lang/Class;

    const-string v5, "logExtraInfo7"

    move-object v2, v3

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodLog7:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mClassExtraUsage:Ljava/lang/Class;

    const-string v5, "logExtraInfo8"

    move-object v2, v3

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodLog8:Ljava/lang/reflect/Method;

    const-string v2, "com.htc.utils.ulog.ULogData"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .local v1, "classULogData":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mClassExtraUsage:Ljava/lang/Class;

    const-string v4, "logExtraInfo5"

    new-array v5, v7, [Ljava/lang/Class;

    aput-object v1, v5, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodLog5:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mClassExtraUsage:Ljava/lang/Class;

    const-string v4, "setup"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v6, Landroid/os/Looper;

    aput-object v6, v5, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodSetup:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mClassExtraUsage:Ljava/lang/Class;

    const-string v5, "getLocation"

    move-object v2, v3

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodGetLocation:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mClassExtraUsage:Ljava/lang/Class;

    const-string v5, "requestLocationUpdate"

    move-object v2, v3

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodRequestLocationUpdate:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mClassExtraUsage:Ljava/lang/Class;

    const-string v4, "unregisterLocationUpdate"

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodUnregisterLocationUpdate:Ljava/lang/reflect/Method;

    .end local v1    # "classULogData":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-void
.end method

.method private static throwRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "detailMessage"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 6

    .prologue
    const/4 v3, 0x0

    iget-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mExtraUsageObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodGetLocation:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    :cond_0
    move-object v1, v3

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    .local v1, "retObj":Ljava/lang/Object;
    :try_start_0
    iget-object v4, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodGetLocation:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mExtraUsageObj:Ljava/lang/Object;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v1    # "retObj":Ljava/lang/Object;
    :goto_1
    if-eqz v1, :cond_2

    instance-of v2, v1, Landroid/location/Location;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/location/Location;

    goto :goto_0

    .restart local v1    # "retObj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mLogcatTag:Ljava/lang/String;

    const-string v4, "fail to invoke getLocation"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "retObj":Ljava/lang/Object;
    :cond_2
    move-object v1, v3

    goto :goto_0
.end method

.method public logExtraInfo1()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mExtraUsageObj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodLog1:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodLog1:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mExtraUsageObj:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mLogcatTag:Ljava/lang/String;

    const-string v2, "fail to invoke log1"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public logExtraInfo2()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mExtraUsageObj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodLog2:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodLog2:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mExtraUsageObj:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mLogcatTag:Ljava/lang/String;

    const-string v2, "fail to invoke log2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public logExtraInfo3()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mExtraUsageObj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodLog3:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodLog3:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mExtraUsageObj:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mLogcatTag:Ljava/lang/String;

    const-string v2, "fail to invoke log3"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public logExtraInfo4()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mExtraUsageObj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodLog4:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodLog4:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mExtraUsageObj:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mLogcatTag:Ljava/lang/String;

    const-string v2, "fail to invoke log4"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public logExtraInfo5(Lcom/htc/utils/ulog/ULogData;)V
    .locals 5
    .param p1, "ulogdata"    # Lcom/htc/utils/ulog/ULogData;

    .prologue
    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mExtraUsageObj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodLog5:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodLog5:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mExtraUsageObj:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mLogcatTag:Ljava/lang/String;

    const-string v2, "fail to invoke log5"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public logExtraInfo6()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mExtraUsageObj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodLog6:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodLog6:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mExtraUsageObj:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mLogcatTag:Ljava/lang/String;

    const-string v2, "fail to invoke log6"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public logExtraInfo7()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mExtraUsageObj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodLog7:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodLog7:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mExtraUsageObj:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mLogcatTag:Ljava/lang/String;

    const-string v2, "fail to invoke log7"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public logExtraInfo8()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mExtraUsageObj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodLog8:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodLog8:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mExtraUsageObj:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mLogcatTag:Ljava/lang/String;

    const-string v2, "fail to invoke log8"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestLocationUpdate()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mExtraUsageObj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodRequestLocationUpdate:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodRequestLocationUpdate:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mExtraUsageObj:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mLogcatTag:Ljava/lang/String;

    const-string v2, "fail to invoke requestLocationUpdate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setup(Landroid/os/Looper;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    iget-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mExtraUsageObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodSetup:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .local v1, "objParameters":[Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodSetup:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mExtraUsageObj:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mLogcatTag:Ljava/lang/String;

    const-string v3, "fail to invoke setup"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterLocationUpdate()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mExtraUsageObj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodUnregisterLocationUpdate:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mMethodUnregisterLocationUpdate:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mExtraUsageObj:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/server/deviceinfo/ExtraUsageWrapper;->mLogcatTag:Ljava/lang/String;

    const-string v2, "fail to invoke unregisterLocationUpdate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
