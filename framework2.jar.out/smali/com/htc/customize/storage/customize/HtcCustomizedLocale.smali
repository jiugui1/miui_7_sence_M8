.class public final Lcom/htc/customize/storage/customize/HtcCustomizedLocale;
.super Ljava/lang/Object;
.source "HtcCustomizedLocale.java"


# static fields
.field private static final CATGORY_NAME:Ljava/lang/String; = "system"

.field private static final DEBUG_LOCALE:Z

.field private static final MODULE_NAME:Ljava/lang/String; = "locale"

.field private static final ORDERED_LOCALE_LIST:Ljava/lang/String; = "total_list"

.field private static final TAG:Ljava/lang/String; = "HtcCustomizedLocale"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/customize/storage/customize/HtcCustomizedLocale;->DEBUG_LOCALE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalList(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v1, 0x0

    .line 69
    .local v1, "localeList":[Ljava/lang/String;
    const-string v2, "system"

    const-string v3, "locale"

    invoke-static {p0, v2, v3}, Lcom/htc/customize/storage/HtcCustomizedStorage;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/customize/storage/customize/HtcCustomizedData;

    move-result-object v0

    .line 72
    .local v0, "customizedData":Lcom/htc/customize/storage/customize/HtcCustomizedData;
    invoke-virtual {v0}, Lcom/htc/customize/storage/customize/HtcCustomizedData;->getCustomizedData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 75
    invoke-static {v0}, Lcom/htc/customize/storage/customize/HtcCustomizedLocale;->readCustomizedLocaleList(Lcom/htc/customize/storage/customize/HtcCustomizedData;)[Ljava/lang/String;

    move-result-object v1

    .line 78
    :cond_0
    if-nez v1, :cond_2

    .line 79
    sget-boolean v2, Lcom/htc/customize/storage/customize/HtcCustomizedLocale;->DEBUG_LOCALE:Z

    if-eqz v2, :cond_1

    const-string v2, "HtcCustomizedLocale"

    const-string v3, "localeList == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1
    invoke-static {p0}, Lcom/htc/customize/storage/customize/HtcCustomizedLocale;->readDefaultLocaleList(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 82
    :cond_2
    return-object v1
.end method

.method private static readCustomizedLocaleList(Lcom/htc/customize/storage/customize/HtcCustomizedData;)[Ljava/lang/String;
    .locals 11
    .param p0, "customizedData"    # Lcom/htc/customize/storage/customize/HtcCustomizedData;

    .prologue
    const/4 v5, 0x0

    .line 98
    const-string v8, "total_list"

    invoke-virtual {p0, v8}, Lcom/htc/customize/storage/customize/HtcCustomizedData;->getStringWithFunctionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 100
    .local v7, "orderedLocales":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 101
    sget-boolean v8, Lcom/htc/customize/storage/customize/HtcCustomizedLocale;->DEBUG_LOCALE:Z

    if-eqz v8, :cond_0

    const-string v8, "HtcCustomizedLocale"

    const-string v9, "orderedLocales == null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    return-object v5

    .line 106
    :cond_1
    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "orderedLocaleList":[Ljava/lang/String;
    sget-boolean v8, Lcom/htc/customize/storage/customize/HtcCustomizedLocale;->DEBUG_LOCALE:Z

    if-eqz v8, :cond_2

    const-string v8, "HtcCustomizedLocale"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "orderedLocales = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_2
    array-length v8, v6

    new-array v2, v8, [Z

    .line 113
    .local v2, "enabledList":[Z
    const/4 v0, 0x0

    .local v0, "count":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    array-length v8, v6

    if-ge v3, v8, :cond_4

    .line 114
    aget-object v8, v6, v3

    invoke-virtual {p0, v8}, Lcom/htc/customize/storage/customize/HtcCustomizedData;->getStringWithFunctionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "locale":Ljava/lang/String;
    const-string v8, "yes"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 118
    const/4 v8, 0x1

    aput-boolean v8, v2, v3

    .line 119
    add-int/lit8 v0, v0, 0x1

    .line 113
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    :cond_3
    const/4 v8, 0x0

    aput-boolean v8, v2, v3

    goto :goto_1

    .line 126
    .end local v4    # "locale":Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_0

    .line 131
    new-array v5, v0, [Ljava/lang/String;

    .line 132
    .local v5, "newLocaleList":[Ljava/lang/String;
    const/4 v0, 0x0

    move v3, v0

    :goto_2
    array-length v8, v6

    if-ge v3, v8, :cond_0

    .line 133
    aget-boolean v8, v2, v3

    if-eqz v8, :cond_5

    .line 134
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    aget-object v8, v6, v3

    aput-object v8, v5, v0

    move v0, v1

    .line 132
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private static readDefaultLocaleList(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "localeList":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 154
    return-object v0
.end method
