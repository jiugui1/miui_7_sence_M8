.class public Lcom/kikin/requests/RequestSettings;
.super Ljava/lang/Object;
.source "RequestSettings.java"


# static fields
.field private static final ACCEPT_LANG_FOR_US_LOCALE:Ljava/lang/String; = "en-US"

.field private static final KIKIN_VERSION:Ljava/lang/String; = "4.0.1.3"

.field private static final PREVIOUS_VERSION:Ljava/lang/String; = "3.1"

.field private static final TAG:Ljava/lang/String; = "RequestSettings"

.field private static sLocale:Ljava/util/Locale;

.field private static sLockForLocaleSettings:Ljava/lang/Object;

.field private static sSystemLocale:Ljava/util/Locale;


# instance fields
.field private mAcceptLanguage:Ljava/lang/String;

.field private mAppName:Ljava/lang/String;

.field private mApplicationNameString:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFullscreen:Z

.field private mPackageName:Ljava/lang/String;

.field private mSystemLanguage:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;

.field private mVersionCode:I

.field private mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kikin/requests/RequestSettings;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/kikin/requests/RequestSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/kikin/requests/RequestSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Lcom/kikin/requests/RequestSettings;->sLocale:Ljava/util/Locale;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v1, Lcom/kikin/requests/RequestSettings;->sSystemLocale:Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/requests/RequestSettings;->mPackageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kikin/requests/RequestSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/requests/RequestSettings;->mAcceptLanguage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kikin/requests/RequestSettings;->getCurrentSystemLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/requests/RequestSettings;->mSystemLanguage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kikin/requests/RequestSettings;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/requests/RequestSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/kikin/requests/RequestSettings;->getApplicationNameString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/requests/RequestSettings;->mApplicationNameString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/kikin/requests/RequestSettings;->getAppName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/requests/RequestSettings;->mAppName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/kikin/requests/RequestSettings;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .local v0, "pInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, p0, Lcom/kikin/requests/RequestSettings;->mVersionCode:I

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/kikin/requests/RequestSettings;->mVersionName:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/kikin/requests/RequestSettings;->mVersionCode:I

    const-string v1, ""

    iput-object v1, p0, Lcom/kikin/requests/RequestSettings;->mVersionName:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kikin/requests/RequestSettings;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/kikin/requests/RequestSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kikin/requests/RequestSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/kikin/requests/RequestSettings;->sLocale:Ljava/util/Locale;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v0, Lcom/kikin/requests/RequestSettings;->sSystemLocale:Ljava/util/Locale;

    const-string v0, "user_agent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/requests/RequestSettings;->mUserAgent:Ljava/lang/String;

    const-string v0, "accept_language"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/requests/RequestSettings;->mAcceptLanguage:Ljava/lang/String;

    const-string v0, "system_language"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/requests/RequestSettings;->mSystemLanguage:Ljava/lang/String;

    const-string v0, "app_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/requests/RequestSettings;->mAppName:Ljava/lang/String;

    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/requests/RequestSettings;->mPackageName:Ljava/lang/String;

    const-string v0, "version_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kikin/requests/RequestSettings;->mVersionCode:I

    const-string v0, "fullscreen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kikin/requests/RequestSettings;->mFullscreen:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kikin/requests/RequestSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kikin/requests/RequestSettings;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/requests/RequestSettings;->mApplicationNameString:Ljava/lang/String;

    return-void
.end method

.method private addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kikin/requests/RequestSettings;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "language":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .local v0, "country":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v0    # "country":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "langCode"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .end local p1    # "langCode":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "langCode":Ljava/lang/String;
    :cond_1
    const-string v0, "iw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "he"

    goto :goto_0

    :cond_2
    const-string v0, "in"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "id"

    goto :goto_0

    :cond_3
    const-string v0, "ji"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "yi"

    goto :goto_0
.end method

.method private getCurrentAcceptLanguage()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v3, Lcom/kikin/requests/RequestSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v1, Lcom/kikin/requests/RequestSettings;->sLocale:Ljava/util/Locale;

    .local v1, "locale":Ljava/util/Locale;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, v1}, Lcom/kikin/requests/RequestSettings;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "en-US"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v1    # "locale":Ljava/util/Locale;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private getCurrentSystemLanguage()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v3, Lcom/kikin/requests/RequestSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v1, Lcom/kikin/requests/RequestSettings;->sSystemLocale:Ljava/util/Locale;

    .local v1, "locale":Ljava/util/Locale;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, v1}, Lcom/kikin/requests/RequestSettings;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v1    # "locale":Ljava/util/Locale;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private getCurrentUserAgent()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x0

    sget-object v10, Lcom/kikin/requests/RequestSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    sget-object v5, Lcom/kikin/requests/RequestSettings;->sLocale:Ljava/util/Locale;

    .local v5, "locale":Ljava/util/Locale;
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, "buffer":Ljava/lang/StringBuffer;
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .local v8, "version":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v9, "; "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .local v4, "language":Ljava/lang/String;
    if-eqz v4, :cond_5

    invoke-direct {p0, v4}, Lcom/kikin/requests/RequestSettings;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .local v2, "country":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v9, "-"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .end local v2    # "country":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v9, ";"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .local v7, "model":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .local v3, "id":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    const-string v9, " Build/"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v9, p0, Lcom/kikin/requests/RequestSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040367

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "mobile":Ljava/lang/String;
    iget-object v9, p0, Lcom/kikin/requests/RequestSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040366

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "base":Ljava/lang/String;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v11

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .end local v0    # "base":Ljava/lang/String;
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "language":Ljava/lang/String;
    .end local v5    # "locale":Ljava/util/Locale;
    .end local v6    # "mobile":Ljava/lang/String;
    .end local v7    # "model":Ljava/lang/String;
    .end local v8    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    .restart local v5    # "locale":Ljava/util/Locale;
    .restart local v8    # "version":Ljava/lang/String;
    :cond_3
    const-string v9, "3.1"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    const-string v9, "1.0"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .restart local v4    # "language":Ljava/lang/String;
    :cond_5
    const-string v9, "en"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static final getKikinVersion()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "4.0.1.3"

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getAcceptLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/kikin/requests/RequestSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .local v0, "currentLocale":Ljava/util/Locale;
    sget-object v1, Lcom/kikin/requests/RequestSettings;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sput-object v0, Lcom/kikin/requests/RequestSettings;->sLocale:Ljava/util/Locale;

    invoke-direct {p0}, Lcom/kikin/requests/RequestSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/requests/RequestSettings;->mAcceptLanguage:Ljava/lang/String;

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/kikin/requests/RequestSettings;->mAcceptLanguage:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v1

    .end local v0    # "currentLocale":Ljava/util/Locale;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAppName()Ljava/lang/String;
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mAppName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mAppName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kikin/requests/RequestSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/requests/RequestSettings;->mAppName:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mAppName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    const-string v0, ""

    iput-object v0, p0, Lcom/kikin/requests/RequestSettings;->mAppName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getApplicationNameString()Ljava/lang/String;
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mApplicationNameString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mApplicationNameString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/kikin/requests/RequestSettings;->getAppName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/requests/RequestSettings;->mAppName:Ljava/lang/String;

    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mAppName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mAppName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kikin/requests/RequestSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kikin/requests/RequestSettings;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/requests/RequestSettings;->mApplicationNameString:Ljava/lang/String;

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mApplicationNameString:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_4
    :try_start_1
    const-string v0, ""

    iput-object v0, p0, Lcom/kikin/requests/RequestSettings;->mApplicationNameString:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 4

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v1, p0, Lcom/kikin/requests/RequestSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/kikin/requests/RequestSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/requests/RequestSettings;->mPackageName:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mPackageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    const-string v0, ""

    iput-object v0, p0, Lcom/kikin/requests/RequestSettings;->mPackageName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSystemLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/kikin/requests/RequestSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .local v0, "locale":Ljava/util/Locale;
    sget-object v1, Lcom/kikin/requests/RequestSettings;->sSystemLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sput-object v0, Lcom/kikin/requests/RequestSettings;->sSystemLocale:Ljava/util/Locale;

    :cond_0
    invoke-direct {p0}, Lcom/kikin/requests/RequestSettings;->getCurrentSystemLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/requests/RequestSettings;->mSystemLanguage:Ljava/lang/String;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/kikin/requests/RequestSettings;->mSystemLanguage:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v1

    .end local v0    # "locale":Ljava/util/Locale;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getUserAgentString()Ljava/lang/String;
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/kikin/requests/RequestSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .local v0, "currentLocale":Ljava/util/Locale;
    sget-object v1, Lcom/kikin/requests/RequestSettings;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sput-object v0, Lcom/kikin/requests/RequestSettings;->sLocale:Ljava/util/Locale;

    invoke-direct {p0}, Lcom/kikin/requests/RequestSettings;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/requests/RequestSettings;->mUserAgent:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kikin/requests/RequestSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/requests/RequestSettings;->mAcceptLanguage:Ljava/lang/String;

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/kikin/requests/RequestSettings;->mUserAgent:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v1

    .end local v0    # "currentLocale":Ljava/util/Locale;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isFullscreen()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/kikin/requests/RequestSettings;->mFullscreen:Z

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "user_agent"

    iget-object v2, p0, Lcom/kikin/requests/RequestSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "accept_language"

    iget-object v2, p0, Lcom/kikin/requests/RequestSettings;->mAcceptLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "system_language"

    iget-object v2, p0, Lcom/kikin/requests/RequestSettings;->mSystemLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_name"

    iget-object v2, p0, Lcom/kikin/requests/RequestSettings;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "package_name"

    iget-object v2, p0, Lcom/kikin/requests/RequestSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "version_code"

    iget v2, p0, Lcom/kikin/requests/RequestSettings;->mVersionCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "version_name"

    iget-object v2, p0, Lcom/kikin/requests/RequestSettings;->mVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
