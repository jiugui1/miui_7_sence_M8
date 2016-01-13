.class final Lcom/android/server/am/HtcErrorReportManager$1;
.super Ljava/lang/Object;
.source "HtcErrorReportManager.java"

# interfaces
.implements Lcom/htc/utils/ulog/io/LogStream$SeedGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/HtcErrorReportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()[B
    .locals 2

    .prologue
    .line 185
    const/16 v1, 0x20

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 190
    .local v0, "SEED":[B
    return-object v0

    .line 185
    :array_0
    .array-data 1
        0x0t
        0x24t
        0x42t
        0x27t
        -0x1t
        0x73t
        0x3dt
        0x39t
        -0x5ct
        -0x25t
        -0x65t
        0x57t
        0x39t
        0x7ft
        -0x22t
        0x37t
        -0xet
        0x65t
        -0x6at
        -0x47t
        0x7ct
        -0x30t
        0x1t
        -0x6bt
        0x8t
        0x20t
        -0x38t
        0x7ft
        0x5ft
        -0x46t
        0x3bt
        -0xat
    .end array-data
.end method
