.class Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;
.super Landroid/webkit/WebViewClassic$WVInputConnection;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HtcWebViewInputConnection"
.end annotation


# instance fields
.field private final JimeTAG:Ljava/lang/String;

.field isCommit:Z

.field isComposing:Z

.field private mBatchLevel:I

.field private mHint:Ljava/lang/String;

.field private mImeOptions:I

.field private mInputType:I

.field private mInputTypeOld:I

.field private mIsAutoCompleteEnabled:Z

.field private mIsAutoFillable:Z

.field private mIsKeySentByMe:Z

.field private mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private mMaxLength:I

.field private mName:Ljava/lang/String;

.field mOldText:Landroid/text/Editable;

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput-object p1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$WVInputConnection;-><init>(Landroid/webkit/WebViewClassic;)V

    const v0, 0x2c0a1

    iput v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mInputType:I

    const v0, 0x12000001

    iput v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mImeOptions:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mInputTypeOld:I

    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isCommit:Z

    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isComposing:Z

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mOldText:Landroid/text/Editable;

    const-string v0, "Jime"

    iput-object v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->JimeTAG:Ljava/lang/String;

    return-void
.end method

.method private limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "numReplaced"    # I

    .prologue
    const/4 v4, 0x0

    iget v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mMaxLength:I

    if-lez v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .local v0, "editable":Landroid/text/Editable;
    iget v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mMaxLength:I

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v1, v2, p2

    .local v1, "maxReplace":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {p1, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .end local v0    # "editable":Landroid/text/Editable;
    .end local v1    # "maxReplace":I
    :cond_0
    return-object p1
.end method

.method private printspans(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 8
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    instance-of v4, p1, Landroid/text/Spanned;

    if-eqz v4, :cond_0

    move-object v3, p1

    check-cast v3, Landroid/text/Spanned;

    .local v3, "sp":Landroid/text/Spanned;
    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .local v2, "os":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    aget-object v1, v2, v0

    .local v1, "o":Ljava/lang/Object;
    const-string v4, "JimeSpans"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p1, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") fl=#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "os":[Ljava/lang/Object;
    .end local v3    # "sp":Landroid/text/Spanned;
    :cond_0
    return-void
.end method

.method private sendCharacter(C)V
    .locals 10
    .param p1, "c"    # C

    .prologue
    const/4 v9, 0x0

    iget-object v7, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v7, :cond_0

    const/4 v7, -0x1

    invoke-static {v7}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v7

    iput-object v7, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    :cond_0
    const/4 v7, 0x1

    new-array v1, v7, [C

    .local v1, "chars":[C
    aput-char p1, v1, v9

    iget-object v7, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v7, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v3

    .local v3, "events":[Landroid/view/KeyEvent;
    if-eqz v3, :cond_1

    move-object v0, v3

    .local v0, "arr$":[Landroid/view/KeyEvent;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .local v2, "event":Landroid/view/KeyEvent;
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v7

    or-int/lit8 v7, v7, 0x4

    invoke-static {v2, v7}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Landroid/view/KeyEvent;
    .end local v2    # "event":Landroid/view/KeyEvent;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    iget-object v7, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v7, v7, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v8, 0x8d

    invoke-virtual {v7, v8, p1, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .local v6, "msg":Landroid/os/Message;
    iget-object v7, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v7, v7, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v6    # "msg":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private sendKey(I)V
    .locals 15
    .param p1, "keyCode"    # I

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .local v1, "eventTime":J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-wide v3, v1

    move/from16 v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x2

    move-wide v6, v1

    move/from16 v9, p1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method private setNewText(IILjava/lang/CharSequence;)V
    .locals 30
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xbf

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v26

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xbf

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mIsKeySentByMe:Z

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v15

    .local v15, "newEditable":Landroid/text/Editable;
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mOldText:Landroid/text/Editable;

    .local v8, "editable":Landroid/text/Editable;
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v8, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v18

    .local v18, "original":Ljava/lang/CharSequence;
    const/4 v11, 0x0

    .local v11, "isCharacterAdd":Z
    const/4 v12, 0x0

    .local v12, "isCharacterDelete":Z
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v25

    .local v25, "textLength":I
    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->length()I

    move-result v19

    .local v19, "originalLength":I
    invoke-static {v8}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v23

    .local v23, "selectionStart":I
    invoke-static {v8}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v22

    .local v22, "selectionEnd":I
    move/from16 v0, v23

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    move/from16 v0, v25

    move/from16 v1, v19

    if-le v0, v1, :cond_a

    add-int/lit8 v26, v19, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    move-object/from16 v2, v18

    move/from16 v3, v27

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v26

    if-eqz v26, :cond_9

    const/4 v11, 0x1

    :cond_1
    :goto_0
    invoke-static {v15}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v14

    .local v14, "newCompsingStart":I
    invoke-static {v15}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v13

    .local v13, "newCompsingEnd":I
    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v26

    if-eqz v26, :cond_2

    const-string v26, "webview"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[WebViewClassic.WebViewInputConnection::setNewText] >> isCommit="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isCommit:Z

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " isPreviousComposing="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isComposing:Z

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n(composed)newCompsingStart="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " newCompsingEnd="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n(original)selectionStart="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " selectionEnd="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " mBatchLevel="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mBatchLevel:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " mIsBatchingTextChanges="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsBatchingTextChanges:Z

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\nstart="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " end="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " original=["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "] text=["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isComposing:Z

    .local v7, "composing":Z
    if-ltz v14, :cond_c

    if-ltz v13, :cond_c

    if-eq v14, v13, :cond_c

    const/16 v24, 0x1

    .local v24, "stillComposing":Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isCommit:Z

    move/from16 v26, v0

    if-eqz v26, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isComposing:Z

    move/from16 v26, v0

    if-nez v26, :cond_d

    :goto_2
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isComposing:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/webkit/WebViewClassic;->isSelectingText()Z

    move-result v21

    .local v21, "selecting":Z
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v17

    .local v17, "oldLen":I
    if-eqz v7, :cond_14

    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v26

    if-eqz v26, :cond_3

    const-string v26, "Jimesetnewtext"

    const-string v27, "start composing"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v9, p3

    .local v9, "editingTxt":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isCommit:Z

    move/from16 v26, v0

    if-eqz v26, :cond_12

    move/from16 v0, v22

    if-ne v0, v13, :cond_10

    const/4 v10, 0x1

    .local v10, "finishComposing":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v6

    .local v6, "commit":Landroid/os/Message;
    iput-object v9, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v26

    if-lez v26, :cond_11

    const/16 v26, 0xb5

    move/from16 v0, v26

    iput v0, v6, Landroid/os/Message;->what:I

    :goto_4
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    if-nez v21, :cond_4

    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsBatchingTextChanges:Z

    move/from16 v26, v0

    if-nez v26, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb6

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v26

    if-eqz v26, :cond_6

    const-string v26, "Jimesetnewtext"

    const-string v27, "COMMIT_TEXT and UPDATE_SELECTION_AND_CARET"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "commit":Landroid/os/Message;
    .end local v10    # "finishComposing":Z
    :cond_6
    :goto_5
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->sendCharacter(C)V

    .end local v9    # "editingTxt":Ljava/lang/CharSequence;
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    # getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static/range {v26 .. v26}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v26

    if-eqz v26, :cond_8

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .local v16, "newText":Ljava/lang/StringBuilder;
    const/16 v26, 0x0

    move/from16 v0, v26

    move/from16 v1, p1

    invoke-interface {v8, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v26

    move/from16 v0, p2

    move/from16 v1, v26

    invoke-interface {v8, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    # getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static/range {v26 .. v26}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v26

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/webkit/AutoCompletePopup;->setText(Ljava/lang/CharSequence;)V

    .end local v16    # "newText":Ljava/lang/StringBuilder;
    :cond_8
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mIsKeySentByMe:Z

    return-void

    .end local v7    # "composing":Z
    .end local v13    # "newCompsingEnd":I
    .end local v14    # "newCompsingStart":I
    .end local v17    # "oldLen":I
    .end local v21    # "selecting":Z
    .end local v24    # "stillComposing":Z
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_a
    move/from16 v0, v19

    move/from16 v1, v25

    if-le v0, v1, :cond_1

    add-int/lit8 v26, v19, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    move-object/from16 v2, v18

    move/from16 v3, v27

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v26

    if-eqz v26, :cond_b

    const/4 v12, 0x1

    :goto_7
    goto/16 :goto_0

    :cond_b
    const/4 v12, 0x0

    goto :goto_7

    .restart local v7    # "composing":Z
    .restart local v13    # "newCompsingEnd":I
    .restart local v14    # "newCompsingStart":I
    :cond_c
    const/16 v24, 0x0

    goto/16 :goto_1

    .restart local v24    # "stillComposing":Z
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isComposing:Z

    move/from16 v26, v0

    if-nez v26, :cond_e

    if-eqz v24, :cond_f

    :cond_e
    const/4 v7, 0x1

    :goto_8
    goto/16 :goto_2

    :cond_f
    const/4 v7, 0x0

    goto :goto_8

    .restart local v9    # "editingTxt":Ljava/lang/CharSequence;
    .restart local v17    # "oldLen":I
    .restart local v21    # "selecting":Z
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_3

    .restart local v6    # "commit":Landroid/os/Message;
    .restart local v10    # "finishComposing":Z
    :cond_11
    const/16 v26, 0xb4

    move/from16 v0, v26

    iput v0, v6, Landroid/os/Message;->what:I

    goto/16 :goto_4

    .end local v6    # "commit":Landroid/os/Message;
    .end local v10    # "finishComposing":Z
    :cond_12
    if-eqz v21, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0x8b

    const-string v28, ""

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v23

    move/from16 v3, v22

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    .local v20, "replaceMessage":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v20    # "replaceMessage":Landroid/os/Message;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb4

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v0, v1, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb6

    const/16 v28, 0x1

    const/16 v29, 0x0

    invoke-static/range {v26 .. v29}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v26

    if-eqz v26, :cond_6

    const-string v26, "Jimesetnewtext"

    const-string v27, "COMPOSING_TEXT and UPDATE_SELECTION_AND_CARET"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .end local v9    # "editingTxt":Ljava/lang/CharSequence;
    :cond_14
    if-eqz v11, :cond_18

    add-int/lit8 v26, v25, -0x1

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .local v5, "ch":C
    const/16 v26, 0xa

    move/from16 v0, v26

    if-eq v5, v0, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static/range {v26 .. v26}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/webkit/WebView;->isEditable()Z

    move-result v26

    if-eqz v26, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v26 .. v28}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v26

    if-eqz v26, :cond_15

    const-string v26, "Jimesetnewtext"

    const-string v27, "UPDATE_SELECTION_AND_CARET characteradd, COMMIT_TEXT"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    if-eqz v21, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb6

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_9
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->sendCharacter(C)V

    goto/16 :goto_6

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb6

    const/16 v28, 0x1

    const/16 v29, 0x0

    invoke-static/range {v26 .. v29}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9

    :cond_17
    add-int/lit8 v26, v25, -0x1

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->sendCharacter(C)V

    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v26

    if-eqz v26, :cond_7

    const-string v26, "Jimesetnewtext"

    const-string v27, "characteradd"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .end local v5    # "ch":C
    :cond_18
    if-eqz v12, :cond_1a

    const/16 v26, 0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-lt v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsBatchingTextChanges:Z

    move/from16 v26, v0

    if-eqz v26, :cond_19

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_19

    if-nez v21, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0x8b

    add-int/lit8 v28, v22, -0x1

    const-string v29, ""

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v22

    move-object/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    .restart local v20    # "replaceMessage":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v26

    if-eqz v26, :cond_7

    const-string v26, "Jimesetnewtext"

    const-string v27, "iseditable charactredelete, REPLACE_TEXT"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .end local v20    # "replaceMessage":Landroid/os/Message;
    :cond_19
    const/16 v26, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->sendKey(I)V

    goto/16 :goto_6

    :cond_1a
    move/from16 v0, v25

    move/from16 v1, v19

    if-ne v0, v1, :cond_1b

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    move-object/from16 v2, v18

    move/from16 v3, v27

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v26

    if-nez v26, :cond_7

    :cond_1b
    if-eqz v21, :cond_1c

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v26

    if-nez v26, :cond_1c

    const/16 v26, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->sendKey(I)V

    goto/16 :goto_6

    :cond_1c
    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_1e

    if-nez v21, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0x8b

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    .restart local v20    # "replaceMessage":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v26

    if-eqz v26, :cond_1d

    const-string v26, "Jimesetnewtext"

    const-string v27, "iseditable replace, REPLACE_TEXT"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v26

    if-lez v26, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb6

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    .end local v20    # "replaceMessage":Landroid/os/Message;
    :cond_1e
    move-object/from16 v9, p3

    .restart local v9    # "editingTxt":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb5

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v0, v1, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v26

    if-eqz v26, :cond_1f

    const-string v26, "Jimesetnewtext"

    const-string v27, "iseditable replace, COMMIT_TEXT"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb6

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_6
.end method

.method private updateSelection()V
    .locals 10

    .prologue
    const/16 v9, 0xb6

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v6

    .local v6, "editable":Landroid/text/Editable;
    invoke-static {v6}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .local v2, "selectionStart":I
    invoke-static {v6}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .local v3, "selectionEnd":I
    invoke-static {v6}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .local v4, "composingStart":I
    invoke-static {v6}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .local v5, "composingEnd":I
    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "JimeDoselect"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inside updateSelection(), selectionStart ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", selectionEnd ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", composingStart ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", composingEnd ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->focusCandidateIsRichEditable()Z

    move-result v1

    if-nez v1, :cond_1

    if-ne v2, v2, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v1, v9, v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    iget v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mBatchLevel:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # invokes: Landroid/webkit/WebViewClassic;->beginTextBatch()V
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)V

    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mBatchLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mBatchLevel:I

    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isCommit:Z

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->finishComposingText()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isCommit:Z

    return v1
.end method

.method completeComposing()V
    .locals 15

    .prologue
    const/4 v10, -0x1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v12

    .local v12, "editable":Landroid/text/Editable;
    invoke-static {v12}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .local v4, "compStart":I
    invoke-static {v12}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .local v5, "compEnd":I
    if-ltz v4, :cond_3

    if-ltz v5, :cond_3

    if-eq v4, v5, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->htc_finishComposing()Z

    invoke-static {v12}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "JimeBG"

    const-string v3, "completeComposing"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_3

    invoke-static {v12}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v14

    .local v14, "selectStart":I
    invoke-static {v12}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v13

    .local v13, "selectEnd":I
    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "JimeTAG+BG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "composingstart="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", composingend="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", selectionstart="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", selectionend="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->isHtcIME()Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne v5, v13, :cond_4

    add-int/lit8 v2, v5, -0x1

    .local v2, "fakeIndex":I
    :goto_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .end local v2    # "fakeIndex":I
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v7

    move-object v6, v0

    move v8, v5

    move v9, v5

    move v11, v10

    invoke-virtual/range {v6 .. v11}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v13    # "selectEnd":I
    .end local v14    # "selectStart":I
    :cond_3
    return-void

    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v13    # "selectEnd":I
    .restart local v14    # "selectStart":I
    :cond_4
    move v2, v5

    goto :goto_0
.end method

.method copyEditableWithSelectSpan(Landroid/text/Editable;)V
    .locals 5
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    iget-object v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mOldText:Landroid/text/Editable;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mOldText:Landroid/text/Editable;

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v2, v3, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .local v1, "selectStart":I
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, "selectEnd":I
    iget-object v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mOldText:Landroid/text/Editable;

    invoke-static {v2, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method public deleteSurroundingText(II)Z
    .locals 12
    .param p1, "leftLength"    # I
    .param p2, "rightLength"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v9, -0x1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v4

    .local v4, "content":Landroid/text/Editable;
    invoke-virtual {p0, v4}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->copyEditableWithSelectSpan(Landroid/text/Editable;)V

    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, "a":I
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .local v1, "b":I
    if-le v0, v1, :cond_0

    move v8, v0

    .local v8, "tmp":I
    move v0, v1

    move v1, v8

    .end local v8    # "tmp":I
    :cond_0
    invoke-static {v4}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .local v2, "ca":I
    invoke-static {v4}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .local v3, "cb":I
    if-ge v3, v2, :cond_1

    move v8, v2

    .restart local v8    # "tmp":I
    move v2, v3

    move v3, v8

    .end local v8    # "tmp":I
    :cond_1
    if-eq v2, v9, :cond_3

    if-eq v3, v9, :cond_3

    if-ge v2, v0, :cond_2

    move v0, v2

    :cond_2
    if-le v3, v1, :cond_3

    move v1, v3

    :cond_3
    const/4 v5, 0x0

    .local v5, "deleted":Z
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v9

    add-int v10, v1, p2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .local v6, "endDelete":I
    if-le v6, v1, :cond_4

    const/4 v5, 0x1

    const-string v9, ""

    invoke-direct {p0, v1, v6, v9}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    :cond_4
    sub-int v9, v0, p1

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .local v7, "startDelete":I
    if-ge v7, v0, :cond_5

    const/4 v5, 0x1

    const-string v9, ""

    invoke-direct {p0, v7, v0, v9}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    :cond_5
    if-eqz v5, :cond_6

    if-ne v0, v1, :cond_7

    if-nez v0, :cond_7

    :cond_6
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mIsKeySentByMe:Z

    const/16 v9, 0x43

    invoke-direct {p0, v9}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->sendKey(I)V

    iput-boolean v11, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mIsKeySentByMe:Z

    :cond_7
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClassic$WVInputConnection;->deleteSurroundingText(II)Z

    move-result v9

    return v9
.end method

.method public endBatchEdit()Z
    .locals 1

    .prologue
    iget v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mBatchLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mBatchLevel:I

    iget v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mBatchLevel:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # invokes: Landroid/webkit/WebViewClassic;->commitTextBatch()V
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$300(Landroid/webkit/WebViewClassic;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public finishComposingText()Z
    .locals 5

    .prologue
    iget-object v3, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isCommit:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .local v0, "editable":Landroid/text/Editable;
    invoke-static {v0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .local v2, "start":I
    invoke-static {v0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .local v1, "end":I
    if-ltz v2, :cond_0

    if-ltz v1, :cond_0

    if-eq v2, v1, :cond_0

    iget-object v3, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0xb9

    invoke-static {v3, v4, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .end local v0    # "editable":Landroid/text/Editable;
    .end local v1    # "end":I
    .end local v2    # "start":I
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebViewClassic$WVInputConnection;->finishComposingText()Z

    move-result v3

    return v3
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mImeOptions:I

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mInputType:I

    return v0
.end method

.method public getIsAutoFillable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mIsAutoFillable:Z

    return v0
.end method

.method htc_commitText(Ljava/lang/CharSequence;I)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    const/16 v1, 0x1f5

    iget-object v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method htc_finishComposing()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    const/16 v1, 0x1f8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method htc_handleKey(I)Z
    .locals 1
    .param p1, "keycode"    # I

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method htc_setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    const/4 v7, -0x1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v1

    .local v1, "editable":Landroid/text/Editable;
    invoke-static {v1}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .local v2, "s":I
    invoke-static {v1}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    .local v0, "e":I
    move-object v5, p1

    .local v5, "send":Ljava/lang/CharSequence;
    if-le v2, v7, :cond_0

    if-ge v2, v0, :cond_0

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    instance-of v6, v5, Landroid/text/Spannable;

    if-eqz v6, :cond_0

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    sub-int v4, v6, v2

    .local v4, "selectStart":I
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    sub-int v3, v6, v2

    .local v3, "selectEnd":I
    if-le v4, v7, :cond_0

    if-le v3, v7, :cond_0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-gt v4, v6, :cond_0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-gt v3, v6, :cond_0

    move-object v6, v5

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .end local v3    # "selectEnd":I
    .end local v4    # "selectStart":I
    :cond_0
    iget-object v6, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    const/16 v7, 0x1f6

    iget-object v8, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9, v5}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    const/4 v6, 0x1

    return v6
.end method

.method public initEditorInfo(Landroid/webkit/WebViewCore$TextFieldInitData;)V
    .locals 5
    .param p1, "initData"    # Landroid/webkit/WebViewCore$TextFieldInitData;

    .prologue
    iget v3, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mType:I

    .local v3, "type":I
    const/16 v2, 0xa1

    .local v2, "inputType":I
    const/high16 v1, 0x12000000

    .local v1, "imeOptions":I
    iget-boolean v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsSpellCheckEnabled:Z

    if-nez v4, :cond_0

    const/high16 v4, 0x80000

    or-int/2addr v2, v4

    :cond_0
    const/4 v4, 0x1

    if-eq v4, v3, :cond_2

    iget-boolean v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsTextFieldNext:Z

    if-eqz v4, :cond_1

    const/high16 v4, 0x8000000

    or-int/2addr v1, v4

    :cond_1
    iget-boolean v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsTextFieldPrev:Z

    if-eqz v4, :cond_2

    const/high16 v4, 0x4000000

    or-int/2addr v1, v4

    :cond_2
    const/4 v0, 0x2

    .local v0, "action":I
    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    or-int/2addr v1, v0

    iget-object v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mLabel:Ljava/lang/String;

    iput-object v4, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mHint:Ljava/lang/String;

    iget v4, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mInputType:I

    iput v4, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mInputTypeOld:I

    iput v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mInputType:I

    iput v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mImeOptions:I

    iget v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mMaxLength:I

    iput v4, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mMaxLength:I

    iget-boolean v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsAutoCompleteEnabled:Z

    iput-boolean v4, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mIsAutoCompleteEnabled:Z

    iget-object v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mName:Ljava/lang/String;

    iput-object v4, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mName:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/AutoCompletePopup;->clearAdapter()V

    return-void

    :pswitch_1
    const v4, 0x2c000

    or-int/2addr v2, v4

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    or-int/lit16 v2, v2, 0xe0

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/16 v2, 0xd1

    goto :goto_0

    :pswitch_5
    const/16 v2, 0x3002

    goto :goto_0

    :pswitch_6
    const/4 v2, 0x3

    goto :goto_0

    :pswitch_7
    or-int/lit8 v2, v2, 0x10

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public isBatchEditing()Z
    .locals 1

    .prologue
    iget v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mBatchLevel:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performEditorAction(I)Z
    .locals 7
    .param p1, "editorAction"    # I

    .prologue
    const/16 v6, 0x42

    const/4 v5, 0x1

    const/4 v0, 0x1

    .local v0, "handled":Z
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/webkit/WebViewClassic$WVInputConnection;->performEditorAction(I)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    iget-object v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->requestFocus(I)Z

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->requestFocus(I)Z

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # invokes: Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)V

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # invokes: Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)V

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/webkit/WebViewClassic;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    iget-object v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v5, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/webkit/WebViewClassic;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public replaceSelection(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .local v0, "editable":Landroid/text/Editable;
    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->copyEditableWithSelectSpan(Landroid/text/Editable;)V

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .local v3, "selectionStart":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .local v2, "selectionEnd":I
    sub-int v4, v2, v3

    invoke-direct {p0, p1, v4}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, v3, v2, p1}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    invoke-interface {v0, v3, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->restartInput()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v1, v3, v4

    .local v1, "newCaret":I
    invoke-virtual {p0, v1, v1}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->setSelection(II)Z

    return-void
.end method

.method public restartInput()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    iget-boolean v8, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mIsKeySentByMe:Z

    if-nez v8, :cond_8

    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "webview"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[WebViewClassic.WebViewInputConnection::sendKeyEvent] >> event="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    const/16 v9, 0x43

    if-ne v8, v9, :cond_3

    const/4 v5, 0x0

    .local v5, "result":Z
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v1

    .local v1, "editable":Landroid/text/Editable;
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v7

    .local v7, "selectionStart":I
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    .local v6, "selectionEnd":I
    if-eq v7, v6, :cond_1

    if-ltz v7, :cond_1

    if-ltz v6, :cond_1

    invoke-static {v1, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    sub-int v8, v6, v7

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->deleteSurroundingText(II)Z

    move-result v5

    .end local v1    # "editable":Landroid/text/Editable;
    .end local v5    # "result":Z
    .end local v6    # "selectionEnd":I
    .end local v7    # "selectionStart":I
    :goto_0
    return v5

    .restart local v1    # "editable":Landroid/text/Editable;
    .restart local v5    # "result":Z
    .restart local v6    # "selectionEnd":I
    .restart local v7    # "selectionStart":I
    :cond_1
    const/4 v0, 0x1

    .local v0, "deleteLength":I
    add-int/lit8 v8, v7, -0x2

    if-ltz v8, :cond_2

    if-ne v7, v6, :cond_2

    const/4 v8, 0x1

    new-array v2, v8, [C

    .local v2, "lastChar":[C
    add-int/lit8 v8, v7, -0x1

    const/4 v9, 0x0

    invoke-interface {v1, v8, v7, v2, v9}, Landroid/text/Editable;->getChars(II[CI)V

    const/4 v8, 0x1

    new-array v4, v8, [C

    .local v4, "previousLastChar":[C
    add-int/lit8 v8, v7, -0x2

    add-int/lit8 v9, v7, -0x1

    const/4 v10, 0x0

    invoke-interface {v1, v8, v9, v4, v10}, Landroid/text/Editable;->getChars(II[CI)V

    const/4 v8, 0x0

    aget-char v8, v4, v8

    const/4 v9, 0x0

    aget-char v9, v2, v9

    invoke-static {v8, v9}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v0, 0x2

    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "webview"

    const-string v9, "[WebViewClassic.WebViewInputConnection::sendKeyEvent] >> set deleteLength = 2"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "lastChar":[C
    .end local v4    # "previousLastChar":[C
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {p0, v0, v8}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->deleteSurroundingText(II)Z

    move-result v5

    goto :goto_0

    .end local v0    # "deleteLength":I
    .end local v1    # "editable":Landroid/text/Editable;
    .end local v5    # "result":Z
    .end local v6    # "selectionEnd":I
    .end local v7    # "selectionStart":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    const/16 v9, 0x70

    if-ne v8, v9, :cond_4

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->deleteSurroundingText(II)Z

    move-result v5

    .restart local v5    # "result":Z
    goto :goto_0

    .end local v5    # "result":Z
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v8

    int-to-char v8, v8

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    .local v3, "newComposingText":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {p0, v3, v8}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v5

    goto :goto_0

    .end local v3    # "newComposingText":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    const/16 v9, 0x43

    if-eq v8, v9, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    const/16 v9, 0x70

    if-ne v8, v9, :cond_7

    :cond_6
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->updateSelection()V

    const/4 v5, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v8

    if-eqz v8, :cond_8

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-super {p0, p1}, Landroid/webkit/WebViewClassic$WVInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0
.end method

.method public setAutoFillable(I)V
    .locals 6
    .param p1, "queryId"    # I

    .prologue
    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getAutoFillEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mIsAutoFillable:Z

    iget v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mInputType:I

    and-int/lit16 v0, v1, 0xff0

    .local v0, "variation":I
    const/16 v1, 0xe0

    if-eq v0, v1, :cond_1

    iget-boolean v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mIsAutoFillable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mIsAutoCompleteEnabled:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mName:Ljava/lang/String;

    iget-object v3, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v3

    iget-boolean v4, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mIsAutoFillable:Z

    iget-boolean v5, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mIsAutoCompleteEnabled:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/webkit/WebViewClassic;->requestFormData(Ljava/lang/String;IZZ)V

    :cond_1
    return-void

    .end local v0    # "variation":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setComposingRegion(II)Z
    .locals 12
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .local v2, "e":Landroid/text/Editable;
    move v0, p1

    .local v0, "a":I
    move v1, p2

    .local v1, "b":I
    if-eqz v2, :cond_4

    if-le v0, v1, :cond_0

    move v7, v0

    .local v7, "tmp":I
    move v0, v1

    move v1, v7

    .end local v7    # "tmp":I
    :cond_0
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v3

    .local v3, "length":I
    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-gez v1, :cond_2

    const/4 v1, 0x0

    :cond_2
    if-le v0, v3, :cond_3

    move v0, v3

    :cond_3
    if-le v1, v3, :cond_4

    move v1, v3

    .end local v3    # "length":I
    :cond_4
    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .local v4, "original":Ljava/lang/CharSequence;
    iget-object v8, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v8, v8, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v9, 0x8b

    const-string v10, ""

    invoke-virtual {v8, v9, v0, v1, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .local v5, "replaceMessage":Landroid/os/Message;
    iget-object v8, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v8, v8, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v8, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v8, v8, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v9, 0xb4

    invoke-static {v8, v9, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    iget-object v8, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v8, v8, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v9, 0xb6

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClassic$WVInputConnection;->setComposingRegion(II)Z

    move-result v6

    .local v6, "result":Z
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->updateSelection()V

    return v6
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 11
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    const/16 v8, 0x8c

    const/4 v10, 0x1

    iget-object v7, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$1200(Landroid/webkit/WebViewClassic;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v7, v7, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v7, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v7, v7, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .local v0, "editable":Landroid/text/Editable;
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isComposing:Z

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->copyEditableWithSelectSpan(Landroid/text/Editable;)V

    invoke-static {v0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v5

    .local v5, "start":I
    invoke-static {v0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .local v1, "end":I
    if-ltz v5, :cond_1

    if-gez v1, :cond_7

    :cond_1
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    :goto_0
    if-ge v1, v5, :cond_2

    move v6, v1

    .local v6, "temp":I
    move v1, v5

    move v5, v6

    .end local v6    # "temp":I
    :cond_2
    sub-int v7, v1, v5

    invoke-direct {p0, p1, v7}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, "limitedText":Ljava/lang/CharSequence;
    if-eq v3, p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr p2, v7

    :cond_3
    sub-int v4, v1, v5

    .local v4, "prevCharslength":I
    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "prevchars = "

    invoke-direct {p0, v0, v7}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->printspans(Ljava/lang/CharSequence;Ljava/lang/String;)V

    const-string v7, "JimeBG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SelectionStart = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "JimeBG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SelectionEnd = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "JimeBG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ComposingSpanStart = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "JimeBG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ComposingSpanEnd = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "nextchars = "

    invoke-direct {p0, p1, v7}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->printspans(Ljava/lang/CharSequence;Ljava/lang/String;)V

    :cond_4
    invoke-super {p0, v3, p2}, Landroid/webkit/WebViewClassic$WVInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    invoke-direct {p0, v5, v1, v3}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    const-string v7, "JimeBG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " SelectionStart = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "JimeBG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " SelectionEnd = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "JimeBG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ComposingSpanStart = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "JimeBG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ComposingSpanEnd = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "JimeBG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " start = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", end = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "JimeBG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " prevCharslength = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", editable.length() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", nextCharslength = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->updateSelection()V

    if-eq v3, p1, :cond_6

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int v2, v5, v7

    .local v2, "lastCaret":I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->finishComposingText()Z

    invoke-virtual {p0, v2, v2}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->setSelection(II)Z

    .end local v2    # "lastCaret":I
    :cond_6
    return v10

    .end local v3    # "limitedText":Ljava/lang/CharSequence;
    .end local v4    # "prevCharslength":I
    :cond_7
    iput-boolean v10, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isComposing:Z

    goto/16 :goto_0
.end method

.method public setSelection(II)Z
    .locals 10
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v9, -0x1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v1

    .local v1, "editable":Landroid/text/Editable;
    if-eq p1, p2, :cond_0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v6

    if-le p2, v6, :cond_0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result p2

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getSelectionStart()I

    move-result v3

    .local v3, "oldST":I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getSelectionEnd()I

    move-result v2

    .local v2, "oldED":I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v5

    .local v5, "s":I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    .local v0, "e":I
    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "webview"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WebViewClassic.WebViewInputConnection::setSelection] >> s="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " oldST="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " oldED="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-ne v3, p1, :cond_2

    if-ne v2, p2, :cond_2

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v6

    if-ne v6, v2, :cond_3

    :cond_2
    if-eq v5, v9, :cond_4

    if-eq v0, v9, :cond_4

    :cond_3
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClassic$WVInputConnection;->setSelection(II)Z

    move-result v4

    .local v4, "result":Z
    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "webview"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WebViewClassic.WebViewInputConnection::setSelection] >> set start="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " end="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->updateSelection()V

    goto :goto_0
.end method

.method public setTextAndKeepSelection(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .local v0, "editable":Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .local v2, "selectionStart":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .local v1, "selectionEnd":I
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-direct {p0, p1, v3}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v0, v3, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->setSelection(II)Z

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->finishComposingText()Z

    return-void
.end method

.method public setupEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 4
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    iget v3, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mInputType:I

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget v3, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mImeOptions:I

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v3, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mHint:Ljava/lang/String;

    iput-object v3, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getCursorCapsMode(I)I

    move-result v3

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .local v0, "editable":Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .local v2, "selectionStart":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .local v1, "selectionEnd":I
    if-ltz v2, :cond_0

    if-gez v1, :cond_1

    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    move v1, v2

    :cond_1
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    return-void
.end method

.method public updateCursor([I)V
    .locals 10
    .param p1, "screenLoc"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isWatchingCursor(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isBatchEditing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSelectLeftCaretHeight:I
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$800(Landroid/webkit/WebViewClassic;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSelectRightCaretHeight:I
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)I

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_2

    const/4 v1, 0x2

    new-array v7, v1, [I

    .local v7, "mScreenOffset":[I
    :goto_0
    if-nez p1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    :cond_0
    new-instance v6, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1000(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$1000(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v4, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSelectLeftCaretHeight:I
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$800(Landroid/webkit/WebViewClassic;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v4, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCursorExtent:Landroid/graphics/Point;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v5, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCursorExtent:Landroid/graphics/Point;
    invoke-static {v5}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v4

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v6, "cursorRect":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    iget v2, v6, Landroid/graphics/Rect;->left:I

    aget v3, v7, v8

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v6, Landroid/graphics/Rect;->top:I

    aget v4, v7, v9

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v6, Landroid/graphics/Rect;->right:I

    aget v5, v7, v8

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    aget v8, v7, v9

    add-int/2addr v5, v8

    iget-object v8, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v8

    sub-int/2addr v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V

    .end local v6    # "cursorRect":Landroid/graphics/Rect;
    .end local v7    # "mScreenOffset":[I
    :cond_1
    return-void

    :cond_2
    move-object v7, p1

    goto/16 :goto_0
.end method
