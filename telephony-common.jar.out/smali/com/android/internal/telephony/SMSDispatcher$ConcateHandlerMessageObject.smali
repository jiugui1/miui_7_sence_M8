.class Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConcateHandlerMessageObject"
.end annotation


# instance fields
.field public tContext:Landroid/content/Context;

.field public tErrorCode:I

.field public tSentIntent:Landroid/app/PendingIntent;

.field public tTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Landroid/app/PendingIntent;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intentsent"    # Landroid/app/PendingIntent;
    .param p4, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .param p5, "errorcode"    # I

    .prologue
    .line 2872
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    .line 2873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2874
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tContext:Landroid/content/Context;

    .line 2875
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tSentIntent:Landroid/app/PendingIntent;

    .line 2876
    iput-object p4, p0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 2877
    iput p5, p0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tErrorCode:I

    .line 2878
    return-void
.end method
