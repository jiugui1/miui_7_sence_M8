.class Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;
.super Ljava/lang/Object;
.source "DefaultPhoneNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DefaultPhoneNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "notifyDcParam"
.end annotation


# instance fields
.field private latest_any_DCState:I

.field private latest_apn:Ljava/lang/String;

.field private latest_each_DCState:I

.field private latest_errorCause:I

.field private latest_ipv:Lcom/android/internal/telephony/HtcPhoneConstants$IPVersion;

.field private latest_ipv_DCState:I

.field private latest_linkCapabilities:Landroid/net/LinkCapabilities;

.field private latest_linkProperties:Landroid/net/LinkProperties;

.field private latest_possible:Z

.field private latest_reason:Ljava/lang/String;

.field private latest_roaming:Z

.field private latest_state:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field private latest_tech:I

.field final synthetic this$0:Lcom/android/internal/telephony/DefaultPhoneNotifier;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/DefaultPhoneNotifier;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 992
    iput-object p1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->this$0:Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    iput-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_state:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 994
    iput-boolean v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_possible:Z

    .line 995
    iput-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_reason:Ljava/lang/String;

    .line 996
    iput-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_apn:Ljava/lang/String;

    .line 997
    iput-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_linkProperties:Landroid/net/LinkProperties;

    .line 998
    iput-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_linkCapabilities:Landroid/net/LinkCapabilities;

    .line 999
    iput v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_tech:I

    .line 1000
    iput-boolean v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_roaming:Z

    .line 1001
    iput v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_errorCause:I

    .line 1003
    iput v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_any_DCState:I

    .line 1004
    iput v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_each_DCState:I

    .line 1005
    iput v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_ipv_DCState:I

    .line 1006
    iput-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_ipv:Lcom/android/internal/telephony/HtcPhoneConstants$IPVersion;

    .line 1007
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/DefaultPhoneNotifier;Lcom/android/internal/telephony/DefaultPhoneNotifier$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/DefaultPhoneNotifier;
    .param p2, "x1"    # Lcom/android/internal/telephony/DefaultPhoneNotifier$1;

    .prologue
    .line 976
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;-><init>(Lcom/android/internal/telephony/DefaultPhoneNotifier;)V

    return-void
.end method

.method private HtcDupNotifyDcParam(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;ZIZLandroid/net/LinkProperties;Landroid/net/LinkCapabilities;I)Z
    .locals 2
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;
    .param p5, "possible"    # Z
    .param p6, "tech"    # I
    .param p7, "roaming"    # Z
    .param p8, "linkProperties"    # Landroid/net/LinkProperties;
    .param p9, "linkCapabilities"    # Landroid/net/LinkCapabilities;
    .param p10, "errorCause"    # I

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_state:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v0, p4, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_possible:Z

    if-ne v0, p5, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_reason:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_reason:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_reason:Ljava/lang/String;

    if-nez v0, :cond_4

    if-nez p2, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_apn:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-interface {p1, p3}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_apn:Ljava/lang/String;

    invoke-interface {p1, p3}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_apn:Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-interface {p1, p3}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_tech:I

    if-ne v0, p6, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_roaming:Z

    if-ne v0, p7, :cond_4

    iget v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_errorCause:I

    if-ne v0, p10, :cond_4

    invoke-direct {p0, p8}, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->compareLinkProperty(Landroid/net/LinkProperties;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1069
    const/4 v0, 0x1

    .line 1071
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;ZIZLandroid/net/LinkProperties;Landroid/net/LinkCapabilities;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;
    .param p1, "x1"    # Lcom/android/internal/telephony/Phone;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/android/internal/telephony/PhoneConstants$DataState;
    .param p5, "x5"    # Z
    .param p6, "x6"    # I
    .param p7, "x7"    # Z
    .param p8, "x8"    # Landroid/net/LinkProperties;
    .param p9, "x9"    # Landroid/net/LinkCapabilities;
    .param p10, "x10"    # I

    .prologue
    .line 976
    invoke-direct/range {p0 .. p10}, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->HtcDupNotifyDcParam(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;ZIZLandroid/net/LinkProperties;Landroid/net/LinkCapabilities;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;Lcom/android/internal/telephony/PhoneConstants$DataState;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZZIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;
    .param p1, "x1"    # Lcom/android/internal/telephony/PhoneConstants$DataState;
    .param p2, "x2"    # Landroid/net/LinkProperties;
    .param p3, "x3"    # Landroid/net/LinkCapabilities;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # Ljava/lang/String;
    .param p9, "x9"    # Ljava/lang/String;

    .prologue
    .line 976
    invoke-direct/range {p0 .. p9}, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->configNotifyDcParam(Lcom/android/internal/telephony/PhoneConstants$DataState;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZZIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private compareLinkProperty(Landroid/net/LinkProperties;)Z
    .locals 3
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1033
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_linkProperties:Landroid/net/LinkProperties;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 1034
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, p1}, Landroid/net/LinkProperties;->isIdenticalAddresses(Landroid/net/LinkProperties;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1052
    :cond_0
    :goto_0
    return v0

    .line 1036
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, p1}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1038
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, p1}, Landroid/net/LinkProperties;->isIdenticalHttpProxy(Landroid/net/LinkProperties;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1040
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, p1}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1042
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, p1}, Landroid/net/LinkProperties;->isIdenticalRoutes(Landroid/net/LinkProperties;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->this$0:Lcom/android/internal/telephony/DefaultPhoneNotifier;

    const-string v2, "compareLinkProperty rat = true"

    # invokes: Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->access$300(Lcom/android/internal/telephony/DefaultPhoneNotifier;Ljava/lang/String;)V

    move v0, v1

    .line 1046
    goto :goto_0

    .line 1047
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_linkProperties:Landroid/net/LinkProperties;

    if-nez v2, :cond_3

    if-nez p1, :cond_3

    .line 1048
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->this$0:Lcom/android/internal/telephony/DefaultPhoneNotifier;

    const-string v2, "compareLinkProperty linkProperties = null ,rat = true"

    # invokes: Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->access$300(Lcom/android/internal/telephony/DefaultPhoneNotifier;Ljava/lang/String;)V

    move v0, v1

    .line 1049
    goto :goto_0

    .line 1051
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->this$0:Lcom/android/internal/telephony/DefaultPhoneNotifier;

    const-string v2, "compareLinkProperty rat = false"

    # invokes: Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->access$300(Lcom/android/internal/telephony/DefaultPhoneNotifier;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private configNotifyDcParam(Lcom/android/internal/telephony/PhoneConstants$DataState;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZZIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;
    .param p3, "linkCapabilities"    # Landroid/net/LinkCapabilities;
    .param p4, "possible"    # Z
    .param p5, "roaming"    # Z
    .param p6, "tech"    # I
    .param p7, "errorCause"    # I
    .param p8, "apn"    # Ljava/lang/String;
    .param p9, "reason"    # Ljava/lang/String;

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_state:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 1011
    iput-boolean p4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_possible:Z

    .line 1012
    iput-object p9, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_reason:Ljava/lang/String;

    .line 1013
    iput-object p8, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_apn:Ljava/lang/String;

    .line 1014
    iput-object p2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_linkProperties:Landroid/net/LinkProperties;

    .line 1015
    iput-object p3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_linkCapabilities:Landroid/net/LinkCapabilities;

    .line 1016
    iput p6, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_tech:I

    .line 1017
    iput-boolean p5, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_roaming:Z

    .line 1018
    iput p7, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->latest_errorCause:I

    .line 1019
    return-void
.end method
