.class public Landroid/view/inputmethod/HtcBaseInputConnection;
.super Ljava/lang/Object;
.source "HtcBaseInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/HtcInputConnection;


# instance fields
.field private mBic:Landroid/view/inputmethod/BaseInputConnection;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/BaseInputConnection;)V
    .locals 0
    .param p1, "bic"    # Landroid/view/inputmethod/BaseInputConnection;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    move-result v0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 1
    .param p1, "states"    # I

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/BaseInputConnection;->clearMetaKeyStates(I)Z

    move-result v0

    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/BaseInputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    move-result v0

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/BaseInputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    move-result v0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result v0

    return v0
.end method

.method public endBatchEdit()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    move-result v0

    return v0
.end method

.method public finishComposingText()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    move-result v0

    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 1
    .param p1, "reqModes"    # I

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/BaseInputConnection;->getCursorCapsMode(I)I

    move-result v0

    return v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "flags"    # I

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/BaseInputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionEnd()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0}, Landroid/view/inputmethod/BaseInputConnection;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0}, Landroid/view/inputmethod/BaseInputConnection;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public getSubText(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->getSubText(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0}, Landroid/view/inputmethod/BaseInputConnection;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "n"    # I
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextAfterCursor(III)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "length"    # I
    .param p2, "flags"    # I
    .param p3, "waitTime"    # I

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/inputmethod/BaseInputConnection;->getTextAfterCursor(III)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "n"    # I
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextBeforeCursor(III)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "length"    # I
    .param p2, "flags"    # I
    .param p3, "waitTime"    # I

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/inputmethod/BaseInputConnection;->getTextBeforeCursor(III)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/BaseInputConnection;->performContextMenuAction(I)Z

    move-result v0

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 1
    .param p1, "editorAction"    # I

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/BaseInputConnection;->performEditorAction(I)Z

    move-result v0

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public replaceText(IILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(IILjava/lang/CharSequence;)V

    return-void
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/BaseInputConnection;->reportFullscreenMode(Z)Z

    move-result v0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setComposingRegion(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    move-result v0

    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public setSelection(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/HtcBaseInputConnection;->mBic:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    move-result v0

    return v0
.end method
