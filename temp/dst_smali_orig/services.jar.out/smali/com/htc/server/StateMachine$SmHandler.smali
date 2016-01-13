.class Lcom/htc/server/StateMachine$SmHandler;
.super Landroid/os/Handler;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/StateMachine$SmHandler$QuittingState;,
        Lcom/htc/server/StateMachine$SmHandler$HaltingState;,
        Lcom/htc/server/StateMachine$SmHandler$StateInfo;
    }
.end annotation


# static fields
.field private static final mQuitObj:Ljava/lang/Object;


# instance fields
.field private mDbg:Z

.field private mDeferredMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mDestState:Lcom/htc/server/State;

.field private mHaltingState:Lcom/htc/server/StateMachine$SmHandler$HaltingState;

.field private mInitialState:Lcom/htc/server/State;

.field private mIsConstructionCompleted:Z

.field private mMsg:Landroid/os/Message;

.field private mProcessedMessages:Lcom/htc/server/StateMachine$ProcessedMessages;

.field private mQuittingState:Lcom/htc/server/StateMachine$SmHandler$QuittingState;

.field private mSm:Lcom/htc/server/StateMachine;

.field private mStateInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/htc/server/State;",
            "Lcom/htc/server/StateMachine$SmHandler$StateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStateStack:[Lcom/htc/server/StateMachine$SmHandler$StateInfo;

.field private mStateStackTopIndex:I

.field private mTempStateStack:[Lcom/htc/server/StateMachine$SmHandler$StateInfo;

.field private mTempStateStackCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/server/StateMachine$SmHandler;->mQuitObj:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/htc/server/StateMachine;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "sm"    # Lcom/htc/server/StateMachine;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mDbg:Z

    new-instance v0, Lcom/htc/server/StateMachine$ProcessedMessages;

    invoke-direct {v0}, Lcom/htc/server/StateMachine$ProcessedMessages;-><init>()V

    iput-object v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mProcessedMessages:Lcom/htc/server/StateMachine$ProcessedMessages;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStackTopIndex:I

    new-instance v0, Lcom/htc/server/StateMachine$SmHandler$HaltingState;

    invoke-direct {v0, p0, v1}, Lcom/htc/server/StateMachine$SmHandler$HaltingState;-><init>(Lcom/htc/server/StateMachine$SmHandler;Lcom/htc/server/StateMachine$1;)V

    iput-object v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mHaltingState:Lcom/htc/server/StateMachine$SmHandler$HaltingState;

    new-instance v0, Lcom/htc/server/StateMachine$SmHandler$QuittingState;

    invoke-direct {v0, p0, v1}, Lcom/htc/server/StateMachine$SmHandler$QuittingState;-><init>(Lcom/htc/server/StateMachine$SmHandler;Lcom/htc/server/StateMachine$1;)V

    iput-object v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mQuittingState:Lcom/htc/server/StateMachine$SmHandler$QuittingState;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/htc/server/StateMachine$SmHandler;->mSm:Lcom/htc/server/StateMachine;

    iget-object v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mHaltingState:Lcom/htc/server/StateMachine$SmHandler$HaltingState;

    invoke-direct {p0, v0, v1}, Lcom/htc/server/StateMachine$SmHandler;->addState(Lcom/htc/server/State;Lcom/htc/server/State;)Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    iget-object v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mQuittingState:Lcom/htc/server/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, v0, v1}, Lcom/htc/server/StateMachine$SmHandler;->addState(Lcom/htc/server/State;Lcom/htc/server/State;)Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/htc/server/StateMachine;Lcom/htc/server/StateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;
    .param p2, "x1"    # Lcom/htc/server/StateMachine;
    .param p3, "x2"    # Lcom/htc/server/StateMachine$1;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/htc/server/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/htc/server/StateMachine;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/server/StateMachine$SmHandler;Lcom/htc/server/State;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/StateMachine$SmHandler;
    .param p1, "x1"    # Lcom/htc/server/State;

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/server/StateMachine$SmHandler;->setInitialState(Lcom/htc/server/State;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/server/StateMachine$SmHandler;Lcom/htc/server/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/StateMachine$SmHandler;
    .param p1, "x1"    # Lcom/htc/server/IState;

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/server/StateMachine$SmHandler;->transitionTo(Lcom/htc/server/IState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/server/StateMachine$SmHandler;)Lcom/htc/server/StateMachine$SmHandler$HaltingState;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/StateMachine$SmHandler;

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mHaltingState:Lcom/htc/server/StateMachine$SmHandler$HaltingState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/server/StateMachine$SmHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/StateMachine$SmHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/server/StateMachine$SmHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/server/StateMachine$SmHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/StateMachine$SmHandler;

    .prologue
    iget-boolean v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mDbg:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/server/StateMachine$SmHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/StateMachine$SmHandler;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/server/StateMachine$SmHandler;->setProcessedMessagesSize(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/server/StateMachine$SmHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/StateMachine$SmHandler;

    .prologue
    invoke-direct {p0}, Lcom/htc/server/StateMachine$SmHandler;->getProcessedMessagesSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/server/StateMachine$SmHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/StateMachine$SmHandler;

    .prologue
    invoke-direct {p0}, Lcom/htc/server/StateMachine$SmHandler;->getProcessedMessagesCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/server/StateMachine$SmHandler;I)Lcom/htc/server/StateMachine$ProcessedMessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/StateMachine$SmHandler;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/server/StateMachine$SmHandler;->getProcessedMessageInfo(I)Lcom/htc/server/StateMachine$ProcessedMessageInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/server/StateMachine$SmHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/StateMachine$SmHandler;

    .prologue
    invoke-direct {p0}, Lcom/htc/server/StateMachine$SmHandler;->quit()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/server/StateMachine$SmHandler;)Lcom/htc/server/StateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/StateMachine$SmHandler;

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mSm:Lcom/htc/server/StateMachine;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/server/StateMachine$SmHandler;Landroid/os/Message;)Z
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/StateMachine$SmHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/server/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/server/StateMachine$SmHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/StateMachine$SmHandler;

    .prologue
    invoke-direct {p0}, Lcom/htc/server/StateMachine$SmHandler;->isDbg()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/server/StateMachine$SmHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/StateMachine$SmHandler;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/server/StateMachine$SmHandler;->setDbg(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/server/StateMachine$SmHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/StateMachine$SmHandler;

    .prologue
    invoke-direct {p0}, Lcom/htc/server/StateMachine$SmHandler;->completeConstruction()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/server/StateMachine$SmHandler;Lcom/htc/server/State;Lcom/htc/server/State;)Lcom/htc/server/StateMachine$SmHandler$StateInfo;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/StateMachine$SmHandler;
    .param p1, "x1"    # Lcom/htc/server/State;
    .param p2, "x2"    # Lcom/htc/server/State;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/htc/server/StateMachine$SmHandler;->addState(Lcom/htc/server/State;Lcom/htc/server/State;)Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/server/StateMachine$SmHandler;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/StateMachine$SmHandler;

    .prologue
    invoke-direct {p0}, Lcom/htc/server/StateMachine$SmHandler;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/server/StateMachine$SmHandler;)Lcom/htc/server/IState;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/StateMachine$SmHandler;

    .prologue
    invoke-direct {p0}, Lcom/htc/server/StateMachine$SmHandler;->getCurrentState()Lcom/htc/server/IState;

    move-result-object v0

    return-object v0
.end method

.method private final addState(Lcom/htc/server/State;Lcom/htc/server/State;)Lcom/htc/server/StateMachine$SmHandler$StateInfo;
    .locals 6
    .param p1, "state"    # Lcom/htc/server/State;
    .param p2, "parent"    # Lcom/htc/server/State;

    .prologue
    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/htc/server/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_0

    const-string v3, "StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStateInternal: E state="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/server/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",parent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_3

    const-string v2, ""

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .local v0, "parentStateInfo":Lcom/htc/server/StateMachine$SmHandler$StateInfo;
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "parentStateInfo":Lcom/htc/server/StateMachine$SmHandler$StateInfo;
    check-cast v0, Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    .restart local v0    # "parentStateInfo":Lcom/htc/server/StateMachine$SmHandler$StateInfo;
    if-nez v0, :cond_1

    invoke-direct {p0, p2, v5}, Lcom/htc/server/StateMachine$SmHandler;->addState(Lcom/htc/server/State;Lcom/htc/server/State;)Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    .local v1, "stateInfo":Lcom/htc/server/StateMachine$SmHandler$StateInfo;
    if-nez v1, :cond_2

    new-instance v1, Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    .end local v1    # "stateInfo":Lcom/htc/server/StateMachine$SmHandler$StateInfo;
    invoke-direct {v1, p0, v5}, Lcom/htc/server/StateMachine$SmHandler$StateInfo;-><init>(Lcom/htc/server/StateMachine$SmHandler;Lcom/htc/server/StateMachine$1;)V

    .restart local v1    # "stateInfo":Lcom/htc/server/StateMachine$SmHandler$StateInfo;
    iget-object v2, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, v1, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    if-eq v2, v0, :cond_4

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "state already added"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0    # "parentStateInfo":Lcom/htc/server/StateMachine$SmHandler$StateInfo;
    .end local v1    # "stateInfo":Lcom/htc/server/StateMachine$SmHandler$StateInfo;
    :cond_3
    invoke-virtual {p2}, Lcom/htc/server/State;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .restart local v0    # "parentStateInfo":Lcom/htc/server/StateMachine$SmHandler$StateInfo;
    .restart local v1    # "stateInfo":Lcom/htc/server/StateMachine$SmHandler$StateInfo;
    :cond_4
    iput-object p1, v1, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->state:Lcom/htc/server/State;

    iput-object v0, v1, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->active:Z

    iget-boolean v2, p0, Lcom/htc/server/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_5

    const-string v2, "StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStateInternal: X stateInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v1
.end method

.method private final cleanupAfterQuitting()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mSm:Lcom/htc/server/StateMachine;

    invoke-virtual {v0}, Lcom/htc/server/StateMachine;->quitting()V

    iget-object v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mSm:Lcom/htc/server/StateMachine;

    # getter for: Lcom/htc/server/StateMachine;->mSmThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/htc/server/StateMachine;->access$300(Lcom/htc/server/StateMachine;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/server/StateMachine$SmHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mSm:Lcom/htc/server/StateMachine;

    # setter for: Lcom/htc/server/StateMachine;->mSmThread:Landroid/os/HandlerThread;
    invoke-static {v0, v1}, Lcom/htc/server/StateMachine;->access$302(Lcom/htc/server/StateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    :cond_0
    iget-object v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mSm:Lcom/htc/server/StateMachine;

    # setter for: Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;
    invoke-static {v0, v1}, Lcom/htc/server/StateMachine;->access$402(Lcom/htc/server/StateMachine;Lcom/htc/server/StateMachine$SmHandler;)Lcom/htc/server/StateMachine$SmHandler;

    iput-object v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mSm:Lcom/htc/server/StateMachine;

    iput-object v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    iget-object v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mProcessedMessages:Lcom/htc/server/StateMachine$ProcessedMessages;

    invoke-virtual {v0}, Lcom/htc/server/StateMachine$ProcessedMessages;->cleanup()V

    iput-object v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStack:[Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    iput-object v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mTempStateStack:[Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    iget-object v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mInitialState:Lcom/htc/server/State;

    iput-object v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mDestState:Lcom/htc/server/State;

    iget-object v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "StateMachine"

    const-string v1, "[WFD]===>cleanupAfterQuitting()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final completeConstruction()V
    .locals 8

    .prologue
    iget-boolean v5, p0, Lcom/htc/server/StateMachine$SmHandler;->mDbg:Z

    if-eqz v5, :cond_0

    const-string v5, "StateMachine"

    const-string v6, "completeConstruction: E"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    .local v3, "maxDepth":I
    iget-object v5, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    .local v4, "si":Lcom/htc/server/StateMachine$SmHandler$StateInfo;
    const/4 v0, 0x0

    .local v0, "depth":I
    move-object v1, v4

    .local v1, "i":Lcom/htc/server/StateMachine$SmHandler$StateInfo;
    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-ge v3, v0, :cond_1

    move v3, v0

    goto :goto_0

    .end local v0    # "depth":I
    .end local v1    # "i":Lcom/htc/server/StateMachine$SmHandler$StateInfo;
    .end local v4    # "si":Lcom/htc/server/StateMachine$SmHandler$StateInfo;
    :cond_3
    iget-boolean v5, p0, Lcom/htc/server/StateMachine$SmHandler;->mDbg:Z

    if-eqz v5, :cond_4

    const-string v5, "StateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "completeConstruction: maxDepth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-array v5, v3, [Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    iput-object v5, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStack:[Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    new-array v5, v3, [Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    iput-object v5, p0, Lcom/htc/server/StateMachine$SmHandler;->mTempStateStack:[Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    invoke-direct {p0}, Lcom/htc/server/StateMachine$SmHandler;->setupInitialStateStack()V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/server/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    const/4 v5, -0x2

    invoke-virtual {p0, v5}, Lcom/htc/server/StateMachine$SmHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/server/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/htc/server/StateMachine$SmHandler;->invokeEnterMethods(I)V

    invoke-direct {p0}, Lcom/htc/server/StateMachine$SmHandler;->performTransitions()V

    iget-boolean v5, p0, Lcom/htc/server/StateMachine$SmHandler;->mDbg:Z

    if-eqz v5, :cond_5

    const-string v5, "StateMachine"

    const-string v6, "completeConstruction: X"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private final deferMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-boolean v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    const-string v1, "StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deferMessage: msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/htc/server/StateMachine$SmHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .local v0, "newMsg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    iget-object v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final getCurrentMessage()Landroid/os/Message;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    return-object v0
.end method

.method private final getCurrentState()Lcom/htc/server/IState;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStack:[Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->state:Lcom/htc/server/State;

    return-object v0
.end method

.method private final getProcessedMessageInfo(I)Lcom/htc/server/StateMachine$ProcessedMessageInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mProcessedMessages:Lcom/htc/server/StateMachine$ProcessedMessages;

    invoke-virtual {v0, p1}, Lcom/htc/server/StateMachine$ProcessedMessages;->get(I)Lcom/htc/server/StateMachine$ProcessedMessageInfo;

    move-result-object v0

    return-object v0
.end method

.method private final getProcessedMessagesCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mProcessedMessages:Lcom/htc/server/StateMachine$ProcessedMessages;

    invoke-virtual {v0}, Lcom/htc/server/StateMachine$ProcessedMessages;->count()I

    move-result v0

    return v0
.end method

.method private final getProcessedMessagesSize()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mProcessedMessages:Lcom/htc/server/StateMachine$ProcessedMessages;

    invoke-virtual {v0}, Lcom/htc/server/StateMachine$ProcessedMessages;->size()I

    move-result v0

    return v0
.end method

.method private final invokeEnterMethods(I)V
    .locals 4
    .param p1, "stateStackEnteringIndex"    # I

    .prologue
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-gt v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    const-string v1, "StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeEnterMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStack:[Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->state:Lcom/htc/server/State;

    invoke-virtual {v3}, Lcom/htc/server/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStack:[Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->state:Lcom/htc/server/State;

    invoke-virtual {v1}, Lcom/htc/server/State;->enter()V

    iget-object v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStack:[Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->active:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final invokeExitMethods(Lcom/htc/server/StateMachine$SmHandler$StateInfo;)V
    .locals 4
    .param p1, "commonStateInfo"    # Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    .prologue
    :goto_0
    iget v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStack:[Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStack:[Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    iget-object v0, v1, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->state:Lcom/htc/server/State;

    .local v0, "curState":Lcom/htc/server/State;
    const-string v1, "StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeExitMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/server/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/htc/server/State;->exit()V

    iget v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStack:[Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->active:Z

    :cond_0
    iget v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStackTopIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStackTopIndex:I

    goto :goto_0

    .end local v0    # "curState":Lcom/htc/server/State;
    :cond_1
    return-void
.end method

.method private final isDbg()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mDbg:Z

    return v0
.end method

.method private final isQuit(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/htc/server/StateMachine$SmHandler;->mQuitObj:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final moveDeferredMessageAtFrontOfQueue()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/htc/server/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/htc/server/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .local v0, "curMsg":Landroid/os/Message;
    iget-boolean v2, p0, Lcom/htc/server/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_0

    const-string v2, "StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveDeferredMessageAtFrontOfQueue; what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/server/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0    # "curMsg":Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Lcom/htc/server/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private final moveTempStateStackToStateStack()I
    .locals 7

    .prologue
    iget v3, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStackTopIndex:I

    add-int/lit8 v2, v3, 0x1

    .local v2, "startingIndex":I
    iget v3, p0, Lcom/htc/server/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    move v1, v2

    .local v1, "j":I
    :goto_0
    if-ltz v0, :cond_1

    iget-boolean v3, p0, Lcom/htc/server/StateMachine$SmHandler;->mDbg:Z

    if-eqz v3, :cond_0

    const-string v3, "StateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTempStackToStateStack: i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",j="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStack:[Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    iget-object v4, p0, Lcom/htc/server/StateMachine$SmHandler;->mTempStateStack:[Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    aget-object v4, v4, v0

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStackTopIndex:I

    iget-boolean v3, p0, Lcom/htc/server/StateMachine$SmHandler;->mDbg:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-ltz v3, :cond_2

    const-string v3, "StateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTempStackToStateStack: X mStateStackTop="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStackTopIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",startingIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStack:[Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    iget v6, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->state:Lcom/htc/server/State;

    invoke-virtual {v5}, Lcom/htc/server/State;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method

.method private declared-synchronized performTransitions()V
    .locals 5

    .prologue
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "destState":Lcom/htc/server/State;
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/server/StateMachine$SmHandler;->mDestState:Lcom/htc/server/State;

    if-eqz v3, :cond_0

    const-string v3, "StateMachine"

    const-string v4, "handleMessage: new destination call exit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mDestState:Lcom/htc/server/State;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/server/StateMachine$SmHandler;->mDestState:Lcom/htc/server/State;

    invoke-direct {p0, v1}, Lcom/htc/server/StateMachine$SmHandler;->setupTempStateStackWithStatesToEnter(Lcom/htc/server/State;)Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    move-result-object v0

    .local v0, "commonStateInfo":Lcom/htc/server/StateMachine$SmHandler$StateInfo;
    invoke-direct {p0, v0}, Lcom/htc/server/StateMachine$SmHandler;->invokeExitMethods(Lcom/htc/server/StateMachine$SmHandler$StateInfo;)V

    invoke-direct {p0}, Lcom/htc/server/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    move-result v2

    .local v2, "stateStackEnteringIndex":I
    invoke-direct {p0, v2}, Lcom/htc/server/StateMachine$SmHandler;->invokeEnterMethods(I)V

    invoke-direct {p0}, Lcom/htc/server/StateMachine$SmHandler;->moveDeferredMessageAtFrontOfQueue()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "commonStateInfo":Lcom/htc/server/StateMachine$SmHandler$StateInfo;
    .end local v2    # "stateStackEnteringIndex":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    if-eqz v1, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/htc/server/StateMachine$SmHandler;->mQuittingState:Lcom/htc/server/StateMachine$SmHandler$QuittingState;

    if-ne v1, v3, :cond_2

    invoke-direct {p0}, Lcom/htc/server/StateMachine$SmHandler;->cleanupAfterQuitting()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/htc/server/StateMachine$SmHandler;->mHaltingState:Lcom/htc/server/StateMachine$SmHandler$HaltingState;

    if-ne v1, v3, :cond_1

    iget-object v3, p0, Lcom/htc/server/StateMachine$SmHandler;->mSm:Lcom/htc/server/StateMachine;

    invoke-virtual {v3}, Lcom/htc/server/StateMachine;->halting()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private final processMsg(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    iget v2, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-gez v2, :cond_0

    const-string v2, "StateMachine"

    const-string v3, "processMsg (mStateStackTopIndex < 0)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStack:[Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    iget v3, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v2, v3

    .local v0, "curStateInfo":Lcom/htc/server/StateMachine$SmHandler$StateInfo;
    iget-boolean v2, p0, Lcom/htc/server/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_1

    const-string v2, "StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processMsg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->state:Lcom/htc/server/State;

    invoke-virtual {v4}, Lcom/htc/server/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    iget-object v2, v0, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->state:Lcom/htc/server/State;

    invoke-virtual {v2, p1}, Lcom/htc/server/State;->processMessage(Landroid/os/Message;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, v0, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/htc/server/StateMachine$SmHandler;->mSm:Lcom/htc/server/StateMachine;

    invoke-virtual {v2, p1}, Lcom/htc/server/StateMachine;->unhandledMessage(Landroid/os/Message;)V

    invoke-direct {p0, p1}, Lcom/htc/server/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/server/StateMachine$SmHandler;->mQuittingState:Lcom/htc/server/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, v2}, Lcom/htc/server/StateMachine$SmHandler;->transitionTo(Lcom/htc/server/IState;)V

    :cond_2
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStack:[Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    iget v3, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v2, v2, v3

    iget-object v1, v2, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->state:Lcom/htc/server/State;

    .local v1, "orgState":Lcom/htc/server/State;
    iget-object v2, p0, Lcom/htc/server/StateMachine$SmHandler;->mProcessedMessages:Lcom/htc/server/StateMachine$ProcessedMessages;

    iget-object v3, v0, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->state:Lcom/htc/server/State;

    invoke-virtual {v2, p1, v3, v1}, Lcom/htc/server/StateMachine$ProcessedMessages;->add(Landroid/os/Message;Lcom/htc/server/State;Lcom/htc/server/State;)V

    goto :goto_0

    .end local v1    # "orgState":Lcom/htc/server/State;
    :cond_3
    iget-boolean v2, p0, Lcom/htc/server/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_1

    const-string v2, "StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processMsg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->state:Lcom/htc/server/State;

    invoke-virtual {v4}, Lcom/htc/server/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/htc/server/StateMachine$SmHandler;->mProcessedMessages:Lcom/htc/server/StateMachine$ProcessedMessages;

    invoke-virtual {v2, p1, v5, v5}, Lcom/htc/server/StateMachine$ProcessedMessages;->add(Landroid/os/Message;Lcom/htc/server/State;Lcom/htc/server/State;)V

    goto :goto_0
.end method

.method private final quit()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "StateMachine"

    const-string v1, "quit:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    sget-object v1, Lcom/htc/server/StateMachine$SmHandler;->mQuitObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/htc/server/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/server/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private final setDbg(Z)V
    .locals 0
    .param p1, "dbg"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/htc/server/StateMachine$SmHandler;->mDbg:Z

    return-void
.end method

.method private final setInitialState(Lcom/htc/server/State;)V
    .locals 3
    .param p1, "initialState"    # Lcom/htc/server/State;

    .prologue
    iget-boolean v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInitialState: initialState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/server/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/htc/server/StateMachine$SmHandler;->mInitialState:Lcom/htc/server/State;

    return-void
.end method

.method private final setProcessedMessagesSize(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mProcessedMessages:Lcom/htc/server/StateMachine$ProcessedMessages;

    invoke-virtual {v0, p1}, Lcom/htc/server/StateMachine$ProcessedMessages;->setSize(I)V

    return-void
.end method

.method private final setupInitialStateStack()V
    .locals 4

    .prologue
    iget-boolean v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    const-string v1, "StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupInitialStateStack: E mInitialState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/server/StateMachine$SmHandler;->mInitialState:Lcom/htc/server/State;

    invoke-virtual {v3}, Lcom/htc/server/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/htc/server/StateMachine$SmHandler;->mInitialState:Lcom/htc/server/State;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    .local v0, "curStateInfo":Lcom/htc/server/StateMachine$SmHandler$StateInfo;
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mTempStateStackCount:I

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mTempStateStack:[Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/htc/server/StateMachine$SmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    iget-object v0, v0, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mTempStateStackCount:I

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateStackTopIndex:I

    invoke-direct {p0}, Lcom/htc/server/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    return-void
.end method

.method private final setupTempStateStackWithStatesToEnter(Lcom/htc/server/State;)Lcom/htc/server/StateMachine$SmHandler$StateInfo;
    .locals 4
    .param p1, "destState"    # Lcom/htc/server/State;

    .prologue
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mTempStateStackCount:I

    iget-object v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    .local v0, "curStateInfo":Lcom/htc/server/StateMachine$SmHandler$StateInfo;
    if-eqz v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mTempStateStack:[Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/htc/server/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/htc/server/StateMachine$SmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    iget-object v0, v0, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->active:Z

    if-eqz v1, :cond_0

    :cond_1
    iget-boolean v1, p0, Lcom/htc/server/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_2

    const-string v1, "StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupTempStateStackWithStatesToEnter: X mTempStateStackCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/server/StateMachine$SmHandler;->mTempStateStackCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",curStateInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method private final transitionTo(Lcom/htc/server/IState;)V
    .locals 3
    .param p1, "destState"    # Lcom/htc/server/IState;

    .prologue
    check-cast p1, Lcom/htc/server/State;

    .end local p1    # "destState":Lcom/htc/server/IState;
    iput-object p1, p0, Lcom/htc/server/StateMachine$SmHandler;->mDestState:Lcom/htc/server/State;

    iget-boolean v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateMachine.transitionTo EX destState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/server/StateMachine$SmHandler;->mDestState:Lcom/htc/server/State;

    invoke-virtual {v2}, Lcom/htc/server/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-boolean v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: E msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/htc/server/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    iget-boolean v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    if-nez v0, :cond_2

    const-string v0, "StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The start method not called, ignore msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/server/StateMachine$SmHandler;->processMsg(Landroid/os/Message;)V

    invoke-direct {p0}, Lcom/htc/server/StateMachine$SmHandler;->performTransitions()V

    iget-boolean v0, p0, Lcom/htc/server/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_1

    const-string v0, "StateMachine"

    const-string v1, "handleMessage: X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
