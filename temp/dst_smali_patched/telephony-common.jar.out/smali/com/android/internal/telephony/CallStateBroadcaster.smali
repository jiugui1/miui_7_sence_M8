.class public Lcom/android/internal/telephony/CallStateBroadcaster;
.super Ljava/lang/Object;
.source "CallStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;,
        Lcom/android/internal/telephony/CallStateBroadcaster$MyHandler;,
        Lcom/android/internal/telephony/CallStateBroadcaster$Status;
    }
.end annotation


# static fields
.field private static final ACTION_DETAILED_CALL_STATE:Ljava/lang/String; = "diagandroid.phone.detailedCallState"

.field private static final CALL_STATE_ENDED:Ljava/lang/String; = "ENDED"

.field private static final CAUSE_CDMA_DROP:I = 0x3e9

.field private static final CAUSE_CM_MM_RR_CONNECTION_RELEASE:I = 0x875

.field private static final CAUSE_ERROR_UNSPECIFIED:I = 0xffff

.field private static final EXTRA_CALL_CODE:Ljava/lang/String; = "CallCode"

.field private static final EXTRA_CALL_NUMBER:Ljava/lang/String; = "CallNumber"

.field private static final EXTRA_CALL_STATE:Ljava/lang/String; = "CallState"

.field private static final MSG_SEND_CALL_DISCONNECTED:I = 0x2

.field private static final MSG_SEND_CALL_STATUS:I = 0x1

.field private static final PERMISSION_RECEIVE_DETAILED_CALL_STATE:Ljava/lang/String; = "diagandroid.phone.receiveDetailedCallState"

.field public static ignoreToBroadcast:Z

.field private static sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;

.field private static final sStatusCodes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private handler:Lcom/android/internal/telephony/CallStateBroadcaster$MyHandler;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/CallStateBroadcaster;->ignoreToBroadcast:Z

    new-instance v0, Lcom/android/internal/telephony/CallStateBroadcaster$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallStateBroadcaster$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/CallStateBroadcaster;->sStatusCodes:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/CallStateBroadcaster$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/CallStateBroadcaster$MyHandler;-><init>(Lcom/android/internal/telephony/CallStateBroadcaster;Lcom/android/internal/telephony/CallStateBroadcaster$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CallStateBroadcaster;->handler:Lcom/android/internal/telephony/CallStateBroadcaster$MyHandler;

    iput-object p1, p0, Lcom/android/internal/telephony/CallStateBroadcaster;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallStateBroadcaster$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/internal/telephony/CallStateBroadcaster$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateBroadcaster;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private Broadcast(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallStateBroadcaster;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "diagandroid.phone.receiveDetailedCallState"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string v0, "CallStateBroadcast"

    const-string v1, "send detail call state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static CreateIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "callState"    # Ljava/lang/String;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "diagandroid.phone.detailedCallState"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "CallState"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CallNumber"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static SendCallDisconnected(Ljava/lang/String;I)V
    .locals 5
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "cause"    # I

    .prologue
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/CallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;

    if-eqz v3, :cond_0

    new-instance v2, Lcom/android/internal/telephony/CallStateBroadcaster$Status;

    invoke-static {p1}, Lcom/android/internal/telephony/CallStateBroadcaster;->mapCallFailCause(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/telephony/CallStateBroadcaster$Status;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/CallStateBroadcaster$1;)V

    .local v2, "statusDetail":Lcom/android/internal/telephony/CallStateBroadcaster$Status;
    sget-object v3, Lcom/android/internal/telephony/CallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;

    iget-object v3, v3, Lcom/android/internal/telephony/CallStateBroadcaster;->handler:Lcom/android/internal/telephony/CallStateBroadcaster$MyHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/telephony/CallStateBroadcaster$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "statusDetail":Lcom/android/internal/telephony/CallStateBroadcaster$Status;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CallStateBroadcaster"

    const-string v4, "error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private SendCallDisconnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/String;

    .prologue
    if-eqz p2, :cond_0

    const-string v1, "ENDED"

    invoke-static {v1, p1}, Lcom/android/internal/telephony/CallStateBroadcaster;->CreateIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "CallCode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallStateBroadcaster;->Broadcast(Landroid/content/Intent;)V

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static SendCallStatus(Ljava/lang/String;Lcom/android/internal/telephony/Call$State;)V
    .locals 6
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "status"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    :try_start_0
    sget-object v4, Lcom/android/internal/telephony/CallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    sget-object v4, Lcom/android/internal/telephony/CallStateBroadcaster;->sStatusCodes:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "statusCode":Ljava/lang/String;
    new-instance v3, Lcom/android/internal/telephony/CallStateBroadcaster$Status;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v2, v4}, Lcom/android/internal/telephony/CallStateBroadcaster$Status;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/CallStateBroadcaster$1;)V

    .local v3, "statusDetail":Lcom/android/internal/telephony/CallStateBroadcaster$Status;
    sget-object v4, Lcom/android/internal/telephony/CallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;

    iget-object v4, v4, Lcom/android/internal/telephony/CallStateBroadcaster;->handler:Lcom/android/internal/telephony/CallStateBroadcaster$MyHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Lcom/android/internal/telephony/CallStateBroadcaster$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "statusCode":Ljava/lang/String;
    .end local v3    # "statusDetail":Lcom/android/internal/telephony/CallStateBroadcaster$Status;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CallStateBroadcaster"

    const-string v5, "error"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private SendCallStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "statusString"    # Ljava/lang/String;

    .prologue
    if-eqz p2, :cond_0

    invoke-static {p2, p1}, Lcom/android/internal/telephony/CallStateBroadcaster;->CreateIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallStateBroadcaster;->Broadcast(Landroid/content/Intent;)V

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/CallStateBroadcaster;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallStateBroadcaster;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallStatus(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/CallStateBroadcaster;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallStateBroadcaster;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallDisconnected(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/CallStateBroadcaster;)Lcom/android/internal/telephony/CallStateBroadcaster;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallStateBroadcaster;

    .prologue
    sput-object p0, Lcom/android/internal/telephony/CallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;

    return-object p0
.end method

.method private static mapCallFailCause(I)I
    .locals 0
    .param p0, "cause"    # I

    .prologue
    sparse-switch p0, :sswitch_data_0

    :goto_0
    return p0

    :sswitch_0
    const p0, 0xffff

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x875 -> :sswitch_0
    .end sparse-switch
.end method
