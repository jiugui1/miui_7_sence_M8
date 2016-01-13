.class Landroid/widget/Editor$SCATDHandler;
.super Landroid/os/Handler;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SCATDHandler"
.end annotation


# static fields
.field static final MESSAGE_SCAN_WORD:I = 0x3

.field static final MESSAGE_SC_INIT:I = 0x1

.field static final MESSAGE_SC_RETRY:I = 0x2

.field private static final SC_INIT_DELAY:I = 0x3e8

.field private static final SC_RETRY_DELAY:I = 0x1f4

.field private static final SC_RETRY_TIMES:I = 0x2

.field private static final SC_TIMEOUT_DURATION:I = 0x3a98


# instance fields
.field private mRetry:I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 1

    .prologue
    .line 6486
    iput-object p1, p0, Landroid/widget/Editor$SCATDHandler;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6498
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$SCATDHandler;->mRetry:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    .line 6486
    invoke-direct {p0, p1}, Landroid/widget/Editor$SCATDHandler;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private postSpellCheck(Ljava/lang/String;)V
    .locals 3
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 6529
    iget-object v0, p0, Landroid/widget/Editor$SCATDHandler;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_0

    .line 6530
    iget-object v0, p0, Landroid/widget/Editor$SCATDHandler;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0, p1}, Landroid/widget/SpellChecker;->spellCheck(Ljava/lang/String;)V

    .line 6532
    :cond_0
    const/4 v0, 0x2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$SCATDHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/Editor$SCATDHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6533
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 6502
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 6526
    :goto_0
    return-void

    .line 6505
    :pswitch_0
    iput v2, p0, Landroid/widget/Editor$SCATDHandler;->mRetry:I

    .line 6506
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/Editor$SCATDHandler;->postSpellCheck(Ljava/lang/String;)V

    goto :goto_0

    .line 6511
    :pswitch_1
    iget v0, p0, Landroid/widget/Editor$SCATDHandler;->mRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Editor$SCATDHandler;->mRetry:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 6512
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/Editor$SCATDHandler;->postSpellCheck(Ljava/lang/String;)V

    goto :goto_0

    .line 6515
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SCATDHandler;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/widget/Editor;->access$7600(Landroid/widget/Editor;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6516
    # setter for: Landroid/widget/Editor;->mSCATDPROCESSING:Z
    invoke-static {v2}, Landroid/widget/Editor;->access$7702(Z)Z

    .line 6517
    iget-object v0, p0, Landroid/widget/Editor$SCATDHandler;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->SCATDProcessQueue()V
    invoke-static {v0}, Landroid/widget/Editor;->access$7800(Landroid/widget/Editor;)V

    goto :goto_0

    .line 6523
    :pswitch_2
    iget-object v1, p0, Landroid/widget/Editor$SCATDHandler;->this$0:Landroid/widget/Editor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Landroid/widget/Editor;->SCATDRescanWord(Ljava/lang/String;)V
    invoke-static {v1, v0}, Landroid/widget/Editor;->access$7900(Landroid/widget/Editor;Ljava/lang/String;)V

    goto :goto_0

    .line 6502
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
