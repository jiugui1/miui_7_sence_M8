.class Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$1;
.super Landroid/os/Handler;
.source "HtcDefaultPhoneNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$1;->this$0:Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$1;->this$0:Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;

    # getter for: Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->mPendingNotification:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->access$000(Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$1;->this$0:Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;

    # getter for: Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->mPendingNotification:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->access$000(Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 179
    .local v7, "queueSz":I
    if-lez v7, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$1;->this$0:Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;

    # getter for: Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->mPendingNotification:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->access$000(Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$PendingNotification;

    .line 181
    .local v6, "notification":Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$PendingNotification;
    if-eqz v6, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$1;->this$0:Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;

    iget v1, v6, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$PendingNotification;->event:I

    iget-object v2, v6, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$PendingNotification;->sender:Lcom/android/internal/telephony/Phone;

    iget-object v3, v6, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$PendingNotification;->reason:Ljava/lang/String;

    iget-object v4, v6, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$PendingNotification;->apnType:Ljava/lang/String;

    iget-object v5, v6, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$PendingNotification;->state:Lcom/android/internal/telephony/PhoneConstants$DataState;

    # invokes: Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->dispatchQueueEvent(ILcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->access$100(Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;ILcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 184
    :cond_0
    const/4 v0, 0x1

    if-le v7, v0, :cond_1

    .line 185
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$1;->sendEmptyMessage(I)Z

    .line 189
    .end local v6    # "notification":Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$PendingNotification;
    .end local v7    # "queueSz":I
    :cond_1
    return-void
.end method