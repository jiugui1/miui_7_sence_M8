.class final Lcom/android/server/ConnectivityService$RouteAttributes;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RouteAttributes"
.end annotation


# instance fields
.field private metric:I

.field private metricV6:I

.field private tableId:I

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 1

    .prologue
    .line 891
    iput-object p1, p0, Lcom/android/server/ConnectivityService$RouteAttributes;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 895
    # ++operator for: Lcom/android/server/ConnectivityService;->mRouteIdCtr:I
    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$104(Lcom/android/server/ConnectivityService;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ConnectivityService$RouteAttributes;->tableId:I

    .line 896
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ConnectivityService$RouteAttributes;->metric:I

    .line 899
    const/16 v0, 0x3ec

    iput v0, p0, Lcom/android/server/ConnectivityService$RouteAttributes;->metricV6:I

    .line 900
    return-void
.end method


# virtual methods
.method public getMetric()I
    .locals 1

    .prologue
    .line 907
    iget v0, p0, Lcom/android/server/ConnectivityService$RouteAttributes;->metric:I

    return v0
.end method

.method public getTableId()I
    .locals 1

    .prologue
    .line 903
    iget v0, p0, Lcom/android/server/ConnectivityService$RouteAttributes;->tableId:I

    return v0
.end method

.method public getV6Metric()I
    .locals 1

    .prologue
    .line 911
    iget v0, p0, Lcom/android/server/ConnectivityService$RouteAttributes;->metricV6:I

    return v0
.end method

.method public setMetric(I)V
    .locals 1
    .param p1, "m"    # I

    .prologue
    .line 915
    iput p1, p0, Lcom/android/server/ConnectivityService$RouteAttributes;->metric:I

    .line 916
    if-lez p1, :cond_0

    .line 917
    add-int/lit16 v0, p1, 0x400

    iput v0, p0, Lcom/android/server/ConnectivityService$RouteAttributes;->metricV6:I

    .line 920
    :goto_0
    return-void

    .line 919
    :cond_0
    const/16 v0, 0x3ec

    iput v0, p0, Lcom/android/server/ConnectivityService$RouteAttributes;->metricV6:I

    goto :goto_0
.end method
