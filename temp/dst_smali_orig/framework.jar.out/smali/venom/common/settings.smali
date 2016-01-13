.class public Lvenom/common/settings;
.super Ljava/lang/Object;
.source "settings.java"


# instance fields
.field public CPU_CORES:I

.field public HAS_4_KEY:Z

.field public HAS_NFC:Z

.field public HAS_SDCARD:Z

.field public PIE_TOUCHSCREEN_MODE:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lvenom/common/settings;->HAS_4_KEY:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lvenom/common/settings;->HAS_NFC:Z

    const/4 v0, 0x4

    iput v0, p0, Lvenom/common/settings;->CPU_CORES:I

    iput-boolean v1, p0, Lvenom/common/settings;->HAS_SDCARD:Z

    const/4 v0, 0x2

    iput v0, p0, Lvenom/common/settings;->PIE_TOUCHSCREEN_MODE:I

    return-void
.end method
