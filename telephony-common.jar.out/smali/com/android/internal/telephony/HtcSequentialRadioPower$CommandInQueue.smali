.class Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;
.super Ljava/lang/Object;
.source "HtcSequentialRadioPower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcSequentialRadioPower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandInQueue"
.end annotation


# instance fields
.field callStack:[Ljava/lang/StackTraceElement;

.field duringQuickBoot:Ljava/lang/Boolean;

.field pid:I

.field radioOn:Z

.field response:Landroid/os/Message;

.field simOn:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

.field tid:I

.field uid:I


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/HtcSequentialRadioPower;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/HtcSequentialRadioPower;Lcom/android/internal/telephony/HtcSequentialRadioPower$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/HtcSequentialRadioPower;
    .param p2, "x1"    # Lcom/android/internal/telephony/HtcSequentialRadioPower$1;

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;-><init>(Lcom/android/internal/telephony/HtcSequentialRadioPower;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 274
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 275
    .local v1, "strBuf":Ljava/lang/StringBuffer;
    iget-boolean v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->radioOn:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x31

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 276
    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->simOn:Ljava/lang/Boolean;

    # invokes: Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C
    invoke-static {v2, v3}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$000(Lcom/android/internal/telephony/HtcSequentialRadioPower;Ljava/lang/Boolean;)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 277
    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->duringQuickBoot:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->duringQuickBoot:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x75

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 280
    :cond_0
    # getter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->CHAR_BRACKET:[C
    invoke-static {}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$100()[C

    move-result-object v2

    aget-char v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 298
    # getter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->DEBUG_DETAIL:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$200()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 299
    iget v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 300
    # getter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->CHAR_SLASH:[C
    invoke-static {}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$300()[C

    move-result-object v2

    aget-char v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 301
    iget v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 302
    # getter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->CHAR_SLASH:[C
    invoke-static {}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$300()[C

    move-result-object v2

    aget-char v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 303
    iget v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->tid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 304
    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->callStack:[Ljava/lang/StackTraceElement;

    if-eqz v2, :cond_1

    .line 305
    const/4 v0, 0x1

    .line 306
    .local v0, "callLayer":I
    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->callStack:[Ljava/lang/StackTraceElement;

    array-length v2, v2

    if-le v2, v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->callStack:[Ljava/lang/StackTraceElement;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 307
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 308
    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->callStack:[Ljava/lang/StackTraceElement;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 316
    .end local v0    # "callLayer":I
    :cond_1
    :goto_2
    # getter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->CHAR_BRACKET:[C
    invoke-static {}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$100()[C

    move-result-object v2

    const/4 v3, 0x1

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 317
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 275
    :cond_2
    const/16 v2, 0x30

    goto :goto_0

    .line 278
    :cond_3
    const/16 v2, 0x70

    goto :goto_1

    .line 313
    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->tid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
