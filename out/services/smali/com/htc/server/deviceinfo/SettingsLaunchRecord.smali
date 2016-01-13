.class public final Lcom/htc/server/deviceinfo/SettingsLaunchRecord;
.super Ljava/lang/Object;
.source "SettingsLaunchRecord.java"


# static fields
.field private static final HWTAG:Ljava/lang/String; = "com.android.settings.framework.activity.aboutphone.HtcAboutPhoneHardwareInformation"

.field private static final LOGHWINFOTIME:I = 0x18

.field private static final LOGSWINFOTIME:I = 0x17

.field private static final SWTAG:Ljava/lang/String; = "com.android.settings.framework.activity.aboutphone.HtcAboutPhoneSoftwareInformation"


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/server/deviceinfo/HDIException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-nez p1, :cond_0

    .line 23
    new-instance v0, Lcom/htc/server/deviceinfo/HDIException;

    const-string v1, "SettingsLaunchRecord can\'t be constructed because handler is null!"

    invoke-direct {v0, v1}, Lcom/htc/server/deviceinfo/HDIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/htc/server/deviceinfo/SettingsLaunchRecord;->mHandler:Landroid/os/Handler;

    .line 25
    return-void
.end method


# virtual methods
.method public noteResumeFragment(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "fragmentClass"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    if-eqz p1, :cond_0

    .line 30
    const-string v1, "fragmentlist"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 31
    .local v0, "fragmentlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 32
    const-string v1, "com.android.settings.framework.activity.aboutphone.HtcAboutPhoneSoftwareInformation"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    iget-object v1, p0, Lcom/htc/server/deviceinfo/SettingsLaunchRecord;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 40
    .end local v0    # "fragmentlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 34
    .restart local v0    # "fragmentlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const-string v1, "com.android.settings.framework.activity.aboutphone.HtcAboutPhoneHardwareInformation"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/htc/server/deviceinfo/SettingsLaunchRecord;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
