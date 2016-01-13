.class public Lcom/android/server/facebook/method/LaunchDashMethod;
.super Lcom/android/server/facebook/method/FacebookMethod;
.source "LaunchDashMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/facebook/method/LaunchDashMethod$LaunchDashServer;
    }
.end annotation


# static fields
.field protected static final DASH_ACTION:Ljava/lang/String; = "com.facebook.intent.action.DASH"

.field private static final DEBUG:Z = false

.field public static final METHOD_NAME:Ljava/lang/String; = "launchDash"

.field protected static final PERMISSION:Ljava/lang/String; = "com.facebook.system.permission.LAUNCH_DASH"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/server/facebook/method/LaunchDashMethod;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/facebook/method/LaunchDashMethod;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string v0, "launchDash"

    invoke-direct {p0, p1, v0}, Lcom/android/server/facebook/method/FacebookMethod;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static launch(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v11, 0x10000000

    const/high16 v10, 0x10000

    const/4 v9, 0x0

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "device_provisioned"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const-string v7, "dashEnabled"

    invoke-static {v7}, Lcom/android/server/facebook/method/PropertyHelper;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 88
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.facebook.intent.action.DASH"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    invoke-virtual {v0, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    invoke-virtual {v4, v0, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 94
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 95
    const/4 v5, -0x1

    .line 97
    .local v5, "priority":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 98
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    const-string v7, "com.facebook.system.permission.LAUNCH_DASH"

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    .line 100
    if-nez v0, :cond_3

    .line 101
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "i":Landroid/content/Intent;
    const-string v7, "com.facebook.intent.action.DASH"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    invoke-virtual {v0, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    :cond_3
    iget v7, v6, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v7, v5, :cond_2

    .line 107
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget v5, v6, Landroid/content/pm/ResolveInfo;->priority:I

    goto :goto_1

    .line 113
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    if-eqz v0, :cond_0

    .line 117
    invoke-static {p0, v9, v9}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 120
    .local v3, "options":Landroid/app/ActivityOptions;
    :try_start_0
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {p0, v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v7

    goto :goto_0
.end method


# virtual methods
.method public getClient()Lcom/android/server/facebook/method/FacebookMethod$Client;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/facebook/method/FacebookMethod$Client",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Lcom/android/server/facebook/method/FacebookMethod$Client;

    invoke-direct {v0, p0}, Lcom/android/server/facebook/method/FacebookMethod$Client;-><init>(Lcom/android/server/facebook/method/FacebookMethod;)V

    return-object v0
.end method

.method public getServer(Landroid/content/Context;)Lcom/android/server/facebook/method/FacebookMethod$Server;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    new-instance v0, Lcom/android/server/facebook/method/LaunchDashMethod$LaunchDashServer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/facebook/method/LaunchDashMethod$LaunchDashServer;-><init>(Lcom/android/server/facebook/method/LaunchDashMethod;Landroid/content/Context;)V

    return-object v0
.end method
