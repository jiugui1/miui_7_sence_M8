.class public Landroid/view/inputmethod/StringPickerDialog;
.super Landroid/text/method/CharacterPickerDialog;
.source "StringPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/StringPickerDialog$OptionsAdapterSPD;
    }
.end annotation


# instance fields
.field private mGridView:Landroid/widget/GridView;

.field private mOptionSet:[Ljava/lang/String;

.field private mType:C


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;[Ljava/lang/String;ZC)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "text"    # Landroid/text/Editable;
    .param p4, "optionSet"    # [Ljava/lang/String;
    .param p5, "insert"    # Z
    .param p6, "type"    # C

    .prologue
    const/4 v6, 0x0

    aget-object v4, p4, v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/text/method/CharacterPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V

    iput-object p4, p0, Landroid/view/inputmethod/StringPickerDialog;->mOptionSet:[Ljava/lang/String;

    iput-char p6, p0, Landroid/view/inputmethod/StringPickerDialog;->mType:C

    iget-char v0, p0, Landroid/view/inputmethod/StringPickerDialog;->mType:C

    const v1, 0xef06

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Landroid/view/inputmethod/StringPickerDialog;->mType:C

    const v1, 0xef07

    if-ne v0, v1, :cond_1

    :cond_0
    iput-boolean v6, p0, Landroid/view/inputmethod/StringPickerDialog;->mNeedToDismiss:Z

    :cond_1
    return-void
.end method

.method static synthetic access$000(Landroid/view/inputmethod/StringPickerDialog;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/view/inputmethod/StringPickerDialog;

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/StringPickerDialog;->mOptionSet:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/inputmethod/StringPickerDialog;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Landroid/view/inputmethod/StringPickerDialog;

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/StringPickerDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private sendKeyEvent(I)V
    .locals 13
    .param p1, "keyEventCode"    # I

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .local v1, "eventTime":J
    iget-object v12, p0, Landroid/view/inputmethod/StringPickerDialog;->mView:Landroid/view/View;

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v12, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v12, p0, Landroid/view/inputmethod/StringPickerDialog;->mView:Landroid/view/View;

    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x6

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v12, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method private updateKeyboard(Z)V
    .locals 2
    .param p1, "isToABCkb"    # Z

    .prologue
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->KEYBOARD_SETS:Landroid/util/SparseArray;

    if-eqz p1, :cond_0

    const v0, 0xef06

    :goto_0
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/view/inputmethod/StringPickerDialog;->mOptionSet:[Ljava/lang/String;

    iget-object v0, p0, Landroid/view/inputmethod/StringPickerDialog;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidateViews()V

    return-void

    :cond_0
    const v0, 0xef07

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    instance-of v1, p1, Landroid/widget/Button;

    if-eqz v1, :cond_9

    move-object v1, p1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "result":Ljava/lang/CharSequence;
    const-string v1, "\u2190"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x43

    invoke-direct {p0, v1}, Landroid/view/inputmethod/StringPickerDialog;->sendKeyEvent(I)V

    .end local v0    # "result":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .restart local v0    # "result":Ljava/lang/CharSequence;
    :cond_0
    const-string v1, "\u21b2"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x42

    invoke-direct {p0, v1}, Landroid/view/inputmethod/StringPickerDialog;->sendKeyEvent(I)V

    goto :goto_0

    :cond_1
    const-string v1, "\u3129"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Landroid/view/inputmethod/StringPickerDialog;->sendKeyEvent(I)V

    goto :goto_0

    :cond_2
    const-string v1, "\u21e1"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x13

    invoke-direct {p0, v1}, Landroid/view/inputmethod/StringPickerDialog;->sendKeyEvent(I)V

    goto :goto_0

    :cond_3
    const-string v1, "\u21e3"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x14

    invoke-direct {p0, v1}, Landroid/view/inputmethod/StringPickerDialog;->sendKeyEvent(I)V

    goto :goto_0

    :cond_4
    const-string v1, "\u21e0"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x15

    invoke-direct {p0, v1}, Landroid/view/inputmethod/StringPickerDialog;->sendKeyEvent(I)V

    goto :goto_0

    :cond_5
    const-string v1, "\u21e2"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x16

    invoke-direct {p0, v1}, Landroid/view/inputmethod/StringPickerDialog;->sendKeyEvent(I)V

    goto :goto_0

    :cond_6
    const-string v1, "(#)"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/view/inputmethod/StringPickerDialog;->updateKeyboard(Z)V

    goto :goto_0

    :cond_7
    const-string v1, "(A)"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/view/inputmethod/StringPickerDialog;->updateKeyboard(Z)V

    goto :goto_0

    :cond_8
    invoke-super {p0, p1}, Landroid/text/method/CharacterPickerDialog;->onClick(Landroid/view/View;)V

    goto :goto_0

    .end local v0    # "result":Ljava/lang/CharSequence;
    :cond_9
    invoke-super {p0, p1}, Landroid/text/method/CharacterPickerDialog;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/text/method/CharacterPickerDialog;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x3030024

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/StringPickerDialog;->setContentView(I)V

    const v0, 0x3110043

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/StringPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Landroid/view/inputmethod/StringPickerDialog;->mGridView:Landroid/widget/GridView;

    iget-object v0, p0, Landroid/view/inputmethod/StringPickerDialog;->mGridView:Landroid/widget/GridView;

    new-instance v1, Landroid/view/inputmethod/StringPickerDialog$OptionsAdapterSPD;

    invoke-virtual {p0}, Landroid/view/inputmethod/StringPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/view/inputmethod/StringPickerDialog$OptionsAdapterSPD;-><init>(Landroid/view/inputmethod/StringPickerDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroid/view/inputmethod/StringPickerDialog;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-char v0, p0, Landroid/view/inputmethod/StringPickerDialog;->mType:C

    const v1, 0xef05

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Landroid/view/inputmethod/StringPickerDialog;->mType:C

    const v1, 0xef06

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Landroid/view/inputmethod/StringPickerDialog;->mType:C

    const v1, 0xef07

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/StringPickerDialog;->mGridView:Landroid/widget/GridView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    :cond_1
    const v0, 0x3110044

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/StringPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/view/inputmethod/StringPickerDialog;->mCancelButton:Landroid/widget/Button;

    iget-object v0, p0, Landroid/view/inputmethod/StringPickerDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/StringPickerDialog;->mOptionSet:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/StringPickerDialog;->replaceCharacterAndClose(Ljava/lang/CharSequence;)V

    return-void
.end method
