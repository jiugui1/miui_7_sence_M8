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

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->USIM_OCSGL_NOT_PRESENCE:I

    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->USIM_OCSGL_PRESENCE_EMPTY:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->USIM_OCSGL_PRESENCE:I

    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mOCSGLState:I

    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    iput v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->campHomeNetwork:Z

    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->retryScanCSGID:Z

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDList:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGPLMNList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->APMessage:Landroid/os/Message;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    iput v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDCount:I

    iput v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am1:Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am2:Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender2Hours:Landroid/app/PendingIntent;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender10Secs:Landroid/app/PendingIntent;

    iput v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetForbiddenCSGIDListCounter:I

    iput v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->previousRegisterState:I

    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mRequestStopPDP:Z

    new-instance v1, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;-><init>(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mIccCardIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/internal/telephony/uicc/UsimCSGHandler$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler$2;-><init>(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const-string v1, "UsimCSGHandler"

    const-string v2, "UsimCSGHandler.constructor "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setCsgResult(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x4

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->setCsgRejectId(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x1f

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v1, 0x5

    invoke-virtual {p1, p0, v1, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am1:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am2:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.telephony.intent.action.csg_2hours_expired"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender2Hours:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.telephony.intent.action.csg_10secs_expired"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender10Secs:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "IccCardfilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.telephony.intent.action.csg_2hours_expired"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mIccCardIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v5, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->clearAllVariableWhenSIMAbsent()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/uicc/UsimCSGHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->searchIsFailure()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetSearchVariable()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->triggerPeriodicSearch()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->requestCSGIDList()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)Lcom/android/internal/telephony/gsm/GSMPhone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method private checkCSGDataAtSIM(ILjava/lang/String;)Z
    .locals 6
    .param p1, "csgID"    # I
    .param p2, "csgPLMN"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

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

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "totalCSGIDAtSIM":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v1, :cond_1

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

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private checkDataConnectionDisconnected()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->disablePdpForNetworkScanTemporarily(Z)Z

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

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

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v0, v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .local v1, "telephonyService":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x40

    invoke-virtual {v1, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mRequestStopPDP:Z

    const/4 v2, 0x6

    const-wide/16 v4, 0x2710

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sendEmptyMessageDelayed(IJ)Z

    move v2, v3

    .end local v1    # "telephonyService":Landroid/telephony/TelephonyManager;
    :cond_2
    return v2
.end method

.method private checkForbiddenCSGList(I)Z
    .locals 5
    .param p1, "csgID"    # I

    .prologue
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

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "totalCSGIDAtForbiddenList":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v1, :cond_1

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

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private checkTriggerManualSearch()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "mServiceState":Landroid/telephony/ServiceState;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    if-nez v5, :cond_0

    const-string v5, "UsimCSGHandler"

    const-string v6, "checkTriggerManualSearch(): phone thread is NULL"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v5, "UsimCSGHandler"

    const-string v6, "checkTriggerManualSearch(): Service State Thread is NULL"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .local v3, "serviceState":I
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

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

    if-nez v3, :cond_2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    const/4 v1, 0x0

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

    goto :goto_0
.end method

.method private clearAllVariableWhenSIMAbsent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.clearAllVariableWhenSIMAbsent()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetSearchVariable()V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGPLMNList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGPLMNList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGPLMNList:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetForbiddenCSGIDListCounter:I

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->retryScanCSGID:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mRequestStopPDP:Z

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->disablePdpForNetworkScanTemporarily(Z)Z

    return-void
.end method

.method private handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 3
    .param p1, "refreshResponse"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .prologue
    const/4 v2, 0x0

    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.handleSimRefresh() "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.handleSimRefresh() : without input"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.handleSimRefresh() : unknown operation"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetForbiddenCSGIDListCounter:I

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->retryScanCSGID:Z

    goto :goto_0

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

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mRequestStopPDP:Z

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->disablePdpForNetworkScanTemporarily(Z)Z

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->APMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->APMessage:Landroid/os/Message;

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->APMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.replyManualSearchResult() : Manual search End "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private requestCSGIDList()V
    .locals 7

    .prologue
    const/4 v6, 0x1

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

    iget v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am1:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am1:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x6ddd00

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender2Hours:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_0
    iput v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCsgAvailableNetworks(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.requestCSGIDList() : error algorithm state "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->searchIsFailure()V

    goto :goto_0
.end method

.method private requestCampCSGID()V
    .locals 7

    .prologue
    const/4 v6, 0x2

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

    iget v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

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

    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    iget v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDCount:I

    if-ge v2, v3, :cond_5

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

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, "csgID":I
    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->checkForbiddenCSGList(I)Z

    move-result v2

    if-nez v2, :cond_2

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

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x4

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

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

    iput v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

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

    .end local v0    # "csgID":I
    .end local v1    # "rat":I
    :goto_1
    return-void

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

    iget v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    goto/16 :goto_0

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

    iget v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    goto/16 :goto_0

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

    iget v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    goto/16 :goto_0

    :cond_4
    const-string v2, "UsimCSGHandler"

    const-string v3, "UsimCSGHandler.requestCampCSGID() : error algorithm state "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->searchIsFailure()V

    goto :goto_1
.end method

.method private resetSearchVariable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.resetSearchVariable()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    :cond_0
    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDCount:I

    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    return-void
.end method

.method private searchIsFailure()V
    .locals 2

    .prologue
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.searchIsFailure() "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetSearchVariable()V

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->replyManualSearchResult(I)V

    :cond_0
    return-void
.end method

.method private triggerPeriodicSearch()V
    .locals 2

    .prologue
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.triggerPeriodicSearch() "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mOCSGLState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.triggerPeriodicSearch() : don\'t need periodic search due to OCSGL is empty "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->requestCSGIDList()V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.clear()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->clearAllVariableWhenSIMAbsent()V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am1:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am1:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender2Hours:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender2Hours:Landroid/app/PendingIntent;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am2:Landroid/app/AlarmManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am2:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender10Secs:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender10Secs:Landroid/app/PendingIntent;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetCsgResult(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetCsgRejectId(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mIccCardIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

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

    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

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

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    if-ne v6, v10, :cond_5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

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

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->isCommandExceptionCSGScanRetry(Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_3

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

    iget-boolean v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->retryScanCSGID:Z

    if-nez v6, :cond_3

    iput-boolean v10, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->retryScanCSGID:Z

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am2:Landroid/app/AlarmManager;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am2:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x2710

    add-long/2addr v7, v9

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender10Secs:Landroid/app/PendingIntent;

    invoke-virtual {v6, v11, v7, v8, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    array-length v6, v6

    div-int/lit8 v6, v6, 0x5

    iput v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDCount:I

    iput v9, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    iget v7, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDCount:I

    if-ge v6, v7, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->requestCampCSGID()V

    goto :goto_0

    :cond_2
    const-string v6, "UsimCSGHandler"

    const-string v7, "EVENT_PERFORM_NETWORK_SCAN_RESP : CSG ID count is 0"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->searchIsFailure()V

    goto/16 :goto_0

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_4
    const-string v6, "UsimCSGHandler"

    const-string v7, "EVENT_PERFORM_NETWORK_SCAN_RESP : response data is NULL"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

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

    :sswitch_1
    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    if-ne v6, v11, :cond_7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_6

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

    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    iget v7, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDCount:I

    if-ge v6, v7, :cond_8

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->requestCampCSGID()V

    goto/16 :goto_0

    :cond_6
    const-string v6, "UsimCSGHandler"

    const-string v7, "the result of camp network  : no failure"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

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

    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->searchIsFailure()V

    goto/16 :goto_0

    :sswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    iget-object v4, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/ServiceState;

    .local v4, "state":Landroid/telephony/ServiceState;
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

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

    if-eqz v3, :cond_b

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am1:Landroid/app/AlarmManager;

    if-eqz v6, :cond_9

    const-string v6, "UsimCSGHandler"

    const-string v7, "No or Limited Service then stop the timer of periodic search"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am1:Landroid/app/AlarmManager;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender2Hours:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_9
    iput-boolean v9, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->campHomeNetwork:Z

    :cond_a
    :goto_2
    iput v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->previousRegisterState:I

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

    :cond_b
    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->previousRegisterState:I

    if-eq v6, v10, :cond_c

    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->previousRegisterState:I

    if-ne v6, v11, :cond_a

    :cond_c
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v6

    if-nez v6, :cond_a

    iput-boolean v10, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->campHomeNetwork:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->triggerPeriodicSearch()V

    goto :goto_2

    .end local v3    # "registerState":I
    .end local v4    # "state":Landroid/telephony/ServiceState;
    :sswitch_3
    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    if-ne v6, v11, :cond_e

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    check-cast v6, [I

    aget v2, v6, v9

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

    if-nez v2, :cond_d

    const/4 v6, 0x3

    iput v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    iget-boolean v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    if-ne v6, v10, :cond_0

    iput-boolean v9, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->replyManualSearchResult(I)V

    goto/16 :goto_0

    :cond_d
    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    iget v7, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDCount:I

    if-ge v6, v7, :cond_f

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->requestCampCSGID()V

    goto/16 :goto_0

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

    :cond_f
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->searchIsFailure()V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    check-cast v6, [I

    aget v1, v6, v9

    .local v1, "forbiddenCSGID":I
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

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

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "forbiddenCSGID":I
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

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

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_0

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto/16 :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    const-string v6, "UsimCSGHandler"

    const-string v7, "Stop Data connection timeout "

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .local v5, "telephonyService":Landroid/telephony/TelephonyManager;
    if-eqz v5, :cond_10

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v5, v6, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_10
    iput-boolean v10, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->requestCSGIDList()V

    goto/16 :goto_0

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
    .local p1, "Lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.setCSGIDList()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDList:Ljava/util/ArrayList;

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->campHomeNetwork:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->triggerPeriodicSearch()V

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
    .local p1, "Lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.setCSGPLMNList()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGPLMNList:Ljava/util/ArrayList;

    return-void
.end method

.method public setOCSGLState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
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

    iput p1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mOCSGLState:I

    return-void
.end method

.method public triggerManualSearch(Landroid/os/Message;)I
    .locals 4
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mOCSGLState:I

    if-ne v2, v0, :cond_0

    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.triggerManualSearch() : EFOCSGL is empty then no search"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->checkTriggerManualSearch()Z

    move-result v2

    if-eq v2, v0, :cond_1

    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.triggerManualSearch() : Not camp ATT HOME network then no search"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    if-eqz v2, :cond_2

    const-string v1, "UsimCSGHandler"

    const-string v2, "UsimCSGHandler.triggerManualSearch() : manual search is doing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "UsimCSGHandler"

    const-string v3, "UsimCSGHandler.triggerManualSearch() : Manual search START"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetSearchVariable()V

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->retryScanCSGID:Z

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->APMessage:Landroid/os/Message;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->checkDataConnectionDisconnected()Z

    move-result v2

    if-ne v2, v0, :cond_3

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->requestCSGIDList()V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    const-string v0, "UsimCSGHandler"

    const-string v2, "UsimCSGHandler.triggerManualSearch() : Need disconnecting Data Network first"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
