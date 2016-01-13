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
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/kikin/requests/RequestSettings;->mContext:Landroid/content/Context;

    .line 82
    sget-object v1, Lcom/kikin/requests/RequestSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/kikin/requests/RequestSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    .line 86
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Lcom/kikin/requests/RequestSettings;->sLocale:Ljava/util/Locale;

    .line 87
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v1, Lcom/kikin/requests/RequestSettings;->sSystemLocale:Ljava/util/Locale;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/requests/RequestSettings;->mPackageName:Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Lcom/kikin/requests/RequestSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/requests/RequestSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Lcom/kikin/requests/RequestSettings;->getCurrentSystemLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/requests/RequestSettings;->mSystemLanguage:Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Lcom/kikin/requests/RequestSettings;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/requests/RequestSettings;->mUserAgent:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/kikin/requests/RequestSettings;->getApplicationNameString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/requests/RequestSettings;->mApplicationNameString:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/kikin/requests/RequestSettings;->getAppName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/requests/RequestSettings;->mAppName:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/kikin/requests/RequestSettings;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 98
    .local v0, "pInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_1

    .line 99
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, p0, Lcom/kikin/requests/RequestSettings;->mVersionCode:I

    .line 100
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/kikin/requests/RequestSettings;->mVersionName:Ljava/lang/String;

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/kikin/requests/RequestSettings;->mVersionCode:I

    .line 103
    const-string v1, ""

    iput-object v1, p0, Lcom/kikin/requests/RequestSettings;->mVersionName:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kikin/requests/RequestSettings;->mContext:Landroid/content/Context;

    .line 119
    sget-object v0, Lcom/kikin/requests/RequestSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kikin/requests/RequestSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    .line 123
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/kikin/requests/RequestSettings;->sLocale:Ljava/util/Locale;

    .line 124
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v0, Lcom/kikin/requests/RequestSettings;->sSystemLocale:Ljava/util/Locale;

    .line 126
    const-string v0, "user_agent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/requests/RequestSettings;->mUserAgent:Ljava/lang/String;

    .line 127
    const-string v0, "accept_language"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/requests/RequestSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 128
    const-string v0, "system_language"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/requests/RequestSettings;->mSystemLanguage:Ljava/lang/String;

    .line 129
    const-string v0, "app_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/requests/RequestSettings;->mAppName:Ljava/lang/String;

    .line 130
    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/requests/RequestSettings;->mPackageName:Ljava/lang/String;

    .line 131
    const-string v0, "version_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kikin/requests/RequestSettings;->mVersionCode:I

    .line 132
    const-string v0, "fullscreen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kikin/requests/RequestSettings;->mFullscreen:Z

    .line 133
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

    .line 134
    return-void
.end method

.method private addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 407
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kikin/requests/RequestSettings;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "language":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "country":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 412
    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .end local v0    # "country":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "langCode"    # Ljava/lang/String;

    .prologue
    .line 303
    if-nez p1, :cond_1

    .line 304
    const/4 p1, 0x0

    .line 316
    .end local p1    # "langCode":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 306
    .restart local p1    # "langCode":Ljava/lang/String;
    :cond_1
    const-string v0, "iw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    const-string p1, "he"

    goto :goto_0

    .line 309
    :cond_2
    const-string v0, "in"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 311
    const-string p1, "id"

    goto :goto_0

    .line 312
    :cond_3
    const-string v0, "ji"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const-string p1, "yi"

    goto :goto_0
.end method

.method private getCurrentAcceptLanguage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 380
    sget-object v3, Lcom/kikin/requests/RequestSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v3

    .line 381
    :try_start_0
    sget-object v1, Lcom/kikin/requests/RequestSettings;->sLocale:Ljava/util/Locale;

    .line 382
    .local v1, "locale":Ljava/util/Locale;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, v1}, Lcom/kikin/requests/RequestSettings;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 386
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 387
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 388
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :cond_0
    const-string v2, "en-US"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 382
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
    .line 398
    sget-object v3, Lcom/kikin/requests/RequestSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v3

    .line 399
    :try_start_0
    sget-object v1, Lcom/kikin/requests/RequestSettings;->sSystemLocale:Ljava/util/Locale;

    .line 400
    .local v1, "locale":Ljava/util/Locale;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, v1}, Lcom/kikin/requests/RequestSettings;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 403
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 400
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

    .line 321
    sget-object v10, Lcom/kikin/requests/RequestSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v10

    .line 322
    :try_start_0
    sget-object v5, Lcom/kikin/requests/RequestSettings;->sLocale:Ljava/util/Locale;

    .line 323
    .local v5, "locale":Ljava/util/Locale;
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 326
    .local v1, "buffer":Ljava/lang/StringBuffer;
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 327
    .local v8, "version":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 328
    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 330
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    :goto_0
    const-string v9, "; "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, "language":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 343
    invoke-direct {p0, v4}, Lcom/kikin/requests/RequestSettings;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "country":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 346
    const-string v9, "-"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    .end local v2    # "country":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v9, ";"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 357
    .local v7, "model":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 358
    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    :cond_1
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 363
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 364
    const-string v9, " Build/"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    :cond_2
    iget-object v9, p0, Lcom/kikin/requests/RequestSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040367

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 369
    .local v6, "mobile":Ljava/lang/String;
    iget-object v9, p0, Lcom/kikin/requests/RequestSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040366

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "base":Ljava/lang/String;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v11

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 323
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

    .line 334
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    .restart local v5    # "locale":Ljava/util/Locale;
    .restart local v8    # "version":Ljava/lang/String;
    :cond_3
    const-string v9, "3.1"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 338
    :cond_4
    const-string v9, "1.0"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 351
    .restart local v4    # "language":Ljava/lang/String;
    :cond_5
    const-string v9, "en"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static final getKikinVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const-string v0, "4.0.1.3"

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getAcceptLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/kikin/requests/RequestSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 165
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 166
    .local v0, "currentLocale":Ljava/util/Locale;
    sget-object v1, Lcom/kikin/requests/RequestSettings;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    sput-object v0, Lcom/kikin/requests/RequestSettings;->sLocale:Ljava/util/Locale;

    .line 168
    invoke-direct {p0}, Lcom/kikin/requests/RequestSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/requests/RequestSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 170
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :try_start_2
    iget-object v1, p0, Lcom/kikin/requests/RequestSettings;->mAcceptLanguage:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v1

    .line 170
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

    .line 164
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAppName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mAppName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mAppName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 237
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

    .line 244
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mAppName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 240
    :cond_2
    :try_start_1
    const-string v0, ""

    iput-object v0, p0, Lcom/kikin/requests/RequestSettings;->mAppName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getApplicationNameString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mApplicationNameString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mApplicationNameString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/kikin/requests/RequestSettings;->getAppName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/requests/RequestSettings;->mAppName:Ljava/lang/String;

    .line 216
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

    .line 218
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

    .line 223
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mApplicationNameString:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 220
    :cond_4
    :try_start_1
    const-string v0, ""

    iput-object v0, p0, Lcom/kikin/requests/RequestSettings;->mApplicationNameString:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 4

    .prologue
    .line 248
    monitor-enter p0

    const/4 v0, 0x0

    .line 251
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

    .line 254
    :goto_0
    monitor-exit p0

    return-object v0

    .line 248
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 252
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/requests/RequestSettings;->mPackageName:Ljava/lang/String;

    .line 276
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kikin/requests/RequestSettings;->mPackageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 272
    :cond_2
    :try_start_1
    const-string v0, ""

    iput-object v0, p0, Lcom/kikin/requests/RequestSettings;->mPackageName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSystemLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/kikin/requests/RequestSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 192
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 193
    .local v0, "locale":Ljava/util/Locale;
    sget-object v1, Lcom/kikin/requests/RequestSettings;->sSystemLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    sput-object v0, Lcom/kikin/requests/RequestSettings;->sSystemLocale:Ljava/util/Locale;

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/kikin/requests/RequestSettings;->getCurrentSystemLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/requests/RequestSettings;->mSystemLanguage:Ljava/lang/String;

    .line 197
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :try_start_2
    iget-object v1, p0, Lcom/kikin/requests/RequestSettings;->mSystemLanguage:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v1

    .line 197
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

    .line 191
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getUserAgentString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/kikin/requests/RequestSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 145
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 146
    .local v0, "currentLocale":Ljava/util/Locale;
    sget-object v1, Lcom/kikin/requests/RequestSettings;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    sput-object v0, Lcom/kikin/requests/RequestSettings;->sLocale:Ljava/util/Locale;

    .line 148
    invoke-direct {p0}, Lcom/kikin/requests/RequestSettings;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/requests/RequestSettings;->mUserAgent:Ljava/lang/String;

    .line 149
    invoke-direct {p0}, Lcom/kikin/requests/RequestSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/requests/RequestSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 151
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :try_start_2
    iget-object v1, p0, Lcom/kikin/requests/RequestSettings;->mUserAgent:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v1

    .line 151
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

    .line 144
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/kikin/requests/RequestSettings;->mFullscreen:Z

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 287
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 288
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "user_agent"

    iget-object v2, p0, Lcom/kikin/requests/RequestSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v1, "accept_language"

    iget-object v2, p0, Lcom/kikin/requests/RequestSettings;->mAcceptLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v1, "system_language"

    iget-object v2, p0, Lcom/kikin/requests/RequestSettings;->mSystemLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v1, "app_name"

    iget-object v2, p0, Lcom/kikin/requests/RequestSettings;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v1, "package_name"

    iget-object v2, p0, Lcom/kikin/requests/RequestSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v1, "version_code"

    iget v2, p0, Lcom/kikin/requests/RequestSettings;->mVersionCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 294
    const-string v1, "version_name"

    iget-object v2, p0, Lcom/kikin/requests/RequestSettings;->mVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-object v0
.end method
