.class Lcom/android/server/location/GpsLocationProvider$11;
.super Landroid/location/INetInitiatedListener$Stub;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$11;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/location/INetInitiatedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendNiResponse(II)Z
    .locals 7
    .param p1, "notificationId"    # I
    .param p2, "userResponse"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNiResponse, notifId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$11;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->Is_MULTI_RAB_TRAFFIC_support:Z
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$5900(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne p2, v6, :cond_0

    const-string v2, "GpsLocationProvider"

    const-string v3, "sendNiResponse: Calling enable MRTT by requestSetMultiRABTrafficThrottling(3 , 0) ---> due to GPS_NI_RESPONSE_DENY "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "htctelephony"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    .local v1, "ihtcPhoneInterface":Lcom/android/internal/telephony/IHtcTelephony;
    if-eqz v1, :cond_0

    const/4 v2, 0x3

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/IHtcTelephony;->requestSetMultiRABTrafficThrottling(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "ihtcPhoneInterface":Lcom/android/internal/telephony/IHtcTelephony;
    :cond_0
    :goto_0
    # getter for: Lcom/android/server/location/GpsLocationProvider;->mIsCMCC:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$6000()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$11;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-virtual {v2}, Lcom/android/server/location/GpsLocationProvider;->IsSupportFastDormancy()Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne p2, v6, :cond_1

    const-string v2, "GpsLocationProvider"

    const-string v3, "shin Trun on fastDormany "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$11;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-virtual {v2, v5}, Lcom/android/server/location/GpsLocationProvider;->setFastDormancy(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$11;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_send_ni_response(II)V
    invoke-static {v2, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->access$6100(Lcom/android/server/location/GpsLocationProvider;II)V

    const/4 v2, 0x1

    return v2

    .restart local v1    # "ihtcPhoneInterface":Lcom/android/internal/telephony/IHtcTelephony;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
