.class final Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;
.super Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiDefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)V
    .locals 1

    .prologue
    .line 9914
    iput-object p1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;-><init>(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)V

    .line 9915
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->myDefaultNet:I

    .line 9916
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->otherDefaultNet:I

    .line 9917
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 9921
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityServiceHSM entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$12900(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$13000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 9922
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->runOnEnter()V

    .line 9923
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 9927
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityServiceHSM leaving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$13100(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$13200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 9928
    return-void
.end method

.method protected transitionToOther()V
    .locals 3

    .prologue
    .line 9932
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$13300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " transitionToOther"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$13400(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 9933
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    # getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mMobileDefaultState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;
    invoke-static {v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$11800(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$13500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V

    .line 9934
    return-void
.end method
