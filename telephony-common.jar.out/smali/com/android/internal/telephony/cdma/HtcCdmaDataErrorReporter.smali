.class public Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;
.super Landroid/os/Handler;
.source "HtcCdmaDataErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$DataErrorRecord;,
        Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$ConnReceiver;
    }
.end annotation


# static fields
.field public static final CDMA_DATA_ERROR_CODE_IGNORE_MIP:Ljava/lang/String; = "CDMA_DATA_ERROR_CODE_IGNORE_MIP"

.field public static final CDMA_DATA_ERROR_CODE_IN_STRING:Ljava/lang/String; = "CDMA_DATA_ERROR_CODE_IN_STRING"

.field public static final CDMA_DATA_ERROR_CODE_IS_SHOWING:Ljava/lang/String; = "CDMA_DATA_ERROR_CODE_IS_SHOWING"

.field public static final DIALOG_TYPE_DATAERROR:I = 0x2

.field private static final EVENT_LTE_EMM_CAUSE_CODE_CHANGED:I = 0x1

.field private static final EVENT_MIP_ERROR_UPDATE:I = 0x2

.field public static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final NOTIFICATION_ID_DATAERROR:I = 0x108008a

.field private static final TAG:Ljava/lang/String; = "HtcCdmaDataErrorReporter"


# instance fields
.field private final DBG:Z

.field private defaultNetwork:[I

.field private ignoreAllMIPError:Z

.field private mCM:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mMIPErrorIgnoreObserver:Landroid/database/ContentObserver;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mReceiver:Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$ConnReceiver;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 136
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 74
    new-instance v1, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$1;

    invoke-direct {v1, p0, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$1;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mMIPErrorIgnoreObserver:Landroid/database/ContentObserver;

    .line 105
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->defaultNetwork:[I

    .line 125
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 126
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->ignoreAllMIPError:Z

    .line 129
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->DBG:Z

    .line 137
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mContext:Landroid/content/Context;

    .line 138
    new-instance v1, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$ConnReceiver;

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$ConnReceiver;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mReceiver:Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$ConnReceiver;

    .line 139
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "com.htc.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v1, "com.htc.intent.action.REPORT_DATA_CONNECTION_ERROR_CODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForLteEmmCauseCodeReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 150
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForMIPFailCause(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 152
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mReceiver:Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$ConnReceiver;

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "CDMA_DATA_ERROR_CODE_IGNORE_MIP"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mMIPErrorIgnoreObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 155
    return-void

    .line 105
    nop

    :array_0
    .array-data 4
        0x0
        0x4
        0x37
        0x1
        0x6
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->isNeedToShowError()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->showNotification(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->ignoreAllMIPError:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->ignoreAllMIPError:Z

    return p1
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getPackageResourceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "stringName"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->loadContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    .line 312
    .local v1, "settingsContext":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 313
    const-string v3, ""

    .line 321
    :goto_0
    return-object v3

    .line 317
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "string"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 318
    .local v2, "stringId":I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 319
    .end local v2    # "stringId":I
    :catch_0
    move-exception v0

    .line 320
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "HtcCdmaDataErrorReporter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot get resource string."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v3, ""

    goto :goto_0
.end method

.method private hasActiveDefaultNetwork()Z
    .locals 7

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mCM:Landroid/net/ConnectivityManager;

    .line 210
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mCM:Landroid/net/ConnectivityManager;

    if-eqz v5, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->defaultNetwork:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget v4, v0, v1

    .line 213
    .local v4, "type":I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 214
    .local v3, "ni":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 215
    const/4 v5, 0x1

    .line 222
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    .end local v4    # "type":I
    :goto_1
    return v5

    .line 212
    .restart local v0    # "arr$":[I
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "ni":Landroid/net/NetworkInfo;
    .restart local v4    # "type":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    .end local v4    # "type":I
    :cond_1
    const-string v5, "HtcCdmaDataErrorReporter"

    const-string v6, "mCM is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isNeedToShowError()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 226
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mCM:Landroid/net/ConnectivityManager;

    .line 227
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    move v0, v3

    .line 228
    .local v0, "airMode":Z
    :goto_0
    const/4 v1, 0x0

    .line 229
    .local v1, "mobileDataEnabled":Z
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 230
    .local v2, "phoneType":I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mCM:Landroid/net/ConnectivityManager;

    if-eqz v5, :cond_4

    .line 231
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    .line 236
    :goto_1
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "HtcCdmaDataErrorReporter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "airMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; mobileDataEnabled"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; hasActiveDefaultNetwork:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->hasActiveDefaultNetwork()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; phoneType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->hasActiveDefaultNetwork()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_5

    .line 242
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$DataErrorRecord;->clearError()V

    .line 249
    :cond_2
    :goto_2
    return v4

    .end local v0    # "airMode":Z
    .end local v1    # "mobileDataEnabled":Z
    .end local v2    # "phoneType":I
    :cond_3
    move v0, v4

    .line 227
    goto :goto_0

    .line 233
    .restart local v0    # "airMode":Z
    .restart local v1    # "mobileDataEnabled":Z
    .restart local v2    # "phoneType":I
    :cond_4
    const-string v5, "HtcCdmaDataErrorReporter"

    const-string v6, "mCM is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 244
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$DataErrorRecord;->getHasError()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 246
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "CDMA_DATA_ERROR_CODE_IN_STRING"

    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$DataErrorRecord;->convertToString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move v4, v3

    .line 247
    goto :goto_2
.end method

.method public static isSprintAlliance()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "sku_id"

    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v0

    .line 133
    .local v0, "skuId":I
    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0x55

    if-eq v0, v2, :cond_0

    const/16 v2, 0x62

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private loadContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 328
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 330
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 336
    :cond_0
    :goto_0
    return-object v0

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "HtcCdmaDataErrorReporter"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showNotification(Z)V
    .locals 13
    .param p1, "show"    # Z

    .prologue
    const v12, 0x108008a

    const/4 v11, 0x0

    .line 254
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 256
    .local v4, "manager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_3

    .line 260
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v2, "intent":Landroid/content/Intent;
    const-string v8, "com.android.settings"

    const-string v9, "com.android.settings.framework.core.wireless.mobilenetwork.HtcMobileDataDialog"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v8, "type"

    const/4 v9, 0x2

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    const/high16 v8, 0x10840000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 267
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mContext:Landroid/content/Context;

    const/high16 v9, 0x8000000

    invoke-static {v8, v11, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 270
    .local v6, "pending":Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 271
    .local v1, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v1, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v8

    const-string v9, "com.android.settings"

    const-string v10, "mobiledata_error_notification_sprint"

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->getPackageResourceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 276
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 278
    .local v5, "notification":Landroid/app/Notification;
    iget v8, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x20

    iput v8, v5, Landroid/app/Notification;->flags:I

    .line 279
    if-eqz v5, :cond_1

    .line 280
    invoke-virtual {v4, v12, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 286
    :goto_0
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "CDMA_DATA_ERROR_CODE_IS_SHOWING"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 287
    .local v3, "isShowing":I
    const/4 v8, 0x1

    if-ne v3, v8, :cond_0

    .line 288
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 289
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v7, v2, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 290
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_2

    .line 291
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 299
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "builder":Landroid/app/Notification$Builder;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "isShowing":I
    .end local v5    # "notification":Landroid/app/Notification;
    .end local v6    # "pending":Landroid/app/PendingIntent;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_1
    return-void

    .line 282
    .restart local v1    # "builder":Landroid/app/Notification$Builder;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v5    # "notification":Landroid/app/Notification;
    .restart local v6    # "pending":Landroid/app/PendingIntent;
    :cond_1
    const-string v8, "HtcCdmaDataErrorReporter"

    const-string v9, "notification is null!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 293
    .restart local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3    # "isShowing":I
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    const-string v8, "HtcCdmaDataErrorReporter"

    const-string v9, "no such activity!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 297
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "builder":Landroid/app/Notification$Builder;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "isShowing":I
    .end local v5    # "notification":Landroid/app/Notification;
    .end local v6    # "pending":Landroid/app/PendingIntent;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    invoke-virtual {v4, v12}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 159
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 160
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 163
    const-string v3, "HtcCdmaDataErrorReporter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception for LTE EMM code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :cond_1
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v2, v3

    check-cast v2, [I

    .line 167
    .local v2, "emm":[I
    if-nez v2, :cond_2

    .line 168
    const-string v3, "HtcCdmaDataErrorReporter"

    const-string v4, "EMM is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :cond_2
    aget v3, v2, v6

    sput v3, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$DataErrorRecord;->LTE_EMM:I

    .line 172
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->isNeedToShowError()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->showNotification(Z)V

    .line 174
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcCdmaDataErrorReporter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EMM reject_srv_domain:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rej_cause:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    .end local v2    # "emm":[I
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->ignoreAllMIPError:Z

    if-eqz v3, :cond_3

    .line 181
    const-string v3, "HtcCdmaDataErrorReporter"

    const-string v4, "ignore all MIP during specific case"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    :cond_3
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    .line 187
    const-string v3, "HtcCdmaDataErrorReporter"

    const-string v4, "Exception mip mode:"

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 190
    :cond_4
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    .line 191
    .local v0, "MIPData":[I
    if-nez v0, :cond_5

    .line 192
    const-string v3, "HtcCdmaDataErrorReporter"

    const-string v4, "MIP without parameter"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 195
    :cond_5
    aget v3, v0, v6

    sput v3, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$DataErrorRecord;->MIP:I

    .line 196
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->isNeedToShowError()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->showNotification(Z)V

    .line 198
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcCdmaDataErrorReporter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MIP Message ID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CasueCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public release()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mReceiver:Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$ConnReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mReceiver:Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$ConnReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mMIPErrorIgnoreObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLteEmmCauseCodeReceived(Landroid/os/Handler;)V

    .line 307
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;->showNotification(Z)V

    .line 308
    return-void
.end method
