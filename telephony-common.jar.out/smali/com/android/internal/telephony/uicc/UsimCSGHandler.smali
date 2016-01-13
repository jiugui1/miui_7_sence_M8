.class public Lcom/android/internal/telephony/uicc/UsimCSGHandler;
.super Landroid/os/Handler;
.source "UsimCSGHandler.java"


# static fields
.field private static final EVENT_NETWORK_REJECT_IND:I = 0x4

.field private static final EVENT_PERFORM_NETWORK_SCAN_RESP:I = 0x1

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x5

.field private static final EVENT_SET_SYSTEM_SELECTION_PREFERENCE_RESP:I = 0x2

.field private static final EVENT_SIM_REFRESH:I = 0x1f

.field private static final EVENT_STOP_DATA_CONNECTION:I = 0x6

.field private static final EVENT_SYS_INFO_IND:I = 0x3

.field static final INTENT_CSG_10SECS_EXPIRED:Ljava/lang/String; = "com.htc.telephony.intent.action.csg_10secs_expired"

.field static final INTENT_CSG_2HOURS_EXPIRED:Ljava/lang/String; = "com.htc.telephony.intent.action.csg_2hours_expired"

.field private static final Interval_Time_Periodic_Search:I = 0x6ddd00

.field private static final Interval_Time_Retry_Search:I = 0x2710

.field private static final Interval_Time_SEARCH_CSG_NETWORK:I = 0xea60

.field private static final Interval_Time_Stop_Data_Connection:I = 0x2710

.field private static final STATE_CSG_ID_CAMPED:I = 0x3

.field private static final STATE_INITIAL:I = 0x0

.field private static final STATE_REQUEST_CSG_ID_CAMP:I = 0x2

.field private static final STATE_REQUEST_CSG_ID_LIST:I = 0x1

.field private static final STATUS_FAIL_CAMP_CSG_NETWORK:I = 0x3

.field private static final STATUS_FAIL_EFOCSGL_EMPTY:I = 0x4

.field private static final STATUS_FAIL_NOT_HOME_NETWORK:I = 0x2

.field private static final STATUS_FAIL_SEARCH_DOING:I = 0x1

.field private static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UsimCSGHandler"


# instance fields
.field private APMessage:Landroid/os/Message;

.field CSGAlgorithmState:I

.field CSGIDCount:I

.field private CSGIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private CSGInfoListFromUE:[Ljava/lang/String;

.field private CSGPLMNList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field CSGSearchIndex:I

.field private ForbiddenCSGIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final USIM_OCSGL_NOT_PRESENCE:I

.field private final USIM_OCSGL_PRESENCE:I

.field private final USIM_OCSGL_PRESENCE_EMPTY:I

.field am1:Landroid/app/AlarmManager;

.field am2:Landroid/app/AlarmManager;

.field private bManualSearchDoing:Z

.field campHomeNetwork:Z

.field private final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final mContext:Landroid/content/Context;

.field mIccCardIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mOCSGLState:I

.field private final mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mRequestStopPDP:Z

.field previousRegisterState:I

.field resetForbiddenCSGIDListCounter:I

.field retryScanCSGID:Z

.field sender10Secs:Landroid/app/PendingIntent;

.field sender2Hours:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "commandsInterface"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 124
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 87
    iput v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->USIM_OCSGL_NOT_PRESENCE:I

    .line 88
    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->USIM_OCSGL_PRESENCE_EMPTY:I

    .line 89
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->USIM_OCSGL_PRESENCE:I

    .line 90
    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mOCSGLState:I

    .line 91
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    .line 107
    iput v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    .line 108
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->campHomeNetwork:Z

    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->retryScanCSGID:Z

    .line 109
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDList:Ljava/util/ArrayList;

    .line 110
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGPLMNList:Ljava/util/ArrayList;

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    .line 112
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->APMessage:Landroid/os/Message;

    .line 113
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    .line 114
    iput v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDCount:I

    .line 115
    iput v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    .line 116
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am1:Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am2:Landroid/app/AlarmManager;

    .line 117
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender2Hours:Landroid/app/PendingIntent;

    .line 118
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender10Secs:Landroid/app/PendingIntent;

    .line 119
    iput v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetForbiddenCSGIDListCounter:I

    .line 120
    iput v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->previousRegisterState:I

    .line 121
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mRequestStopPDP:Z

    .line 684
    new-instance v1, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;-><init>(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mIccCardIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 736
    new-instance v1, Lcom/android/internal/telephony/uicc/UsimCSGHandler$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler$2;-><init>(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 125
    const-string v1, "UsimCSGHandler"

    const-string v2, "UsimCSGHandler.constructor "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 127
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    .line 128
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 130
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setCsgResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 131
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x4

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->setCsgRejectId(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 132
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x1f

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 133
    const/4 v1, 0x5

    invoke-virtual {p1, p0, v1, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 134
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am1:Landroid/app/AlarmManager;

    .line 135
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am2:Landroid/app/AlarmManager;

    .line 137
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.telephony.intent.action.csg_2hours_expired"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender2Hours:Landroid/app/PendingIntent;

    .line 138
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.telephony.intent.action.csg_10secs_expired"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender10Secs:Landroid/app/PendingIntent;

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v0, "IccCardfilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "com.htc.telephony.intent.action.csg_2hours_expired"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mIccCardIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v5, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->clearAllVariableWhenSIMAbsent()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/uicc/UsimCSGHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->searchIsFailure()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetSearchVariable()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->triggerPeriodicSearch()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->requestCSGIDList()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)Lcom/android/internal/telephony/gsm/GSMPhone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method private checkCSGDataAtSIM(ILjava/lang/String;)Z
    .locals 6
    .param p1, "csgID"    # I
    .param p2, "csgPLMN"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 320
    const-string v2, "UsimCSGHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UsimCSGHandler.checkCSGIDAtSIM() : input CSGID is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", CSGPLMN = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 323
    .local v1, "totalCSGIDAtSIM":I
    const/4 v0, 0x0

    .line 325
    .local v0, "index":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 327
    const-string v4, "UsimCSGHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UsimCSGHandler.checkCSGIDAtSIM() : CSGID is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " of index "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", PLMN"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGPLMNList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGPLMNList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    .line 334
    :goto_1
    return v2

    .line 332
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private checkDataConnectionDisconnected()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 224
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->disablePdpForNetworkScanTemporarily(Z)Z

    .line 226
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 227
    .local v0, "ds":Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string v4, "UsimCSGHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UsimCSGHandler.checkDataNetworkDisconnected(): data status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v0, v4, :cond_2

    .line 230
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 231
    .local v1, "telephonyService":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 233
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x40

    invoke-virtual {v1, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 236
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mRequestStopPDP:Z

    .line 237
    const/4 v2, 0x6

    const-wide/16 v4, 0x2710

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sendEmptyMessageDelayed(IJ)Z

    move v2, v3

    .line 241
    .end local v1    # "telephonyService":Landroid/telephony/TelephonyManager;
    :cond_2
    return v2
.end method

.method private checkForbiddenCSGList(I)Z
    .locals 5
    .param p1, "csgID"    # I

    .prologue
    .line 339
    const-string v2, "UsimCSGHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimCSGHandler.checkForbiddenCSGList() : input CSGID is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 342
    .local v1, "totalCSGIDAtForbiddenList":I
    const/4 v0, 0x0

    .line 344
    .local v0, "index":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 346
    const-string v2, "UsimCSGHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimCSGHandler.checkForbiddenCSGList() : CSGID is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 349
    const/4 v2, 0x1

    .line 353
    :goto_1
    return v2

    .line 351
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private checkTriggerManualSearch()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 246
    const/4 v1, 0x1

    .line 247
    .local v1, "result":Z
    const/4 v0, 0x0

    .line 248
    .local v0, "mServiceState":Landroid/telephony/ServiceState;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    if-nez v5, :cond_0

    .line 250
    const-string v5, "UsimCSGHandler"

    const-string v6, "checkTriggerManualSearch(): phone thread is NULL"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_0
    return v4

    .line 253
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 254
    if-nez v0, :cond_1

    .line 256
    const-string v5, "UsimCSGHandler"

    const-string v6, "checkTriggerManualSearch(): Service State Thread is NULL"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 260
    .local v3, "serviceState":I
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    .line 261
    .local v2, "serviceRoaming":Z
    const-string v4, "UsimCSGHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkTriggerManualSearch(): state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , roaming = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    if-nez v3, :cond_2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 264
    const/4 v1, 0x0

    .line 266
    :cond_2
    const-string v4, "UsimCSGHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkTriggerManualSearch(): Manual Search Trigger is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    .line 267
    goto :goto_0
.end method

.method private clearAllVariableWhenSIMAbsent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 283
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.clearAllVariableWhenSIMAbsent()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    .line 286
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetSearchVariable()V

    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 290
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDList:Ljava/util/ArrayList;

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGPLMNList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGPLMNList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 295
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGPLMNList:Ljava/util/ArrayList;

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 301
    :cond_2
    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetForbiddenCSGIDListCounter:I

    .line 302
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->retryScanCSGID:Z

    .line 304
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mRequestStopPDP:Z

    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->disablePdpForNetworkScanTemporarily(Z)Z

    .line 306
    return-void
.end method

.method private handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 3
    .param p1, "refreshResponse"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .prologue
    const/4 v2, 0x0

    .line 462
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.handleSimRefresh() "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    if-nez p1, :cond_0

    .line 465
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.handleSimRefresh() : without input"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :goto_0
    return-void

    .line 469
    :cond_0
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    packed-switch v0, :pswitch_data_0

    .line 482
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.handleSimRefresh() : unknown operation"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 473
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 477
    :cond_1
    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetForbiddenCSGIDListCounter:I

    .line 478
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->retryScanCSGID:Z

    goto :goto_0

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isCommandExceptionCSGScanRetry(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 488
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1    # "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NW_CSG_SCAN_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private replyManualSearchResult(I)V
    .locals 3
    .param p1, "bSuccess"    # I

    .prologue
    .line 434
    const-string v0, "UsimCSGHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsimCSGHandler.replyManualSearchResult() : result is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestStopPDP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mRequestStopPDP:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mRequestStopPDP:Z

    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->disablePdpForNetworkScanTemporarily(Z)Z

    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->APMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->APMessage:Landroid/os/Message;

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->APMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 443
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.replyManualSearchResult() : Manual search End "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_0
    return-void
.end method

.method private requestCSGIDList()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 413
    const-string v0, "UsimCSGHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsimCSGHandler.requestCSGIDList() : search state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    if-nez v0, :cond_1

    .line 417
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am1:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am1:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x6ddd00

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender2Hours:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 422
    :cond_0
    iput v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    .line 423
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCsgAvailableNetworks(Landroid/os/Message;)V

    .line 430
    :goto_0
    return-void

    .line 427
    :cond_1
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.requestCSGIDList() : error algorithm state "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->searchIsFailure()V

    goto :goto_0
.end method

.method private requestCampCSGID()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 357
    const-string v2, "UsimCSGHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimCSGHandler.requestCampCSGID() : search state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 361
    const-string v2, "UsimCSGHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimCSGHandler.requestCampCSGID() : CSGID count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    iget v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDCount:I

    if-ge v2, v3, :cond_5

    .line 364
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x4

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 368
    const-string v2, "UsimCSGHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimCSGHandler.requestCampCSGID() :  PLMN = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    mul-int/lit8 v5, v5, 0x5

    add-int/lit8 v5, v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CSGID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    mul-int/lit8 v5, v5, 0x5

    add-int/lit8 v5, v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,RAT = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    mul-int/lit8 v5, v5, 0x5

    add-int/lit8 v5, v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 374
    .local v0, "csgID":I
    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->checkForbiddenCSGList(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 376
    iget v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mOCSGLState:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->checkCSGDataAtSIM(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 378
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x4

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 379
    .local v1, "rat":I
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    mul-int/lit8 v4, v4, 0x5

    add-int/lit8 v4, v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->setCsgNetworkSelection(Ljava/lang/String;IILandroid/os/Message;)V

    .line 381
    iput v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    .line 382
    const-string v2, "UsimCSGHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimCSGHandler.requestCampCSGID() (int):  CSG ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RAT = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    .end local v0    # "csgID":I
    .end local v1    # "rat":I
    :goto_1
    return-void

    .line 387
    .restart local v0    # "csgID":I
    :cond_1
    const-string v2, "UsimCSGHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimCSGHandler.requestCampCSGID() : CSG ID ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) doesn\'t exist at SIM, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    goto/16 :goto_0

    .line 393
    :cond_2
    const-string v2, "UsimCSGHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimCSGHandler.requestCampCSGID() : CSG CSGID is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    goto/16 :goto_0

    .line 399
    .end local v0    # "csgID":I
    :cond_3
    const-string v2, "UsimCSGHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimCSGHandler.requestCampCSGID() : necessary string is null , index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    goto/16 :goto_0

    .line 406
    :cond_4
    const-string v2, "UsimCSGHandler"

    const-string v3, "UsimCSGHandler.requestCampCSGID() : error algorithm state "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->searchIsFailure()V

    goto :goto_1
.end method

.method private resetSearchVariable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 272
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.resetSearchVariable()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    .line 277
    :cond_0
    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDCount:I

    .line 278
    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    .line 279
    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    .line 280
    return-void
.end method

.method private searchIsFailure()V
    .locals 2

    .prologue
    .line 449
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.searchIsFailure() "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetSearchVariable()V

    .line 453
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    .line 456
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->replyManualSearchResult(I)V

    .line 458
    :cond_0
    return-void
.end method

.method private triggerPeriodicSearch()V
    .locals 2

    .prologue
    .line 310
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.triggerPeriodicSearch() "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mOCSGLState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 313
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.triggerPeriodicSearch() : don\'t need periodic search due to OCSGL is empty "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->requestCSGIDList()V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.clear()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->clearAllVariableWhenSIMAbsent()V

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am1:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am1:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender2Hours:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 209
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender2Hours:Landroid/app/PendingIntent;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am2:Landroid/app/AlarmManager;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am2:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender10Secs:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 214
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender10Secs:Landroid/app/PendingIntent;

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetCsgResult(Landroid/os/Handler;)V

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetCsgRejectId(Landroid/os/Handler;)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mIccCardIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 219
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 502
    const-string v6, "UsimCSGHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage + msg is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 680
    const-string v6, "UsimCSGHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring unexpected message, what="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 505
    :sswitch_0
    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    if-ne v6, v10, :cond_5

    .line 507
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 508
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 510
    const-string v6, "UsimCSGHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_PERFORM_NETWORK_SCAN_RESP: exception is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->isCommandExceptionCSGScanRetry(Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 513
    const-string v6, "UsimCSGHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_PERFORM_NETWORK_SCAN_RESP: retry flag = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->retryScanCSGID:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-boolean v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->retryScanCSGID:Z

    if-nez v6, :cond_3

    .line 516
    iput-boolean v10, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->retryScanCSGID:Z

    .line 517
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am2:Landroid/app/AlarmManager;

    if-eqz v6, :cond_0

    .line 518
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am2:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x2710

    add-long/2addr v7, v9

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender10Secs:Landroid/app/PendingIntent;

    invoke-virtual {v6, v11, v7, v8, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 526
    :cond_1
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    .line 527
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 529
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    array-length v6, v6

    div-int/lit8 v6, v6, 0x5

    iput v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDCount:I

    .line 530
    iput v9, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    .line 531
    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    iget v7, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDCount:I

    if-ge v6, v7, :cond_2

    .line 533
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->requestCampCSGID()V

    goto :goto_0

    .line 538
    :cond_2
    const-string v6, "UsimCSGHandler"

    const-string v7, "EVENT_PERFORM_NETWORK_SCAN_RESP : CSG ID count is 0"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->searchIsFailure()V

    goto/16 :goto_0

    .line 543
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_4
    const-string v6, "UsimCSGHandler"

    const-string v7, "EVENT_PERFORM_NETWORK_SCAN_RESP : response data is NULL"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 549
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_5
    const-string v6, "UsimCSGHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_PERFORM_NETWORK_SCAN_RESP : search state not corrrect and skip this result , search state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 555
    :sswitch_1
    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    if-ne v6, v11, :cond_7

    .line 557
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 558
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_6

    .line 560
    const-string v6, "UsimCSGHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the result of camp network command failure : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    .line 563
    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    iget v7, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDCount:I

    if-ge v6, v7, :cond_8

    .line 565
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->requestCampCSGID()V

    goto/16 :goto_0

    .line 571
    :cond_6
    const-string v6, "UsimCSGHandler"

    const-string v7, "the result of camp network  : no failure"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 577
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_7
    const-string v6, "UsimCSGHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_SET_SYSTEM_SELECTION_PREFERENCE_RESP : search state not corrrect and skip this result , search state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->searchIsFailure()V

    goto/16 :goto_0

    .line 583
    :sswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    iget-object v4, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/ServiceState;

    .line 584
    .local v4, "state":Landroid/telephony/ServiceState;
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 585
    .local v3, "registerState":I
    const-string v6, "UsimCSGHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_SERVICE_STATE_CHANGED (begin): previousState is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->previousRegisterState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and State = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", campHomeNetwork = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->campHomeNetwork:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    if-eqz v3, :cond_b

    .line 589
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am1:Landroid/app/AlarmManager;

    if-eqz v6, :cond_9

    .line 591
    const-string v6, "UsimCSGHandler"

    const-string v7, "No or Limited Service then stop the timer of periodic search"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am1:Landroid/app/AlarmManager;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender2Hours:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 594
    :cond_9
    iput-boolean v9, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->campHomeNetwork:Z

    .line 607
    :cond_a
    :goto_2
    iput v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->previousRegisterState:I

    .line 608
    const-string v6, "UsimCSGHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_SERVICE_STATE_CHANGED (end): previousState is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->previousRegisterState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and State = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", campHomeNetwork = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->campHomeNetwork:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 598
    :cond_b
    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->previousRegisterState:I

    if-eq v6, v10, :cond_c

    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->previousRegisterState:I

    if-ne v6, v11, :cond_a

    .line 600
    :cond_c
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v6

    if-nez v6, :cond_a

    .line 602
    iput-boolean v10, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->campHomeNetwork:Z

    .line 603
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->triggerPeriodicSearch()V

    goto :goto_2

    .line 613
    .end local v3    # "registerState":I
    .end local v4    # "state":Landroid/telephony/ServiceState;
    :sswitch_3
    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    if-ne v6, v11, :cond_e

    .line 615
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 616
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    check-cast v6, [I

    aget v2, v6, v9

    .line 617
    .local v2, "isCampCSGNetwork":I
    const-string v6, "UsimCSGHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the result of camp CSG network  is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    if-nez v2, :cond_d

    .line 621
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    .line 622
    iget-boolean v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    if-ne v6, v10, :cond_0

    .line 624
    iput-boolean v9, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    .line 625
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->replyManualSearchResult(I)V

    goto/16 :goto_0

    .line 631
    :cond_d
    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    .line 633
    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    iget v7, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDCount:I

    if-ge v6, v7, :cond_f

    .line 635
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->requestCampCSGID()V

    goto/16 :goto_0

    .line 642
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "isCampCSGNetwork":I
    :cond_e
    const-string v6, "UsimCSGHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_SYS_INFO_IND : search state not corrrect and skip this result , search state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->searchIsFailure()V

    goto/16 :goto_0

    .line 648
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 649
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    check-cast v6, [I

    aget v1, v6, v9

    .line 651
    .local v1, "forbiddenCSGID":I
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 653
    const-string v6, "UsimCSGHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the reject CSG ID  is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 659
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "forbiddenCSGID":I
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 660
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const-string v6, "UsimCSGHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sim REFRESH with exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_0

    .line 663
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto/16 :goto_0

    .line 668
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    const-string v6, "UsimCSGHandler"

    const-string v7, "Stop Data connection timeout "

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 671
    .local v5, "telephonyService":Landroid/telephony/TelephonyManager;
    if-eqz v5, :cond_10

    .line 672
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v5, v6, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 674
    :cond_10
    iput-boolean v10, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    .line 675
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->requestCSGIDList()V

    goto/16 :goto_0

    .line 503
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_2
        0x6 -> :sswitch_6
        0x1f -> :sswitch_5
    .end sparse-switch
.end method

.method public setCSGIDList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "Lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.setCSGIDList()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDList:Ljava/util/ArrayList;

    .line 190
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->campHomeNetwork:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->triggerPeriodicSearch()V

    .line 192
    :cond_0
    return-void
.end method

.method public setCSGPLMNList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "Lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.setCSGPLMNList()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGPLMNList:Ljava/util/ArrayList;

    .line 198
    return-void
.end method

.method public setOCSGLState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 182
    const-string v0, "UsimCSGHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsimCSGHandler.setOCSGLState() : state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iput p1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mOCSGLState:I

    .line 184
    return-void
.end method

.method public triggerManualSearch(Landroid/os/Message;)I
    .locals 4
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 148
    iget v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mOCSGLState:I

    if-ne v2, v0, :cond_0

    .line 150
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.triggerManualSearch() : EFOCSGL is empty then no search"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v0, 0x4

    .line 177
    :goto_0
    return v0

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->checkTriggerManualSearch()Z

    move-result v2

    if-eq v2, v0, :cond_1

    .line 155
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.triggerManualSearch() : Not camp ATT HOME network then no search"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x2

    goto :goto_0

    .line 158
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    if-eqz v2, :cond_2

    .line 160
    const-string v1, "UsimCSGHandler"

    const-string v2, "UsimCSGHandler.triggerManualSearch() : manual search is doing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 163
    :cond_2
    const-string v2, "UsimCSGHandler"

    const-string v3, "UsimCSGHandler.triggerManualSearch() : Manual search START"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetSearchVariable()V

    .line 166
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->retryScanCSGID:Z

    .line 167
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->APMessage:Landroid/os/Message;

    .line 168
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->checkDataConnectionDisconnected()Z

    move-result v2

    if-ne v2, v0, :cond_3

    .line 170
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    .line 171
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->requestCSGIDList()V

    :goto_1
    move v0, v1

    .line 177
    goto :goto_0

    .line 175
    :cond_3
    const-string v0, "UsimCSGHandler"

    const-string v2, "UsimCSGHandler.triggerManualSearch() : Need disconnecting Data Network first"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
