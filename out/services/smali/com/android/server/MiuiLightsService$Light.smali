.class public Lcom/android/server/MiuiLightsService$Light;
.super Lcom/android/server/LightsService$Light;
.source "MiuiLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MiuiLightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Light"
.end annotation


# static fields
.field private static final LIGHT_ON_MS:I = 0x1f4

.field private static final STOP_FLASH_MSG:I = 0x1


# instance fields
.field private mBrightnessMode:I

.field private mColor:I

.field private mDisabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mId:I

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field private mTurnOn:Z

.field final synthetic this$0:Lcom/android/server/MiuiLightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/MiuiLightsService;I)V
    .locals 5
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 38
    iput-object p1, p0, Lcom/android/server/MiuiLightsService$Light;->this$0:Lcom/android/server/MiuiLightsService;

    .line 39
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/LightsService$Light;-><init>(Lcom/android/server/LightsService;II)V

    .line 30
    iput-boolean v4, p0, Lcom/android/server/MiuiLightsService$Light;->mTurnOn:Z

    .line 114
    new-instance v0, Lcom/android/server/MiuiLightsService$Light$7;

    invoke-direct {v0, p0}, Lcom/android/server/MiuiLightsService$Light$7;-><init>(Lcom/android/server/MiuiLightsService$Light;)V

    iput-object v0, p0, Lcom/android/server/MiuiLightsService$Light;->mHandler:Landroid/os/Handler;

    .line 40
    iput p2, p0, Lcom/android/server/MiuiLightsService$Light;->mId:I

    .line 41
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/MiuiLightsService$Light;->mId:I

    if-ne v0, v1, :cond_1

    .line 42
    # getter for: Lcom/android/server/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/MiuiLightsService;->access$100(Lcom/android/server/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_buttons_state"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 46
    invoke-direct {p0}, Lcom/android/server/MiuiLightsService$Light;->isTurnOnButtonLight()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/MiuiLightsService$Light;->mTurnOn:Z

    .line 47
    # getter for: Lcom/android/server/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/MiuiLightsService;->access$100(Lcom/android/server/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_buttons_state"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/MiuiLightsService$Light$1;

    iget-object v3, p0, Lcom/android/server/MiuiLightsService$Light;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, p1}, Lcom/android/server/MiuiLightsService$Light$1;-><init>(Lcom/android/server/MiuiLightsService$Light;Landroid/os/Handler;Lcom/android/server/MiuiLightsService;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 60
    # getter for: Lcom/android/server/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/MiuiLightsService;->access$100(Lcom/android/server/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_buttons_turn_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/MiuiLightsService$Light$2;

    iget-object v3, p0, Lcom/android/server/MiuiLightsService$Light;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, p1}, Lcom/android/server/MiuiLightsService$Light$2;-><init>(Lcom/android/server/MiuiLightsService$Light;Landroid/os/Handler;Lcom/android/server/MiuiLightsService;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/MiuiLightsService$Light;->mId:I

    if-ne v0, v1, :cond_2

    .line 70
    # getter for: Lcom/android/server/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/MiuiLightsService;->access$100(Lcom/android/server/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "breathing_light_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/MiuiLightsService$Light$3;

    iget-object v3, p0, Lcom/android/server/MiuiLightsService$Light;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, p1}, Lcom/android/server/MiuiLightsService$Light$3;-><init>(Lcom/android/server/MiuiLightsService$Light;Landroid/os/Handler;Lcom/android/server/MiuiLightsService;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 80
    # getter for: Lcom/android/server/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/MiuiLightsService;->access$100(Lcom/android/server/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_breathing_light_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/MiuiLightsService$Light$4;

    iget-object v3, p0, Lcom/android/server/MiuiLightsService$Light;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, p1}, Lcom/android/server/MiuiLightsService$Light$4;-><init>(Lcom/android/server/MiuiLightsService$Light;Landroid/os/Handler;Lcom/android/server/MiuiLightsService;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 90
    # getter for: Lcom/android/server/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/MiuiLightsService;->access$100(Lcom/android/server/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mms_breathing_light_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/MiuiLightsService$Light$5;

    iget-object v3, p0, Lcom/android/server/MiuiLightsService$Light;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, p1}, Lcom/android/server/MiuiLightsService$Light$5;-><init>(Lcom/android/server/MiuiLightsService$Light;Landroid/os/Handler;Lcom/android/server/MiuiLightsService;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 99
    :cond_2
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/MiuiLightsService$Light;->mId:I

    if-ne v0, v1, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/android/server/MiuiLightsService$Light;->isTurnOnBatteryLight()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/MiuiLightsService$Light;->mTurnOn:Z

    .line 101
    # getter for: Lcom/android/server/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/MiuiLightsService;->access$100(Lcom/android/server/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_light_turn_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/MiuiLightsService$Light$6;

    iget-object v3, p0, Lcom/android/server/MiuiLightsService$Light;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, p1}, Lcom/android/server/MiuiLightsService$Light$6;-><init>(Lcom/android/server/MiuiLightsService$Light;Landroid/os/Handler;Lcom/android/server/MiuiLightsService;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/server/MiuiLightsService;ILcom/android/server/MiuiLightsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/MiuiLightsService;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/MiuiLightsService$1;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/server/MiuiLightsService$Light;-><init>(Lcom/android/server/MiuiLightsService;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/MiuiLightsService$Light;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MiuiLightsService$Light;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/server/MiuiLightsService$Light;->isTurnOnBatteryLight()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/MiuiLightsService$Light;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MiuiLightsService$Light;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/server/MiuiLightsService$Light;->mDisabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/MiuiLightsService$Light;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MiuiLightsService$Light;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/server/MiuiLightsService$Light;->mColor:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/MiuiLightsService$Light;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MiuiLightsService$Light;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/server/MiuiLightsService$Light;->mMode:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/MiuiLightsService$Light;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MiuiLightsService$Light;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/server/MiuiLightsService$Light;->mOnMS:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/MiuiLightsService$Light;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MiuiLightsService$Light;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/server/MiuiLightsService$Light;->mOffMS:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/MiuiLightsService$Light;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MiuiLightsService$Light;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/server/MiuiLightsService$Light;->mBrightnessMode:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/MiuiLightsService$Light;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MiuiLightsService$Light;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/server/MiuiLightsService$Light;->mTurnOn:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/MiuiLightsService$Light;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MiuiLightsService$Light;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/server/MiuiLightsService$Light;->isTurnOnButtonLight()Z

    move-result v0

    return v0
.end method

.method private isTurnOnBatteryLight()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 166
    iget-object v1, p0, Lcom/android/server/MiuiLightsService$Light;->this$0:Lcom/android/server/MiuiLightsService;

    # getter for: Lcom/android/server/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/MiuiLightsService;->access$100(Lcom/android/server/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "battery_light_turn_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTurnOnButtonLight()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 162
    iget-object v1, p0, Lcom/android/server/MiuiLightsService$Light;->this$0:Lcom/android/server/MiuiLightsService;

    # getter for: Lcom/android/server/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/MiuiLightsService;->access$100(Lcom/android/server/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_buttons_turn_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method setFlashing(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "colorSettingKey"    # Ljava/lang/String;
    .param p2, "freqSettingKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 126
    iget-object v2, p0, Lcom/android/server/MiuiLightsService$Light;->this$0:Lcom/android/server/MiuiLightsService;

    # getter for: Lcom/android/server/MiuiLightsService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/MiuiLightsService;->access$1100(Lcom/android/server/MiuiLightsService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x110d0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 128
    .local v1, "defaultColor":I
    iget-object v2, p0, Lcom/android/server/MiuiLightsService$Light;->this$0:Lcom/android/server/MiuiLightsService;

    # getter for: Lcom/android/server/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/server/MiuiLightsService;->access$100(Lcom/android/server/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 131
    .local v0, "color":I
    const/16 v2, 0x1f4

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v4, v2, v3}, Lcom/android/server/MiuiLightsService$Light;->setFlashing(IIII)V

    .line 133
    iget-object v2, p0, Lcom/android/server/MiuiLightsService$Light;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    iget-object v2, p0, Lcom/android/server/MiuiLightsService$Light;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/MiuiLightsService$Light;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 135
    return-void
.end method

.method setLightLocked(IIIII)V
    .locals 7
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 138
    iput p1, p0, Lcom/android/server/MiuiLightsService$Light;->mColor:I

    .line 139
    iput p2, p0, Lcom/android/server/MiuiLightsService$Light;->mMode:I

    .line 140
    iput p3, p0, Lcom/android/server/MiuiLightsService$Light;->mOnMS:I

    .line 141
    iput p4, p0, Lcom/android/server/MiuiLightsService$Light;->mOffMS:I

    .line 142
    iput p5, p0, Lcom/android/server/MiuiLightsService$Light;->mBrightnessMode:I

    .line 144
    const/4 v6, 0x0

    .line 145
    .local v6, "forceOn":Z
    iget v0, p0, Lcom/android/server/MiuiLightsService$Light;->mId:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/server/MiuiLightsService$Light;->this$0:Lcom/android/server/MiuiLightsService;

    # getter for: Lcom/android/server/MiuiLightsService;->mBatteryService:Lcom/android/server/BatteryService;
    invoke-static {v0}, Lcom/android/server/MiuiLightsService;->access$1200(Lcom/android/server/MiuiLightsService;)Lcom/android/server/BatteryService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 147
    iget-object v2, p0, Lcom/android/server/MiuiLightsService$Light;->this$0:Lcom/android/server/MiuiLightsService;

    const-string v0, "battery"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/MiuiLightsService;->mBatteryService:Lcom/android/server/BatteryService;
    invoke-static {v2, v0}, Lcom/android/server/MiuiLightsService;->access$1202(Lcom/android/server/MiuiLightsService;Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/server/MiuiLightsService$Light;->this$0:Lcom/android/server/MiuiLightsService;

    # getter for: Lcom/android/server/MiuiLightsService;->mBatteryService:Lcom/android/server/BatteryService;
    invoke-static {v0}, Lcom/android/server/MiuiLightsService;->access$1200(Lcom/android/server/MiuiLightsService;)Lcom/android/server/BatteryService;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/MiuiLightsService$Light;->this$0:Lcom/android/server/MiuiLightsService;

    # getter for: Lcom/android/server/MiuiLightsService;->mBatteryService:Lcom/android/server/BatteryService;
    invoke-static {v0}, Lcom/android/server/MiuiLightsService;->access$1200(Lcom/android/server/MiuiLightsService;)Lcom/android/server/BatteryService;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v6, 0x1

    .line 154
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/MiuiLightsService$Light;->mDisabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/MiuiLightsService$Light;->mTurnOn:Z

    if-nez v0, :cond_4

    :cond_2
    if-nez v6, :cond_4

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 155
    invoke-super/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 159
    :goto_1
    return-void

    :cond_3
    move v6, v1

    .line 150
    goto :goto_0

    .line 157
    :cond_4
    invoke-super/range {p0 .. p5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    goto :goto_1
.end method
