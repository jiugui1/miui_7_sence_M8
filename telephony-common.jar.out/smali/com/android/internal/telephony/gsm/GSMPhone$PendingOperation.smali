.class Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;
.super Ljava/lang/Object;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GSMPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingOperation"
.end annotation


# instance fields
.field protected mOnComplete:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Landroid/os/Message;)V
    .locals 0
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 4026
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4027
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;->mOnComplete:Landroid/os/Message;

    .line 4028
    return-void
.end method


# virtual methods
.method public onSessionStarted(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "res"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 4033
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;->mOnComplete:Landroid/os/Message;

    invoke-static {v0, p1, p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4034
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;->mOnComplete:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 4035
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;->mOnComplete:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4037
    :cond_0
    return-void
.end method