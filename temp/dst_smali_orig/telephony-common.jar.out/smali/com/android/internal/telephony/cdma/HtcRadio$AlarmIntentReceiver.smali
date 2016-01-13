.class Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/HtcRadio;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/HtcRadio;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/HtcRadio;Lcom/android/internal/telephony/cdma/HtcRadio$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/cdma/HtcRadio;
    .param p2, "x1"    # Lcom/android/internal/telephony/cdma/HtcRadio$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;-><init>(Lcom/android/internal/telephony/cdma/HtcRadio;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.intent.telephony.cdma-flight.mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcRadio;

    const-string v1, "timerId"

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcRadio;

    # getter for: Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->access$100(Lcom/android/internal/telephony/cdma/HtcRadio;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # invokes: Lcom/android/internal/telephony/cdma/HtcRadio;->timeoutFlightModePerioid(IZ)V
    invoke-static {v0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcRadio;->access$200(Lcom/android/internal/telephony/cdma/HtcRadio;IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.intent.telephony.cdma-flight.workaround"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcRadio;

    const-string v1, "timerId"

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcRadio;

    # getter for: Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->access$300(Lcom/android/internal/telephony/cdma/HtcRadio;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # invokes: Lcom/android/internal/telephony/cdma/HtcRadio;->timeoutWorkaroundPerioid(IZ)V
    invoke-static {v0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcRadio;->access$400(Lcom/android/internal/telephony/cdma/HtcRadio;IZ)V

    goto :goto_0
.end method
