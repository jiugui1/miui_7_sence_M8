.class public Lcom/htc/server/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/StateMachine$1;,
        Lcom/htc/server/StateMachine$SmHandler;,
        Lcom/htc/server/StateMachine$ProcessedMessages;,
        Lcom/htc/server/StateMachine$ProcessedMessageInfo;
    }
.end annotation


# static fields
.field public static final HANDLED:Z = true

.field public static final NOT_HANDLED:Z = false

.field public static final SM_INIT_CMD:I = -0x2

.field public static final SM_QUIT_CMD:I = -0x1

.field private static final TAG:Ljava/lang/String; = "StateMachine"


# instance fields
.field private mName:Ljava/lang/String;

.field private mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

.field private mSmThread:Landroid/os/HandlerThread;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/server/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/htc/server/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    iget-object v1, p0, Lcom/htc/server/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    invoke-direct {p0, p1, v0}, Lcom/htc/server/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/htc/server/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/server/StateMachine;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/StateMachine;

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/server/StateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/StateMachine;
    .param p1, "x1"    # Landroid/os/HandlerThread;

    .prologue
    iput-object p1, p0, Lcom/htc/server/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$402(Lcom/htc/server/StateMachine;Lcom/htc/server/StateMachine$SmHandler;)Lcom/htc/server/StateMachine$SmHandler;
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/StateMachine;
    .param p1, "x1"    # Lcom/htc/server/StateMachine$SmHandler;

    .prologue
    iput-object p1, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    return-object p1
.end method

.method private initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/htc/server/StateMachine;->mName:Ljava/lang/String;

    new-instance v0, Lcom/htc/server/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lcom/htc/server/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/htc/server/StateMachine;Lcom/htc/server/StateMachine$1;)V

    iput-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    return-void
.end method


# virtual methods
.method protected final addState(Lcom/htc/server/State;)V
    .locals 2
    .param p1, "state"    # Lcom/htc/server/State;

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    const/4 v1, 0x0

    # invokes: Lcom/htc/server/StateMachine$SmHandler;->addState(Lcom/htc/server/State;Lcom/htc/server/State;)Lcom/htc/server/StateMachine$SmHandler$StateInfo;
    invoke-static {v0, p1, v1}, Lcom/htc/server/StateMachine$SmHandler;->access$700(Lcom/htc/server/StateMachine$SmHandler;Lcom/htc/server/State;Lcom/htc/server/State;)Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    return-void
.end method

.method protected final addState(Lcom/htc/server/State;Lcom/htc/server/State;)V
    .locals 1
    .param p1, "state"    # Lcom/htc/server/State;
    .param p2, "parent"    # Lcom/htc/server/State;

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    # invokes: Lcom/htc/server/StateMachine$SmHandler;->addState(Lcom/htc/server/State;Lcom/htc/server/State;)Lcom/htc/server/StateMachine$SmHandler$StateInfo;
    invoke-static {v0, p1, p2}, Lcom/htc/server/StateMachine$SmHandler;->access$700(Lcom/htc/server/StateMachine$SmHandler;Lcom/htc/server/State;Lcom/htc/server/State;)Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    return-void
.end method

.method protected final deferMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    # invokes: Lcom/htc/server/StateMachine$SmHandler;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/htc/server/StateMachine$SmHandler;->access$1300(Lcom/htc/server/StateMachine$SmHandler;Landroid/os/Message;)V

    return-void
.end method

.method protected final getCurrentMessage()Landroid/os/Message;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    # invokes: Lcom/htc/server/StateMachine$SmHandler;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Lcom/htc/server/StateMachine$SmHandler;->access$800(Lcom/htc/server/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected final getCurrentState()Lcom/htc/server/IState;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    # invokes: Lcom/htc/server/StateMachine$SmHandler;->getCurrentState()Lcom/htc/server/IState;
    invoke-static {v0}, Lcom/htc/server/StateMachine$SmHandler;->access$900(Lcom/htc/server/StateMachine$SmHandler;)Lcom/htc/server/IState;

    move-result-object v0

    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getProcessedMessageInfo(I)Lcom/htc/server/StateMachine$ProcessedMessageInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    # invokes: Lcom/htc/server/StateMachine$SmHandler;->getProcessedMessageInfo(I)Lcom/htc/server/StateMachine$ProcessedMessageInfo;
    invoke-static {v0, p1}, Lcom/htc/server/StateMachine$SmHandler;->access$1800(Lcom/htc/server/StateMachine$SmHandler;I)Lcom/htc/server/StateMachine$ProcessedMessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getProcessedMessagesCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    # invokes: Lcom/htc/server/StateMachine$SmHandler;->getProcessedMessagesCount()I
    invoke-static {v0}, Lcom/htc/server/StateMachine$SmHandler;->access$1700(Lcom/htc/server/StateMachine$SmHandler;)I

    move-result v0

    return v0
.end method

.method public final getProcessedMessagesSize()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    # invokes: Lcom/htc/server/StateMachine$SmHandler;->getProcessedMessagesSize()I
    invoke-static {v0}, Lcom/htc/server/StateMachine$SmHandler;->access$1600(Lcom/htc/server/StateMachine$SmHandler;)I

    move-result v0

    return v0
.end method

.method protected haltedProcessMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    return-void
.end method

.method protected halting()V
    .locals 0

    .prologue
    return-void
.end method

.method public isDbg()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    # invokes: Lcom/htc/server/StateMachine$SmHandler;->isDbg()Z
    invoke-static {v0}, Lcom/htc/server/StateMachine$SmHandler;->access$2100(Lcom/htc/server/StateMachine$SmHandler;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final isQuit(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    # invokes: Lcom/htc/server/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z
    invoke-static {v0, p1}, Lcom/htc/server/StateMachine$SmHandler;->access$2000(Lcom/htc/server/StateMachine$SmHandler;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public final obtainMessage()Landroid/os/Message;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

.method public final obtainMessage(I)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

.method public final obtainMessage(III)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

.method public final obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

.method public final obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

.method public final quit()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    # invokes: Lcom/htc/server/StateMachine$SmHandler;->quit()V
    invoke-static {v0}, Lcom/htc/server/StateMachine$SmHandler;->access$1900(Lcom/htc/server/StateMachine$SmHandler;)V

    goto :goto_0
.end method

.method protected quitting()V
    .locals 0

    .prologue
    return-void
.end method

.method protected final removeMessages(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    invoke-virtual {v0, p1}, Lcom/htc/server/StateMachine$SmHandler;->removeMessages(I)V

    goto :goto_0
.end method

.method public final sendMessage(I)V
    .locals 2
    .param p1, "what"    # I

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    invoke-virtual {p0, p1}, Lcom/htc/server/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/server/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final sendMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    invoke-virtual {p0, p1, p2}, Lcom/htc/server/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/server/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final sendMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    invoke-virtual {v0, p1}, Lcom/htc/server/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final sendMessageAtFrontOfQueue(I)V
    .locals 2
    .param p1, "what"    # I

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    invoke-virtual {p0, p1}, Lcom/htc/server/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/server/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    invoke-virtual {p0, p1, p2}, Lcom/htc/server/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/server/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    invoke-virtual {v0, p1}, Lcom/htc/server/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final sendMessageDelayed(IJ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "delayMillis"    # J

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    invoke-virtual {p0, p1}, Lcom/htc/server/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/htc/server/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public final sendMessageDelayed(ILjava/lang/Object;J)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "delayMillis"    # J

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    invoke-virtual {p0, p1, p2}, Lcom/htc/server/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/htc/server/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delayMillis"    # J

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/server/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public setDbg(Z)V
    .locals 1
    .param p1, "dbg"    # Z

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    # invokes: Lcom/htc/server/StateMachine$SmHandler;->setDbg(Z)V
    invoke-static {v0, p1}, Lcom/htc/server/StateMachine$SmHandler;->access$2200(Lcom/htc/server/StateMachine$SmHandler;Z)V

    goto :goto_0
.end method

.method protected final setInitialState(Lcom/htc/server/State;)V
    .locals 1
    .param p1, "initialState"    # Lcom/htc/server/State;

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    # invokes: Lcom/htc/server/StateMachine$SmHandler;->setInitialState(Lcom/htc/server/State;)V
    invoke-static {v0, p1}, Lcom/htc/server/StateMachine$SmHandler;->access$1000(Lcom/htc/server/StateMachine$SmHandler;Lcom/htc/server/State;)V

    return-void
.end method

.method public final setProcessedMessagesSize(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    # invokes: Lcom/htc/server/StateMachine$SmHandler;->setProcessedMessagesSize(I)V
    invoke-static {v0, p1}, Lcom/htc/server/StateMachine$SmHandler;->access$1500(Lcom/htc/server/StateMachine$SmHandler;I)V

    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    # invokes: Lcom/htc/server/StateMachine$SmHandler;->completeConstruction()V
    invoke-static {v0}, Lcom/htc/server/StateMachine$SmHandler;->access$2300(Lcom/htc/server/StateMachine$SmHandler;)V

    goto :goto_0
.end method

.method protected final transitionTo(Lcom/htc/server/IState;)V
    .locals 1
    .param p1, "destState"    # Lcom/htc/server/IState;

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    # invokes: Lcom/htc/server/StateMachine$SmHandler;->transitionTo(Lcom/htc/server/IState;)V
    invoke-static {v0, p1}, Lcom/htc/server/StateMachine$SmHandler;->access$1100(Lcom/htc/server/StateMachine$SmHandler;Lcom/htc/server/IState;)V

    return-void
.end method

.method protected final transitionToHaltingState()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    iget-object v1, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    # getter for: Lcom/htc/server/StateMachine$SmHandler;->mHaltingState:Lcom/htc/server/StateMachine$SmHandler$HaltingState;
    invoke-static {v1}, Lcom/htc/server/StateMachine$SmHandler;->access$1200(Lcom/htc/server/StateMachine$SmHandler;)Lcom/htc/server/StateMachine$SmHandler$HaltingState;

    move-result-object v1

    # invokes: Lcom/htc/server/StateMachine$SmHandler;->transitionTo(Lcom/htc/server/IState;)V
    invoke-static {v0, v1}, Lcom/htc/server/StateMachine$SmHandler;->access$1100(Lcom/htc/server/StateMachine$SmHandler;Lcom/htc/server/IState;)V

    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/htc/server/StateMachine;->mSmHandler:Lcom/htc/server/StateMachine$SmHandler;

    # getter for: Lcom/htc/server/StateMachine$SmHandler;->mDbg:Z
    invoke-static {v0}, Lcom/htc/server/StateMachine$SmHandler;->access$1400(Lcom/htc/server/StateMachine$SmHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/server/StateMachine;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - unhandledMessage: msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
