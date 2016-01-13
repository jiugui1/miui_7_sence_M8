.class public abstract Lcom/htc/content/HtcClassResolver;
.super Ljava/lang/Object;
.source "HtcClassResolver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mRemoteClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/htc/content/HtcIRemoteTransaction;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteContext:Landroid/content/Context;

.field private final mRemoteException:Ljava/lang/Exception;

.field private final mRemoteInstance:Lcom/htc/content/HtcIRemoteTransaction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/htc/content/HtcClassResolver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/content/HtcClassResolver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0}, Lcom/htc/content/HtcClassResolver;->getRemotePackageName()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/content/HtcClassResolver;->getRemoteClassName()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "className":Ljava/lang/String;
    const/4 v4, 0x0

    .line 57
    .local v4, "remoteContext":Landroid/content/Context;
    const/4 v3, 0x0

    .line 58
    .local v3, "remoteClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/htc/content/HtcIRemoteTransaction;>;"
    const/4 v6, 0x0

    .line 59
    .local v6, "remoteInstance":Lcom/htc/content/HtcIRemoteTransaction;
    const/4 v5, 0x0

    .line 63
    .local v5, "remoteException":Ljava/lang/Exception;
    :try_start_0
    invoke-static {p1, v2}, Lcom/htc/content/HtcClassResolver;->createRemoteContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v4

    .line 66
    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-static {v0, v7, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 70
    invoke-virtual {p0, v3}, Lcom/htc/content/HtcClassResolver;->newInstance(Ljava/lang/Class;)Lcom/htc/content/HtcIRemoteTransaction;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 93
    iput-object v4, p0, Lcom/htc/content/HtcClassResolver;->mRemoteContext:Landroid/content/Context;

    .line 94
    iput-object v3, p0, Lcom/htc/content/HtcClassResolver;->mRemoteClass:Ljava/lang/Class;

    .line 95
    iput-object v6, p0, Lcom/htc/content/HtcClassResolver;->mRemoteInstance:Lcom/htc/content/HtcIRemoteTransaction;

    .line 96
    :goto_0
    iput-object v5, p0, Lcom/htc/content/HtcClassResolver;->mRemoteException:Ljava/lang/Exception;

    .line 98
    return-void

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v5, v1

    .line 74
    :try_start_1
    sget-object v7, Lcom/htc/content/HtcClassResolver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find the package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    iput-object v4, p0, Lcom/htc/content/HtcClassResolver;->mRemoteContext:Landroid/content/Context;

    .line 94
    iput-object v3, p0, Lcom/htc/content/HtcClassResolver;->mRemoteClass:Ljava/lang/Class;

    .line 95
    iput-object v6, p0, Lcom/htc/content/HtcClassResolver;->mRemoteInstance:Lcom/htc/content/HtcIRemoteTransaction;

    goto :goto_0

    .line 76
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    move-object v5, v1

    .line 78
    :try_start_2
    sget-object v7, Lcom/htc/content/HtcClassResolver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find the class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    iput-object v4, p0, Lcom/htc/content/HtcClassResolver;->mRemoteContext:Landroid/content/Context;

    .line 94
    iput-object v3, p0, Lcom/htc/content/HtcClassResolver;->mRemoteClass:Ljava/lang/Class;

    .line 95
    iput-object v6, p0, Lcom/htc/content/HtcClassResolver;->mRemoteInstance:Lcom/htc/content/HtcIRemoteTransaction;

    goto :goto_0

    .line 80
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/InstantiationException;
    move-object v5, v1

    .line 82
    :try_start_3
    sget-object v7, Lcom/htc/content/HtcClassResolver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not instantiate the class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    iput-object v4, p0, Lcom/htc/content/HtcClassResolver;->mRemoteContext:Landroid/content/Context;

    .line 94
    iput-object v3, p0, Lcom/htc/content/HtcClassResolver;->mRemoteClass:Ljava/lang/Class;

    .line 95
    iput-object v6, p0, Lcom/htc/content/HtcClassResolver;->mRemoteInstance:Lcom/htc/content/HtcIRemoteTransaction;

    goto :goto_0

    .line 84
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/ClassCastException;
    move-object v5, v1

    .line 86
    :try_start_4
    sget-object v7, Lcom/htc/content/HtcClassResolver;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    iput-object v4, p0, Lcom/htc/content/HtcClassResolver;->mRemoteContext:Landroid/content/Context;

    .line 94
    iput-object v3, p0, Lcom/htc/content/HtcClassResolver;->mRemoteClass:Ljava/lang/Class;

    .line 95
    iput-object v6, p0, Lcom/htc/content/HtcClassResolver;->mRemoteInstance:Lcom/htc/content/HtcIRemoteTransaction;

    goto :goto_0

    .line 88
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_4
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/IllegalAccessException;
    move-object v5, v1

    .line 90
    :try_start_5
    sget-object v7, Lcom/htc/content/HtcClassResolver;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 93
    iput-object v4, p0, Lcom/htc/content/HtcClassResolver;->mRemoteContext:Landroid/content/Context;

    .line 94
    iput-object v3, p0, Lcom/htc/content/HtcClassResolver;->mRemoteClass:Ljava/lang/Class;

    .line 95
    iput-object v6, p0, Lcom/htc/content/HtcClassResolver;->mRemoteInstance:Lcom/htc/content/HtcIRemoteTransaction;

    goto/16 :goto_0

    .line 93
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catchall_0
    move-exception v7

    iput-object v4, p0, Lcom/htc/content/HtcClassResolver;->mRemoteContext:Landroid/content/Context;

    .line 94
    iput-object v3, p0, Lcom/htc/content/HtcClassResolver;->mRemoteClass:Ljava/lang/Class;

    .line 95
    iput-object v6, p0, Lcom/htc/content/HtcClassResolver;->mRemoteInstance:Lcom/htc/content/HtcIRemoteTransaction;

    .line 96
    iput-object v5, p0, Lcom/htc/content/HtcClassResolver;->mRemoteException:Ljava/lang/Exception;

    .line 93
    throw v7
.end method

.method public static final createRemoteContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "remotePackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    move-object v0, p0

    .line 122
    .local v0, "remoteContext":Landroid/content/Context;
    :goto_0
    return-object v0

    .line 117
    .end local v0    # "remoteContext":Landroid/content/Context;
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "remoteContext":Landroid/content/Context;
    goto :goto_0
.end method

.method protected static newInstance(Ljava/lang/Class;Landroid/content/Context;)Lcom/htc/content/HtcIRemoteTransaction;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/htc/content/HtcIRemoteTransaction;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "remoteClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 169
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 170
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/content/HtcIRemoteTransaction;

    return-object v1
.end method

.method protected static newInstance(Ljava/lang/Class;Ljava/lang/Object;)Lcom/htc/content/HtcIRemoteTransaction;
    .locals 5
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/htc/content/HtcIRemoteTransaction;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "remoteClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 185
    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 186
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/content/HtcIRemoteTransaction;

    return-object v1
.end method


# virtual methods
.method public getRemoteClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/htc/content/HtcIRemoteTransaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/content/HtcClassResolver;->mRemoteClass:Ljava/lang/Class;

    return-object v0
.end method

.method protected abstract getRemoteClassName()Ljava/lang/String;
.end method

.method public getRemoteContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/content/HtcClassResolver;->mRemoteContext:Landroid/content/Context;

    return-object v0
.end method

.method public getRemoteException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/content/HtcClassResolver;->mRemoteException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getRemoteInstance()Lcom/htc/content/HtcIRemoteTransaction;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/content/HtcClassResolver;->mRemoteInstance:Lcom/htc/content/HtcIRemoteTransaction;

    return-object v0
.end method

.method protected abstract getRemotePackageName()Ljava/lang/String;
.end method

.method protected newInstance(Ljava/lang/Class;)Lcom/htc/content/HtcIRemoteTransaction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Lcom/htc/content/HtcIRemoteTransaction;",
            ">;)",
            "Lcom/htc/content/HtcIRemoteTransaction;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "remoteClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/htc/content/HtcIRemoteTransaction;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/content/HtcIRemoteTransaction;

    return-object v0
.end method

.method public varargs transact(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "methodId"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/htc/content/HtcClassResolver;->mRemoteInstance:Lcom/htc/content/HtcIRemoteTransaction;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/htc/content/HtcClassResolver;->mRemoteInstance:Lcom/htc/content/HtcIRemoteTransaction;

    iget-object v1, p0, Lcom/htc/content/HtcClassResolver;->mRemoteContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Lcom/htc/content/HtcIRemoteTransaction;->transact(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 240
    :goto_0
    return-object v0

    .line 238
    :cond_0
    sget-object v0, Lcom/htc/content/HtcClassResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to invoke transact("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "The remote instance is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    const/4 v0, 0x0

    goto :goto_0
.end method
