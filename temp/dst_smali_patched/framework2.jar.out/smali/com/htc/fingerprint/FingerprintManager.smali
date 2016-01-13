.class public Lcom/htc/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Lcom/htc/fingerprint/IFingerprintAPI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fingerprint/FingerprintManager$IFingerprintListener;,
        Lcom/htc/fingerprint/FingerprintManager$FingerprintEvent;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final FINGERPRINT_DEFAULT_ENROLL_TIMES:I = 0x4

.field public static final FINGERPRINT_DEFAULT_USER:Ljava/lang/String; = "HTC_DEFAULT_USER_0"

.field public static final FINGERPRINT_PERMISSION:Ljava/lang/String; = "com.htc.permission.FINGERPRINT"

.field public static final FP_EVENT_TYPE_LISTENER:I = 0x1

.field public static final FP_EVT_ENROLL_CAPTURE_STATUS:I = 0x65

.field public static final FP_EVT_ENROLL_NEXT_CAPTURE_START:I = 0x64

.field public static final FP_EVT_FINGERPRINT_CAPTURED_BAD:I = 0x12d

.field public static final FP_EVT_IMAGE_QUALITY:I = 0x12c

.field public static final FP_EVT_SENSOR_FINGERPRINT_CAPTURE_START:I = 0xc8

.field public static final FP_EVT_SENSOR_READY_FOR_USE:I = 0x12e

.field public static final FP_EVT_SWIPE_END:I = 0xcb

.field public static final FP_EVT_SWIPE_START:I = 0xca

.field public static final FP_EVT_VERIFY_COMPLETED:I = 0xc9

.field public static final FP_FINGER_INDEX_LEFT_INDEX:I = 0x4

.field public static final FP_FINGER_INDEX_LEFT_LITTLE:I = 0x1

.field public static final FP_FINGER_INDEX_LEFT_MIDDLE:I = 0x3

.field public static final FP_FINGER_INDEX_LEFT_RING:I = 0x2

.field public static final FP_FINGER_INDEX_LEFT_THUMB:I = 0x5

.field public static final FP_FINGER_INDEX_RIGHT_INDEX:I = 0x7

.field public static final FP_FINGER_INDEX_RIGHT_LITTLE:I = 0xa

.field public static final FP_FINGER_INDEX_RIGHT_MIDDLE:I = 0x8

.field public static final FP_FINGER_INDEX_RIGHT_RING:I = 0x9

.field public static final FP_FINGER_INDEX_RIGHT_THUMB:I = 0x6

.field public static final FP_FINGER_LEFT_INDEX:I = 0x10

.field public static final FP_FINGER_LEFT_LITTLE:I = 0x2

.field public static final FP_FINGER_LEFT_MIDDLE:I = 0x8

.field public static final FP_FINGER_LEFT_RING:I = 0x4

.field public static final FP_FINGER_LEFT_THUMB:I = 0x20

.field public static final FP_FINGER_NOT_USED:I = 0x0

.field public static final FP_FINGER_RIGHT_INDEX:I = 0x80

.field public static final FP_FINGER_RIGHT_LITTLE:I = 0x400

.field public static final FP_FINGER_RIGHT_MIDDLE:I = 0x100

.field public static final FP_FINGER_RIGHT_RING:I = 0x200

.field public static final FP_FINGER_RIGHT_THUMB:I = 0x40

.field public static final FP_IMAGE_QUALITY_BASELINE_DATA_INVALID:I = 0x400000

.field public static final FP_IMAGE_QUALITY_FINGER_OFFSET:I = 0x1000

.field public static final FP_IMAGE_QUALITY_FINGER_OFFSET_TOO_FAR_LEFT:I = 0x20000

.field public static final FP_IMAGE_QUALITY_FINGER_OFFSET_TOO_FAR_RIGHT:I = 0x40000

.field public static final FP_IMAGE_QUALITY_FINGER_TOO_THIN:I = 0x2000000

.field public static final FP_IMAGE_QUALITY_GOOD:I = 0x0

.field public static final FP_IMAGE_QUALITY_NOT_A_FINGER_SWIPE:I = 0x200000

.field public static final FP_IMAGE_QUALITY_PRESSURE_TOO_HARD:I = 0x80000

.field public static final FP_IMAGE_QUALITY_PRESSURE_TOO_LIGHT:I = 0x10000

.field public static final FP_IMAGE_QUALITY_PROCESS_FAILED:I = -0x80000000

.field public static final FP_IMAGE_QUALITY_SKEW_TOO_LARGE:I = 0x8000

.field public static final FP_IMAGE_QUALITY_STICTION:I = 0x1

.field public static final FP_IMAGE_QUALITY_TOO_FAST:I = 0x2

.field public static final FP_IMAGE_QUALITY_TOO_SHORT:I = 0x4

.field public static final FP_IMAGE_QUALITY_TOO_SLOW:I = 0x10

.field public static final FP_IMAGE_QUALITY_WET_FINGER:I = 0x1000000

.field public static final FP_RESULT_FAILED:I = -0x1

.field public static final FP_RESULT_OK:I = 0x0

.field public static final FP_RESULT_OPERATION_CANCELLED:I = 0x1

.field public static final FP_RESULT_SENSOR_BUSY:I = 0x4

.field public static final FP_RESULT_SERVICE_NOT_RUNNING:I = 0x3

.field public static final FP_RESULT_SYSTEM_SECURITY_ALERT:I = 0x5

.field public static final FP_RESULT_UNKNOWN_CODE:I = -0x2

.field public static final FP_RESULT_USER_FINGER_ALREADY_ENROLLED:I = 0x2

.field public static final FP_SENSOR_NONE:I = 0x0

.field public static final FP_SENSOR_NOT_INITIAL:I = -0x1

.field public static final FP_SENSOR_VALIDITY:I = 0x1

.field public static final FP_VERIFY_PRIORITY_HIGH:I = 0x2

.field public static final FP_VERIFY_PRIORITY_LOW:I = 0x1

.field public static final SENSOR_CODE_PATH:Ljava/lang/String; = "/sys/module/vfsSpiDrv/parameters/fp_mount"

.field public static final TAG:Ljava/lang/String; = "FingerprintManager"

.field private static sSensorCode:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

.field private mVendorEventType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    sput v0, Lcom/htc/fingerprint/FingerprintManager;->sSensorCode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/fingerprint/FingerprintManager;->mVendorEventType:I

    iput-object v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    iput-object p1, p0, Lcom/htc/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/htc/fingerprint/FingerprintManager;->getFingerprintVendor(Lcom/htc/fingerprint/FingerprintManager$IFingerprintListener;)Lcom/htc/fingerprint/FingerprintVendor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    iget-object v0, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    if-nez v0, :cond_0

    const-string v0, "FingerprintManager"

    const-string v1, "Can\'t get Fingerprint Vendor type from low level function !!!"

    invoke-static {v0, v1}, Lcom/htc/fingerprint/FingerprintManager;->PrintLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/fingerprint/FingerprintManager$IFingerprintListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventListener"    # Lcom/htc/fingerprint/FingerprintManager$IFingerprintListener;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/fingerprint/FingerprintManager;->mVendorEventType:I

    iput-object v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    iput-object p1, p0, Lcom/htc/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/htc/fingerprint/FingerprintManager;->getFingerprintVendor(Lcom/htc/fingerprint/FingerprintManager$IFingerprintListener;)Lcom/htc/fingerprint/FingerprintVendor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    iget-object v0, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    if-nez v0, :cond_0

    const-string v0, "FingerprintManager"

    const-string v1, "Can\'t get Fingerprint Vendor type from low level function !!!"

    invoke-static {v0, v1}, Lcom/htc/fingerprint/FingerprintManager;->PrintLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static PrintLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method private getFingerprintVendor(Lcom/htc/fingerprint/FingerprintManager$IFingerprintListener;)Lcom/htc/fingerprint/FingerprintVendor;
    .locals 8
    .param p1, "eventListener"    # Lcom/htc/fingerprint/FingerprintManager$IFingerprintListener;

    .prologue
    const/4 v5, 0x0

    .local v5, "vendor":Lcom/htc/fingerprint/FingerprintVendor;
    invoke-static {}, Lcom/htc/fingerprint/FingerprintManager;->hasFingerprint()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :goto_0
    return-object v5

    :pswitch_0
    const-string v6, "FingerprintManager"

    const-string v7, "There is no any fingerprint sensor module in this device !!!"

    invoke-static {v6, v7}, Lcom/htc/fingerprint/FingerprintManager;->PrintLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    :try_start_0
    const-string v6, "com.htc.fingerprint.Validity"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .local v4, "validityDefinition":Ljava/lang/Class;
    if-eqz p1, :cond_0

    const/4 v6, 0x2

    new-array v2, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v2, v6

    const/4 v6, 0x1

    const-class v7, Lcom/htc/fingerprint/FingerprintManager$IFingerprintListener;

    aput-object v7, v2, v6

    .local v2, "intArgsClass":[Ljava/lang/Class;
    const/4 v6, 0x2

    new-array v1, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    aput-object v7, v1, v6

    const/4 v6, 0x1

    aput-object p1, v1, v6

    .local v1, "intArgs":[Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .local v3, "intArgsConstructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/htc/fingerprint/FingerprintVendor;

    move-object v5, v0

    goto :goto_0

    .end local v1    # "intArgs":[Ljava/lang/Object;
    .end local v2    # "intArgsClass":[Ljava/lang/Class;
    .end local v3    # "intArgsConstructor":Ljava/lang/reflect/Constructor;
    :cond_0
    const/4 v6, 0x1

    new-array v2, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v2, v6

    .restart local v2    # "intArgsClass":[Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v1, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    aput-object v7, v1, v6

    .restart local v1    # "intArgs":[Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .restart local v3    # "intArgsConstructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/htc/fingerprint/FingerprintVendor;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "intArgs":[Ljava/lang/Object;
    .end local v2    # "intArgsClass":[Ljava/lang/Class;
    .end local v3    # "intArgsConstructor":Ljava/lang/reflect/Constructor;
    .end local v4    # "validityDefinition":Ljava/lang/Class;
    :catch_0
    move-exception v6

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static hasFingerprint()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    sget v6, Lcom/htc/fingerprint/FingerprintManager;->sSensorCode:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    sput v8, Lcom/htc/fingerprint/FingerprintManager;->sSensorCode:I

    new-instance v3, Ljava/io/File;

    const-string v6, "/sys/module/vfsSpiDrv/parameters/fp_mount"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const-string v6, "FingerprintManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No such file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget v6, Lcom/htc/fingerprint/FingerprintManager;->sSensorCode:I

    :goto_0
    return v6

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    :try_start_0
    new-array v0, v6, [B

    .local v0, "buffer":[B
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v4, "fstream":Ljava/io/FileInputStream;
    if-eqz v4, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v0, v6, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    .local v1, "count":I
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v1}, Ljava/lang/String;-><init>([BII)V

    .local v5, "strRead":Ljava/lang/String;
    const-string v6, "FingerprintManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " byte(s), value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-byte v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    aget-byte v6, v0, v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    sput v6, Lcom/htc/fingerprint/FingerprintManager;->sSensorCode:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v4    # "fstream":Ljava/io/FileInputStream;
    .end local v5    # "strRead":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v6, "FingerprintManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasFingerprint() - sSensorCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/htc/fingerprint/FingerprintManager;->sSensorCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget v6, Lcom/htc/fingerprint/FingerprintManager;->sSensorCode:I

    goto :goto_0

    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v4    # "fstream":Ljava/io/FileInputStream;
    .restart local v5    # "strRead":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    :try_start_1
    sput v6, Lcom/htc/fingerprint/FingerprintManager;->sSensorCode:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v4    # "fstream":Ljava/io/FileInputStream;
    .end local v5    # "strRead":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v6, "FingerprintManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot find file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    const-string v6, "FingerprintManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to read file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "FingerprintManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception Caught: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v6, "FingerprintManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission not allowed to read: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, "bSuccess":Z
    iget-object v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    invoke-virtual {v1}, Lcom/htc/fingerprint/FingerprintVendor;->cancel()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    invoke-virtual {v0}, Lcom/htc/fingerprint/FingerprintVendor;->cleanUp()V

    :cond_0
    return-void
.end method

.method public convertEnrollCaptureStatus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "objEnrollCaptureStatus"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public convertVerifyResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "objVerifyResult"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public delete(I)Z
    .locals 2
    .param p1, "fingerIndex"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "bSuccess":Z
    iget-object v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    invoke-virtual {v1, p1}, Lcom/htc/fingerprint/FingerprintVendor;->delete(I)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public enroll(I)I
    .locals 2
    .param p1, "fingerIndex"    # I

    .prologue
    const/4 v0, -0x1

    .local v0, "result":I
    iget-object v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    invoke-virtual {v1, p1}, Lcom/htc/fingerprint/FingerprintVendor;->enroll(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getEnrollTimes()I
    .locals 2

    .prologue
    const/4 v0, 0x4

    .local v0, "times":I
    iget-object v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    invoke-virtual {v1}, Lcom/htc/fingerprint/FingerprintVendor;->getEnrollTimes()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getEnrolledFingerList()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .local v0, "result":I
    iget-object v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    invoke-virtual {v1}, Lcom/htc/fingerprint/FingerprintVendor;->getEnrolledFingerList()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getEventType()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .local v0, "eventType":I
    iget-object v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    invoke-virtual {v1}, Lcom/htc/fingerprint/FingerprintVendor;->getEventType()I

    move-result v0

    :cond_0
    return v0
.end method

.method public registerListener(Lcom/htc/fingerprint/FingerprintManager$IFingerprintListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/htc/fingerprint/FingerprintManager$IFingerprintListener;

    .prologue
    iget-object v0, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mVendorEventType:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    instance-of v0, v0, Lcom/htc/fingerprint/FingerprintListenerVendor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    check-cast v0, Lcom/htc/fingerprint/FingerprintListenerVendor;

    invoke-virtual {v0, p1}, Lcom/htc/fingerprint/FingerprintListenerVendor;->registerListener(Lcom/htc/fingerprint/FingerprintManager$IFingerprintListener;)V

    :cond_0
    return-void
.end method

.method public setNaviationEnable(Z)I
    .locals 1
    .param p1, "bEnable"    # Z

    .prologue
    invoke-virtual {p0, p1}, Lcom/htc/fingerprint/FingerprintManager;->setNavigationEnable(Z)I

    move-result v0

    return v0
.end method

.method public setNavigationEnable(Z)I
    .locals 2
    .param p1, "bEnable"    # Z

    .prologue
    const/4 v0, -0x1

    .local v0, "result":I
    iget-object v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    invoke-virtual {v1, p1}, Lcom/htc/fingerprint/FingerprintVendor;->setNavigationEnable(Z)I

    move-result v0

    :cond_0
    return v0
.end method

.method public verify()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .local v0, "result":I
    iget-object v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    invoke-virtual {v1}, Lcom/htc/fingerprint/FingerprintVendor;->verify()I

    move-result v0

    :cond_0
    return v0
.end method

.method public verify(I)I
    .locals 2
    .param p1, "priority"    # I

    .prologue
    const/4 v0, -0x1

    .local v0, "result":I
    iget-object v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    invoke-virtual {v1, p1}, Lcom/htc/fingerprint/FingerprintVendor;->verify(I)I

    move-result v0

    :cond_0
    return v0
.end method
