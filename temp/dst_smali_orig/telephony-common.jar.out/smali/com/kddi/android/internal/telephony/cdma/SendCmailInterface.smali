.class public Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;
.super Lcom/kddi/android/internal/telephony/cdma/ISendCmailInterface$Stub;
.source "SendCmailInterface.java"


# static fields
.field private static OUTPUT_VERBOSE_LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "SendCmailInterface"

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    sput-boolean v1, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .local v0, "type":Ljava/lang/String;
    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    :cond_0
    sget-boolean v1, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    if-eqz v1, :cond_1

    const-string v1, "SendCmailInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "build type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/kddi/android/internal/telephony/cdma/ISendCmailInterface$Stub;-><init>()V

    sput-object p1, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "SendCmailInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constractor context["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "iSendCmail"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "iSendCmail"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "SendCmailInterface"

    const-string v1, "addService[iSendCmail]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiGetInstance()Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    move-result-object v0

    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->setISmsInterface(Lcom/android/internal/telephony/ISms;)V

    return-void
.end method

.method private static callingWithMmsAppSignature(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .local v0, "mPm":Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->getMmsAppSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->checkCallingSignature(Landroid/content/pm/PackageManager;ILandroid/content/pm/Signature;Z)Z

    move-result v1

    return v1
.end method

.method private static checkCallingSignature(Landroid/content/pm/PackageManager;ILandroid/content/pm/Signature;Z)Z
    .locals 9
    .param p0, "mPm"    # Landroid/content/pm/PackageManager;
    .param p1, "callingUid"    # I
    .param p2, "matching"    # Landroid/content/pm/Signature;
    .param p3, "delayWhenNotMatch"    # Z

    .prologue
    const/4 v5, 0x1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-static {p0, p1}, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->getUidSignatures(Landroid/content/pm/PackageManager;I)[Landroid/content/pm/Signature;

    move-result-object v1

    .local v1, "callingSignatures":[Landroid/content/pm/Signature;
    if-eqz v1, :cond_3

    move-object v0, v1

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .local v4, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v4, p2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-boolean v6, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    if-eqz v6, :cond_0

    const-string v6, "SendCmailInterface"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Signatures match for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "sig":Landroid/content/pm/Signature;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static getMmsAppSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;
    .locals 8
    .param p0, "mPm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v3, 0x0

    :try_start_0
    const-string v1, "com.android.mms"

    .local v1, "htcSmsPackagename":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSenseVersion()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_0

    const-string v1, "com.htc.sense.mms"

    :cond_0
    const/16 v4, 0x40

    invoke-virtual {p0, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_3

    sget-boolean v4, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    if-eqz v4, :cond_1

    const-string v4, "SendCmailInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pkg signatures length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v6, :cond_2

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_3

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-lez v3, :cond_3

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .end local v1    # "htcSmsPackagename":Ljava/lang/String;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :goto_1
    return-object v3

    .restart local v1    # "htcSmsPackagename":Ljava/lang/String;
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "htcSmsPackagename":Ljava/lang/String;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v3, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    if-eqz v3, :cond_3

    const-string v3, "SendCmailInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get pkg info fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static getUidSignatures(Landroid/content/pm/PackageManager;I)[Landroid/content/pm/Signature;
    .locals 11
    .param p0, "mPm"    # Landroid/content/pm/PackageManager;
    .param p1, "uid"    # I

    .prologue
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_4

    array-length v8, v4

    if-lez v8, :cond_4

    sget-boolean v8, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    if-eqz v8, :cond_0

    const-string v8, "SendCmailInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Packages with UID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .local v5, "pkg":Ljava/lang/String;
    const-string v8, "SendCmailInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    aget-object v8, v4, v8

    const/16 v9, 0x40

    invoke-virtual {p0, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .local v6, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_3

    sget-boolean v8, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    if-eqz v8, :cond_1

    const-string v8, "SendCmailInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Signatures for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v10, :cond_2

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .end local v4    # "packages":[Ljava/lang/String;
    .end local v6    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_2
    return-object v7

    .restart local v4    # "packages":[Ljava/lang/String;
    .restart local v6    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v7, v7

    goto :goto_1

    :cond_3
    sget-boolean v7, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    if-eqz v7, :cond_4

    const-string v7, "SendCmailInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No packageInfo found : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "packages":[Ljava/lang/String;
    .end local v6    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_4
    :goto_3
    const/4 v7, 0x0

    goto :goto_2

    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public cancelCmail(Landroid/app/PendingIntent;)Z
    .locals 3
    .param p1, "cancelIntent"    # Landroid/app/PendingIntent;

    .prologue
    sget-boolean v1, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "SendCmailInterface"

    const-string v2, "cancelCmail Called"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiGetInstance()Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    move-result-object v0

    .local v0, "packetSMSManager":Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;
    invoke-virtual {v0, p1}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiSendCancel(Landroid/app/PendingIntent;)Z

    move-result v1

    return v1
.end method

.method public sendCmail(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 6
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;
    .param p4, "sendingMode"    # I

    .prologue
    sget-boolean v1, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "SendCmailInterface"

    const-string v2, "snedCmail Start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v1, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    if-eqz v1, :cond_1

    const-string v1, "SendCmailInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "snedCmail by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v1, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SEND_SMS"

    const-string v3, "Sending SMS message"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiGetInstance()Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    move-result-object v0

    .local v0, "packetSMSManager":Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;
    sget-object v1, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiSendSmsMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    sget-boolean v1, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    if-eqz v1, :cond_2

    const-string v1, "SendCmailInterface"

    const-string v2, "snedCmai End"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
