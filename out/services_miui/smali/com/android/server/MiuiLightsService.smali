.class public Lcom/android/server/MiuiLightsService;
.super Lcom/android/server/LightsService;
.source "MiuiLightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MiuiLightsService$1;,
        Lcom/android/server/MiuiLightsService$Light;
    }
.end annotation


# instance fields
.field private mBatteryService:Lcom/android/server/BatteryService;

.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, p1}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p1, p0, Lcom/android/server/MiuiLightsService;->mContext:Landroid/content/Context;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    .line 23
    new-instance v0, Lcom/android/server/MiuiLightsService$Light;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/MiuiLightsService$Light;-><init>(Lcom/android/server/MiuiLightsService;ILcom/android/server/MiuiLightsService$1;)V

    invoke-virtual {p0, v2, v0}, Lcom/android/server/MiuiLightsService;->setLight(ILcom/android/server/LightsService$Light;)V

    .line 24
    new-instance v0, Lcom/android/server/MiuiLightsService$Light;

    invoke-direct {v0, p0, v4, v1}, Lcom/android/server/MiuiLightsService$Light;-><init>(Lcom/android/server/MiuiLightsService;ILcom/android/server/MiuiLightsService$1;)V

    invoke-virtual {p0, v4, v0}, Lcom/android/server/MiuiLightsService;->setLight(ILcom/android/server/LightsService$Light;)V

    .line 25
    new-instance v0, Lcom/android/server/MiuiLightsService$Light;

    invoke-direct {v0, p0, v3, v1}, Lcom/android/server/MiuiLightsService$Light;-><init>(Lcom/android/server/MiuiLightsService;ILcom/android/server/MiuiLightsService$1;)V

    invoke-virtual {p0, v3, v0}, Lcom/android/server/MiuiLightsService;->setLight(ILcom/android/server/LightsService$Light;)V

    .line 26
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/MiuiLightsService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MiuiLightsService;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/server/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/MiuiLightsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MiuiLightsService;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/server/MiuiLightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/MiuiLightsService;)Lcom/android/server/BatteryService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MiuiLightsService;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/server/MiuiLightsService;->mBatteryService:Lcom/android/server/BatteryService;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/MiuiLightsService;Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MiuiLightsService;
    .param p1, "x1"    # Lcom/android/server/BatteryService;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/android/server/MiuiLightsService;->mBatteryService:Lcom/android/server/BatteryService;

    return-object p1
.end method
