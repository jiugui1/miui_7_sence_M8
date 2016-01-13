.class public Lcom/android/server/ShowWatermarkService;
.super Landroid/app/Service;
.source "ShowWatermarkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ShowWatermarkService$LoadView;
    }
.end annotation


# static fields
.field private static final DATALENGTH:I = 0xf

.field private static final IMEILENGTH:I = 0xf

.field private static final INFOLENGTH:I = 0xe

.field private static final KEYFILE:Ljava/lang/String; = "wmk.key"

.field private static final KEYVERKEY:Ljava/lang/String; = "key ver."

.field private static final KEYVERNUM:Ljava/lang/String; = "1 "

.field private static final KEY_GETIMEI:Ljava/lang/String; = "getIMEI"

.field private static final KEY_GETMEID:Ljava/lang/String; = "getMEID"

.field private static final MAGICCODE:Ljava/lang/String; = "htcUNITED"

.field private static final MEIDLENGTH:I = 0xe

.field private static final MSG_COLLECT_INFO:I = 0x1

.field private static final MSG_INIT:I = 0x2

.field private static final PUBLICKEY:Ljava/lang/String; = "30820120300d06092a864886f70d01010105000382010d00308201080282010100a0c54745024225572290e1b4169f6bc67a73ac17d926c1f519c94a88211b4056da248ef480fb10948471896da7c1105b5290fa0c0df339908a1e7ccd1f1213726a9a5f2b0a7f31e0756a2aa3660ff57ede8799267479e622ba8a245898c62a1c0b8ac972534fd83f108af429a5d9a52107c98bf7d7f0b9cfc89c9317a25e756ae9388aa0981a937e33fe694a2b27c8e736d85125104bc38f4579f725f2618e7ec7b066ba1bbb8ff5620251663d72d0f2cd55e7382b133026897a8a9908cdd7404d06de98bf8c9af6a8c4ec5773c5c9a87e515f1ec3adafefe79bf965ba02777724cc12b25bbf5d4bd8fa7027f8db3d766bd75777ef68e40720706141bad42f43020103"

.field private static final RETRY_TIMEOUT_MAX:I = 0x3c

.field private static final RETRY_TIMEOUT_MIN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "watermark"

.field private static final TYPE_IMEI:B = 0x45t

.field private static final TYPE_INFO:B = 0x6et

.field private static final TYPE_MEID:B = 0x64t

.field private static final TYPE_VERS:B = 0x20t

.field private static final VERSION:Ljava/lang/String; = "2.1"

.field private static final ZIPFILE:Ljava/lang/String; = "wmkey.zip"

.field private static final ZIPPATH:[Ljava/lang/String;


# instance fields
.field private mAccountChangeListener:Landroid/accounts/OnAccountsUpdateListener;

.field private final mDebug:Z

.field private final mDebugSkipBuildFlag:Z

.field private final mDebugSkipCertificate:Z

.field private mHandler:Landroid/os/Handler;

.field private mImei:Ljava/lang/String;

.field private mKeyBytes:[B

.field private mMeid:Ljava/lang/String;

.field private mMessages:[Ljava/lang/String;

.field private mMonitorAccount:Z

.field private mRetry:I

.field private mRetryTimeoutCount:I

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 657
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/data/local/tmp/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/data/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/ShowWatermarkService;->ZIPPATH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 84
    iput-boolean v1, p0, Lcom/android/server/ShowWatermarkService;->mDebug:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/server/ShowWatermarkService;->mDebugSkipCertificate:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/server/ShowWatermarkService;->mDebugSkipBuildFlag:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/server/ShowWatermarkService;->mMonitorAccount:Z

    .line 280
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/ShowWatermarkService;->mRetryTimeoutCount:I

    .line 281
    iput v1, p0, Lcom/android/server/ShowWatermarkService;->mRetry:I

    .line 282
    iput-object v2, p0, Lcom/android/server/ShowWatermarkService;->mImei:Ljava/lang/String;

    .line 283
    iput-object v2, p0, Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;

    .line 285
    new-instance v0, Lcom/android/server/ShowWatermarkService$1;

    invoke-direct {v0, p0}, Lcom/android/server/ShowWatermarkService$1;-><init>(Lcom/android/server/ShowWatermarkService;)V

    iput-object v0, p0, Lcom/android/server/ShowWatermarkService;->mHandler:Landroid/os/Handler;

    .line 454
    new-instance v0, Lcom/android/server/ShowWatermarkService$2;

    invoke-direct {v0, p0}, Lcom/android/server/ShowWatermarkService$2;-><init>(Lcom/android/server/ShowWatermarkService;)V

    iput-object v0, p0, Lcom/android/server/ShowWatermarkService;->mAccountChangeListener:Landroid/accounts/OnAccountsUpdateListener;

    .line 663
    iput-object v2, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ShowWatermarkService;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/ShowWatermarkService;->mMessages:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ShowWatermarkService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/ShowWatermarkService;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/ShowWatermarkService;)Landroid/accounts/OnAccountsUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/ShowWatermarkService;->mAccountChangeListener:Landroid/accounts/OnAccountsUpdateListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/ShowWatermarkService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/server/ShowWatermarkService;->mImei:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/ShowWatermarkService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/ShowWatermarkService;->getAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/ShowWatermarkService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/ShowWatermarkService;->strimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/ShowWatermarkService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/ShowWatermarkService;->removeAccountListener()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/ShowWatermarkService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/ShowWatermarkService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$308(Lcom/android/server/ShowWatermarkService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/server/ShowWatermarkService;->mRetry:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/ShowWatermarkService;->mRetry:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/ShowWatermarkService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/server/ShowWatermarkService;->mRetryTimeoutCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/ShowWatermarkService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/ShowWatermarkService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/ShowWatermarkService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/ShowWatermarkService;->isCertificated()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/ShowWatermarkService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/ShowWatermarkService;->getWatermarkWords()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/ShowWatermarkService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/ShowWatermarkService;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/ShowWatermarkService;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/server/ShowWatermarkService;->mView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/ShowWatermarkService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ShowWatermarkService;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/server/ShowWatermarkService;->mMonitorAccount:Z

    return v0
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .param p1, "b"    # [B

    .prologue
    .line 667
    const-string v1, ""

    .line 669
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 669
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 674
    :cond_0
    return-object v1
.end method

.method private decodeKey([BII)[B
    .locals 10
    .param p1, "key"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 682
    move v6, p2

    .line 684
    .local v6, "rlen":I
    add-int/lit8 v2, p2, 0x1e

    .local v2, "idx":I
    :goto_0
    if-gt v2, p3, :cond_5

    .line 686
    add-int/lit8 v3, v2, -0xf

    .line 688
    .local v3, "ie":I
    aget-byte v8, p1, v3

    sparse-switch v8, :sswitch_data_0

    .line 701
    :goto_1
    add-int/lit8 v4, v2, -0x1e

    .local v4, "ir":I
    :goto_2
    if-ge v3, v2, :cond_3

    .line 703
    aget-byte v8, p1, v3

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_0

    .line 705
    aget-byte v8, p1, v3

    and-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, p1, v3

    .line 701
    :goto_3
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 691
    .end local v4    # "ir":I
    :sswitch_0
    add-int/lit8 v3, v3, 0xf

    .line 692
    goto :goto_1

    .line 694
    :sswitch_1
    add-int/lit8 v3, v3, 0x1

    .line 695
    goto :goto_1

    .line 697
    :sswitch_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 709
    .restart local v4    # "ir":I
    :cond_0
    const-string v8, "htcUNITED"

    aget-byte v9, p1, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 711
    .local v0, "c":I
    const/4 v8, -0x1

    if-ne v0, v8, :cond_2

    .line 713
    aget-byte v8, p1, v3

    const/16 v9, 0x5a

    if-ne v8, v9, :cond_1

    .line 715
    aget-byte v8, p1, v4

    aput-byte v8, p1, v3

    goto :goto_3

    .line 719
    :cond_1
    aget-byte v8, p1, v3

    aget-byte v9, p1, v4

    add-int/lit8 v9, v9, -0x30

    add-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p1, v3

    goto :goto_3

    .line 724
    :cond_2
    aget-byte v8, p1, v4

    sub-int/2addr v8, v0

    add-int/lit8 v0, v8, -0x1

    .line 726
    int-to-byte v8, v0

    aput-byte v8, p1, v3

    goto :goto_3

    .line 730
    .end local v0    # "c":I
    :cond_3
    add-int/lit8 v3, v2, -0xf

    move v7, v6

    .end local v6    # "rlen":I
    .local v7, "rlen":I
    :goto_4
    if-ge v3, v2, :cond_4

    .line 732
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "rlen":I
    .restart local v6    # "rlen":I
    aget-byte v8, p1, v3

    aput-byte v8, p1, v7

    .line 730
    add-int/lit8 v3, v3, 0x1

    move v7, v6

    .end local v6    # "rlen":I
    .restart local v7    # "rlen":I
    goto :goto_4

    .line 684
    :cond_4
    add-int/lit8 v2, v2, 0x1e

    move v6, v7

    .end local v7    # "rlen":I
    .restart local v6    # "rlen":I
    goto :goto_0

    .line 736
    .end local v3    # "ie":I
    .end local v4    # "ir":I
    :cond_5
    sub-int v8, v6, p2

    new-array v5, v8, [B

    .line 738
    .local v5, "ret":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    sub-int v8, v6, p2

    if-ge v1, v8, :cond_6

    .line 739
    add-int v8, p2, v1

    aget-byte v8, p1, v8

    aput-byte v8, v5, v1

    .line 738
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 741
    :cond_6
    return-object v5

    .line 688
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x64 -> :sswitch_2
        0x6e -> :sswitch_1
    .end sparse-switch
.end method

.method private getAccount()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 512
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 514
    .local v1, "accountMgr":Landroid/accounts/AccountManager;
    const-string v6, "NoAccount"

    .line 516
    .local v6, "nullAccount":Ljava/lang/String;
    iput-boolean v8, p0, Lcom/android/server/ShowWatermarkService;->mMonitorAccount:Z

    .line 518
    if-nez v1, :cond_0

    .line 553
    .end local v6    # "nullAccount":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 522
    .restart local v6    # "nullAccount":Ljava/lang/String;
    :cond_0
    const-string v7, "com.htc.android.mail.eas"

    invoke-virtual {v1, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 524
    .local v2, "accounts":[Landroid/accounts/Account;
    if-eqz v2, :cond_1

    array-length v7, v2

    if-lez v7, :cond_1

    .line 525
    aget-object v7, v2, v8

    iget-object v6, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    .line 528
    :cond_1
    const-string v7, "com.google"

    invoke-virtual {v1, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 530
    if-eqz v2, :cond_2

    array-length v7, v2

    if-lez v7, :cond_2

    .line 531
    aget-object v7, v2, v8

    iget-object v6, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    .line 534
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 536
    if-eqz v2, :cond_5

    array-length v7, v2

    if-lez v7, :cond_5

    .line 538
    move-object v3, v2

    .local v3, "arr$":[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v0, v3, v4

    .line 540
    .local v0, "ac":Landroid/accounts/Account;
    const-string v7, "com.htc.showme"

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.htc.sync.provider.weather"

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.htc.android.Stock"

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.htc.stock"

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.htc.newsreader"

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 538
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 547
    :cond_4
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    .line 551
    .end local v0    # "ac":Landroid/accounts/Account;
    .end local v3    # "arr$":[Landroid/accounts/Account;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_5
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/ShowWatermarkService;->mMonitorAccount:Z

    goto :goto_0
.end method

.method private getDataType(B)B
    .locals 1
    .param p1, "type"    # B

    .prologue
    .line 853
    sparse-switch p1, :sswitch_data_0

    .line 862
    const/16 v0, 0x45

    :goto_0
    return v0

    .line 856
    :sswitch_0
    const/16 v0, 0x20

    goto :goto_0

    .line 858
    :sswitch_1
    const/16 v0, 0x6e

    goto :goto_0

    .line 860
    :sswitch_2
    const/16 v0, 0x64

    goto :goto_0

    .line 853
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x64 -> :sswitch_2
        0x6e -> :sswitch_1
    .end sparse-switch
.end method

.method private getWatermarkWords()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 470
    sget-object v3, Lcom/htc/htcjavaflag/HtcWatermarkWord;->Htc_WATERMARK_MSG:[Ljava/lang/String;

    array-length v0, v3

    .line 471
    .local v0, "mWordFromConf":I
    add-int/lit8 v1, v0, 0x1

    .line 474
    .local v1, "mWordLength":I
    add-int/lit8 v1, v1, 0x1

    .line 476
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/ShowWatermarkService;->mMessages:[Ljava/lang/String;

    .line 477
    sget-object v3, Lcom/htc/htcjavaflag/HtcWatermarkWord;->Htc_WATERMARK_MSG:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/ShowWatermarkService;->mMessages:[Ljava/lang/String;

    invoke-static {v3, v5, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 480
    iget-object v3, p0, Lcom/android/server/ShowWatermarkService;->mMessages:[Ljava/lang/String;

    const-string v4, "ro.serialno"

    const-string v5, "null"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 487
    const-string v3, "ro.un"

    const-string v4, "unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 489
    .local v2, "userName":Ljava/lang/String;
    const-string v3, "unknown"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 491
    iget-object v3, p0, Lcom/android/server/ShowWatermarkService;->mMessages:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0}, Lcom/android/server/ShowWatermarkService;->getAccount()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/ShowWatermarkService;->strimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 498
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v3, p0, Lcom/android/server/ShowWatermarkService;->mMessages:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/ShowWatermarkService;->strimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_0
.end method

.method private isCertificated()Z
    .locals 2

    .prologue
    .line 1087
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 1089
    .local v0, "verified":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1094
    invoke-direct {p0}, Lcom/android/server/ShowWatermarkService;->verifyVersion()Z

    move-result v0

    .line 1097
    :cond_0
    if-eqz v0, :cond_1

    .line 1102
    invoke-direct {p0}, Lcom/android/server/ShowWatermarkService;->verifyInfo()Z

    move-result v0

    .line 1105
    :cond_1
    return v0

    .line 1087
    .end local v0    # "verified":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/cert/Certificate;
    .locals 7
    .param p1, "jarFile"    # Ljava/util/jar/JarFile;
    .param p2, "je"    # Ljava/util/jar/JarEntry;

    .prologue
    .line 746
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    if-nez v4, :cond_1

    .line 748
    :cond_0
    const-string v4, "watermark"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid values! file="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", entry="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", buffer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 757
    :cond_1
    const/4 v2, 0x0

    .line 759
    .local v2, "idx":I
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 763
    .local v3, "is":Ljava/io/InputStream;
    :cond_2
    iget-object v4, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    array-length v5, v5

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 765
    .local v0, "count":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_3

    .line 774
    :goto_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 776
    iget-object v4, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v2}, Lcom/android/server/ShowWatermarkService;->decodeKey([BII)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    .line 778
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v4

    goto :goto_1

    .line 768
    :cond_3
    add-int/2addr v2, v0

    .line 770
    iget-object v4, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    array-length v4, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v2, v4, :cond_2

    goto :goto_2

    .line 780
    .end local v0    # "count":I
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 782
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "watermark"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadKeyFile()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1053
    iput-object v8, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    .line 1058
    sget-object v0, Lcom/android/server/ShowWatermarkService;->ZIPPATH:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1060
    .local v3, "p":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1082
    .end local v3    # "p":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    :goto_1
    return v5

    .line 1063
    .restart local v3    # "p":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "wmkey.zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1065
    .local v4, "zipFile":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1058
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1071
    :cond_2
    const-string v5, "watermark"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    invoke-direct {p0, v4}, Lcom/android/server/ShowWatermarkService;->verifySignature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1074
    const/4 v5, 0x1

    goto :goto_1

    .line 1076
    :cond_3
    iput-object v8, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    goto :goto_2
.end method

.method private readCustomizeInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 994
    iget-object v3, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v1, v2

    .line 1008
    :goto_0
    return-object v1

    .line 997
    :cond_1
    const/16 v0, 0xf

    .local v0, "idx":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    array-length v3, v3

    if-gt v0, v3, :cond_4

    .line 999
    iget-object v3, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    add-int/lit8 v4, v0, -0xf

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/server/ShowWatermarkService;->getDataType(B)B

    move-result v3

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_3

    .line 997
    :cond_2
    add-int/lit8 v0, v0, 0xf

    goto :goto_1

    .line 1002
    :cond_3
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    add-int/lit8 v4, v0, -0xe

    const/16 v5, 0xe

    invoke-direct {v1, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    .line 1004
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .end local v1    # "s":Ljava/lang/String;
    :cond_4
    move-object v1, v2

    .line 1008
    goto :goto_0
.end method

.method private readCustomizeInfoTimeout(III)I
    .locals 6
    .param p1, "minValue"    # I
    .param p2, "maxValue"    # I
    .param p3, "defaultValue"    # I

    .prologue
    .line 1013
    const-string v3, "TIMEOUT="

    invoke-direct {p0, v3}, Lcom/android/server/ShowWatermarkService;->readCustomizeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1015
    .local v2, "timeout":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1017
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1019
    .local v1, "i":I
    if-gez v1, :cond_0

    .line 1021
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1026
    :cond_0
    const/16 v3, 0x8

    :try_start_0
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1028
    if-lt v1, p1, :cond_1

    if-le v1, p2, :cond_3

    .line 1030
    :cond_1
    const-string v3, "watermark"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "custom ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], invalid value=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], range ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "~"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "i":I
    :cond_2
    :goto_0
    move v1, p3

    .line 1045
    :goto_1
    return v1

    .line 1034
    .restart local v1    # "i":I
    :cond_3
    const-string v3, "watermark"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "custom ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], value=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1039
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "watermark"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "custom ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeAccountListener()V
    .locals 3

    .prologue
    .line 560
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ShowWatermarkService;->mAccountChangeListener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 570
    :goto_0
    return-void

    .line 562
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "watermark"

    const-string v2, "remove account listener fail, listener is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 566
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 568
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "watermark"

    const-string v2, "remove account listener fail, listener is not added"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private strimString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 502
    const/16 v0, 0x14

    .line 504
    .local v0, "MAX_ACCOUNT_LEN":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 505
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 507
    .end local p1    # "s":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private verifyInfo()Z
    .locals 9

    .prologue
    const/16 v7, 0xf

    const/16 v8, 0xe

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 928
    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    if-nez v5, :cond_1

    .line 989
    :cond_0
    :goto_0
    return v3

    .line 937
    :cond_1
    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mImei:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mImei:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v7, :cond_5

    .line 939
    :cond_2
    const-string v5, "watermark"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid imei=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/ShowWatermarkService;->mImei:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_3
    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v8, :cond_8

    .line 968
    :cond_4
    const-string v4, "watermark"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid meid=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 943
    :cond_5
    const/16 v0, 0xf

    .local v0, "idx":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    array-length v5, v5

    if-gt v0, v5, :cond_3

    .line 945
    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    add-int/lit8 v6, v0, -0xf

    aget-byte v5, v5, v6

    invoke-direct {p0, v5}, Lcom/android/server/ShowWatermarkService;->getDataType(B)B

    move-result v5

    const/16 v6, 0x45

    if-eq v5, v6, :cond_7

    .line 943
    :cond_6
    add-int/lit8 v0, v0, 0xf

    goto :goto_1

    .line 948
    :cond_7
    new-instance v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    add-int/lit8 v6, v0, -0xf

    invoke-direct {v1, v5, v6, v7}, Ljava/lang/String;-><init>([BII)V

    .line 952
    .local v1, "imei2":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mImei:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v3, v4

    .line 955
    goto/16 :goto_0

    .line 972
    .end local v0    # "idx":I
    .end local v1    # "imei2":Ljava/lang/String;
    :cond_8
    const/16 v0, 0xf

    .restart local v0    # "idx":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    array-length v5, v5

    if-gt v0, v5, :cond_0

    .line 974
    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    add-int/lit8 v6, v0, -0xf

    aget-byte v5, v5, v6

    invoke-direct {p0, v5}, Lcom/android/server/ShowWatermarkService;->getDataType(B)B

    move-result v5

    const/16 v6, 0x64

    if-eq v5, v6, :cond_a

    .line 972
    :cond_9
    add-int/lit8 v0, v0, 0xf

    goto :goto_2

    .line 977
    :cond_a
    new-instance v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    add-int/lit8 v6, v0, -0xe

    invoke-direct {v2, v5, v6, v8}, Ljava/lang/String;-><init>([BII)V

    .line 981
    .local v2, "meid2":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v3, v4

    .line 984
    goto/16 :goto_0
.end method

.method private verifySignature(Ljava/lang/String;)Z
    .locals 8
    .param p1, "zipFile"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 790
    const/4 v0, 0x0

    .line 792
    .local v0, "certs":[Ljava/security/cert/Certificate;
    if-eqz p1, :cond_0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 794
    :cond_0
    const-string v5, "watermark"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not existed!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :goto_0
    return v4

    .line 798
    :cond_1
    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    if-nez v5, :cond_2

    .line 800
    const/16 v5, 0x2000

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    .line 805
    :cond_2
    :try_start_0
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 810
    .local v3, "jarFile":Ljava/util/jar/JarFile;
    const-string v5, "wmk.key"

    invoke-virtual {v3, v5}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v2

    .line 812
    .local v2, "jarEntry":Ljava/util/jar/JarEntry;
    if-nez v2, :cond_4

    .line 814
    const-string v5, "watermark"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wmk.key is not found in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 842
    .end local v2    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v3    # "jarFile":Ljava/util/jar/JarFile;
    :catch_0
    move-exception v1

    .line 844
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "watermark"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to parse "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 848
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 819
    .restart local v2    # "jarEntry":Ljava/util/jar/JarEntry;
    .restart local v3    # "jarFile":Ljava/util/jar/JarFile;
    :cond_4
    :try_start_1
    invoke-direct {p0, v3, v2}, Lcom/android/server/ShowWatermarkService;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 821
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    .line 823
    if-eqz v0, :cond_5

    array-length v5, v0

    if-nez v5, :cond_6

    .line 825
    :cond_5
    const-string v5, "watermark"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no certificates in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 829
    :cond_6
    const-string v6, "watermark"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": entry="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " certs="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v0, :cond_7

    array-length v5, v0

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const-string v5, "30820120300d06092a864886f70d01010105000382010d00308201080282010100a0c54745024225572290e1b4169f6bc67a73ac17d926c1f519c94a88211b4056da248ef480fb10948471896da7c1105b5290fa0c0df339908a1e7ccd1f1213726a9a5f2b0a7f31e0756a2aa3660ff57ede8799267479e622ba8a245898c62a1c0b8ac972534fd83f108af429a5d9a52107c98bf7d7f0b9cfc89c9317a25e756ae9388aa0981a937e33fe694a2b27c8e736d85125104bc38f4579f725f2618e7ec7b066ba1bbb8ff5620251663d72d0f2cd55e7382b133026897a8a9908cdd7404d06de98bf8c9af6a8c4ec5773c5c9a87e515f1ec3adafefe79bf965ba02777724cc12b25bbf5d4bd8fa7027f8db3d766bd75777ef68e40720706141bad42f43020103"

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ShowWatermarkService;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 838
    const-string v5, "watermark"

    const-string v6, "invalid signature!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_7
    move v5, v4

    .line 829
    goto :goto_1
.end method

.method private verifyVersion()Z
    .locals 11

    .prologue
    const/16 v10, 0xe

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 867
    const/4 v2, 0x0

    .line 869
    .local v2, "version":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    if-nez v5, :cond_1

    .line 923
    :cond_0
    :goto_0
    return v3

    .line 878
    :cond_1
    const/16 v0, 0xf

    .local v0, "idx":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    array-length v5, v5

    if-gt v0, v5, :cond_4

    .line 880
    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    add-int/lit8 v6, v0, -0xf

    aget-byte v5, v5, v6

    invoke-direct {p0, v5}, Lcom/android/server/ShowWatermarkService;->getDataType(B)B

    move-result v1

    .line 882
    .local v1, "type":B
    const/16 v5, 0x20

    if-ne v1, v5, :cond_3

    .line 884
    new-instance v2, Ljava/lang/String;

    .end local v2    # "version":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    add-int/lit8 v6, v0, -0xe

    invoke-direct {v2, v5, v6, v10}, Ljava/lang/String;-><init>([BII)V

    .line 886
    .restart local v2    # "version":Ljava/lang/String;
    const-string v5, "watermark"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "key ver."

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0xf

    goto :goto_1

    .line 888
    :cond_3
    const/16 v5, 0x6e

    if-ne v1, v5, :cond_2

    .line 890
    const-string v5, "watermark"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/ShowWatermarkService;->mKeyBytes:[B

    add-int/lit8 v9, v0, -0xe

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 894
    .end local v1    # "type":B
    :cond_4
    if-nez v2, :cond_5

    .line 896
    const-string v5, "1 "

    const-string v6, "1 "

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 901
    goto :goto_0

    .line 906
    :cond_5
    const-string v5, "key ver.1 "

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 908
    const-string v4, "watermark"

    const-string v5, "invalid version!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 912
    :cond_6
    new-instance v5, Ljava/lang/String;

    const-string v6, "key ver.1 "

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 917
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_7

    const-string v5, "30820120300d06092a864886f70d01010105000382010d00308201080282010100a0c54745024225572290e1b4169f6bc67a73ac17d926c1f519c94a88211b4056da248ef480fb10948471896da7c1105b5290fa0c0df339908a1e7ccd1f1213726a9a5f2b0a7f31e0756a2aa3660ff57ede8799267479e622ba8a245898c62a1c0b8ac972534fd83f108af429a5d9a52107c98bf7d7f0b9cfc89c9317a25e756ae9388aa0981a937e33fe694a2b27c8e736d85125104bc38f4579f725f2618e7ec7b066ba1bbb8ff5620251663d72d0f2cd55e7382b133026897a8a9908cdd7404d06de98bf8c9af6a8c4ec5773c5c9a87e515f1ec3adafefe79bf965ba02777724cc12b25bbf5d4bd8fa7027f8db3d766bd75777ef68e40720706141bad42f43020103"

    const/16 v6, 0xf

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0xf

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 919
    :cond_7
    const-string v4, "watermark"

    const-string v5, "invalid key!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move v3, v4

    .line 923
    goto/16 :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 626
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 432
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 435
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 575
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 577
    iget-object v0, p0, Lcom/android/server/ShowWatermarkService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 578
    iget-object v0, p0, Lcom/android/server/ShowWatermarkService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 580
    const-string v0, "watermark"

    const-string v1, "stop watermark service, reboot device"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-boolean v0, p0, Lcom/android/server/ShowWatermarkService;->mMonitorAccount:Z

    if-eqz v0, :cond_0

    .line 583
    invoke-direct {p0}, Lcom/android/server/ShowWatermarkService;->removeAccountListener()V

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/android/server/ShowWatermarkService;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 587
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/server/ShowWatermarkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 589
    iput-object v3, p0, Lcom/android/server/ShowWatermarkService;->mView:Landroid/view/View;

    .line 619
    :cond_1
    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 621
    return-void
.end method
