.class Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$DbObserver;
.super Landroid/database/ContentObserver;
.source "UserDbSyncUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DbObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;Landroid/os/Handler;)V
    .locals 0
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$DbObserver;->this$0:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    .line 117
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 118
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 122
    const-string v0, "UdbSync"

    const-string v1, "PDN parameter change from UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$DbObserver;->this$0:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp$DbObserver;->this$0:Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/UserDbSyncUp;->sendMessage(Landroid/os/Message;)Z

    .line 124
    return-void
.end method
