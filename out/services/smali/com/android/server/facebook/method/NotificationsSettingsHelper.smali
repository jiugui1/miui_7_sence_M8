.class public Lcom/android/server/facebook/method/NotificationsSettingsHelper;
.super Ljava/lang/Object;
.source "NotificationsSettingsHelper.java"


# static fields
.field private static final ENABLED_NOTIFICATION_LISTENERS_SEPARATOR:Ljava/lang/String; = ":"

.field private static final TAG:Ljava/lang/String; = "NotificationsSettingsHelper"


# instance fields
.field private final DEBUG:Z

.field private final ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/facebook/method/NotificationsSettingsHelper;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/facebook/method/NotificationsSettingsHelper;->DEBUG:Z

    .line 24
    iput-object p1, p0, Lcom/android/server/facebook/method/NotificationsSettingsHelper;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private getListeners(I)[Ljava/lang/String;
    .locals 4
    .param p1, "user_id"    # I

    .prologue
    .line 103
    iget-object v2, p0, Lcom/android/server/facebook/method/NotificationsSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_notification_listeners"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "enabledListeners":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    :cond_0
    const/4 v1, 0x0

    .line 114
    :goto_0
    return-object v1

    .line 113
    :cond_1
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "listeners":[Ljava/lang/String;
    goto :goto_0
.end method

.method private saveListeners(Ljava/util/ArrayList;I)V
    .locals 3
    .param p2, "user_id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, ":"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "newListeners":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/facebook/method/NotificationsSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_notification_listeners"

    if-eqz v0, :cond_0

    .end local v0    # "newListeners":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v2, v0, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 131
    return-void

    .line 127
    .restart local v0    # "newListeners":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public disableService(Ljava/lang/String;I)V
    .locals 8
    .param p1, "service_name"    # Ljava/lang/String;
    .param p2, "user_id"    # I

    .prologue
    .line 78
    invoke-direct {p0, p2}, Lcom/android/server/facebook/method/NotificationsSettingsHelper;->getListeners(I)[Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "listeners":[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v7, v5

    if-nez v7, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .local v6, "newListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 88
    .local v1, "deletionHappened":Z
    if-eqz v5, :cond_3

    .line 89
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 90
    .local v4, "listener":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 91
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 93
    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    .line 97
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "listener":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_0

    .line 98
    invoke-direct {p0, v6, p2}, Lcom/android/server/facebook/method/NotificationsSettingsHelper;->saveListeners(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public enableService(Ljava/lang/String;I)V
    .locals 8
    .param p1, "service_name"    # Ljava/lang/String;
    .param p2, "user_id"    # I

    .prologue
    .line 56
    invoke-direct {p0, p2}, Lcom/android/server/facebook/method/NotificationsSettingsHelper;->getListeners(I)[Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, "listeners":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    if-nez v5, :cond_1

    const/4 v7, 0x1

    :goto_0
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .local v6, "newListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 60
    .local v0, "alreadyIn":Z
    if-eqz v5, :cond_2

    .line 61
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 62
    .local v4, "listener":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 64
    const/4 v0, 0x1

    .line 61
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 57
    .end local v0    # "alreadyIn":Z
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "listener":Ljava/lang/String;
    .end local v6    # "newListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    array-length v7, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 68
    .restart local v0    # "alreadyIn":Z
    .restart local v6    # "newListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    if-nez v0, :cond_3

    .line 69
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-direct {p0, v6, p2}, Lcom/android/server/facebook/method/NotificationsSettingsHelper;->saveListeners(Ljava/util/ArrayList;I)V

    .line 72
    :cond_3
    return-void
.end method

.method public isNotificationListenerWhitelisted(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "service_name"    # Ljava/lang/String;
    .param p2, "user_id"    # I

    .prologue
    const/4 v5, 0x0

    .line 31
    invoke-direct {p0, p2}, Lcom/android/server/facebook/method/NotificationsSettingsHelper;->getListeners(I)[Ljava/lang/String;

    move-result-object v4

    .line 32
    .local v4, "listeners":[Ljava/lang/String;
    if-nez v4, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v5

    .line 38
    :cond_1
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 39
    .local v3, "listener":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 43
    const/4 v5, 0x1

    goto :goto_0

    .line 38
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
