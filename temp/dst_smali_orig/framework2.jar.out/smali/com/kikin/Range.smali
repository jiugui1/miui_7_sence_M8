.class public Lcom/kikin/Range;
.super Ljava/lang/Object;
.source "Range.java"


# instance fields
.field private mEndOffset:I

.field private mSelectionLanguage:Ljava/lang/String;

.field private mSelectionType:Ljava/lang/String;

.field private mStartOffset:I

.field private mTouchedWord:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "startOffset"    # I
    .param p2, "endOffset"    # I
    .param p3, "selectionType"    # Ljava/lang/String;
    .param p4, "selectionLanguage"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/kikin/Range;->mStartOffset:I

    iput p2, p0, Lcom/kikin/Range;->mEndOffset:I

    iput-object p3, p0, Lcom/kikin/Range;->mSelectionType:Ljava/lang/String;

    iput-object p4, p0, Lcom/kikin/Range;->mSelectionLanguage:Ljava/lang/String;

    iput-object p5, p0, Lcom/kikin/Range;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    instance-of v2, p1, Lcom/kikin/Range;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/kikin/Range;

    .local v0, "other":Lcom/kikin/Range;
    iget v2, p0, Lcom/kikin/Range;->mStartOffset:I

    iget v3, v0, Lcom/kikin/Range;->mStartOffset:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/kikin/Range;->mEndOffset:I

    iget v3, v0, Lcom/kikin/Range;->mEndOffset:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .end local v0    # "other":Lcom/kikin/Range;
    :cond_0
    return v1
.end method

.method public getEndOffset()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/kikin/Range;->mEndOffset:I

    return v0
.end method

.method public getSelectionLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/Range;->mSelectionLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/Range;->mSelectionType:Ljava/lang/String;

    return-object v0
.end method

.method public getStartOffset()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/kikin/Range;->mStartOffset:I

    return v0
.end method

.method public getTouchedWord()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/Range;->mTouchedWord:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/kikin/Range;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setTouchedWord(Ljava/lang/String;)V
    .locals 0
    .param p1, "touchedWord"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/kikin/Range;->mTouchedWord:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start Offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kikin/Range;->mStartOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tEnd Offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kikin/Range;->mEndOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
