.class Landroid/view/inputmethod/StringPickerDialog$OptionsAdapterSPD;
.super Landroid/widget/BaseAdapter;
.source "StringPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/StringPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionsAdapterSPD"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/StringPickerDialog;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/StringPickerDialog;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    iput-object p1, p0, Landroid/view/inputmethod/StringPickerDialog$OptionsAdapterSPD;->this$0:Landroid/view/inputmethod/StringPickerDialog;

    .line 102
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 103
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/view/inputmethod/StringPickerDialog$OptionsAdapterSPD;->this$0:Landroid/view/inputmethod/StringPickerDialog;

    # getter for: Landroid/view/inputmethod/StringPickerDialog;->mOptionSet:[Ljava/lang/String;
    invoke-static {v0}, Landroid/view/inputmethod/StringPickerDialog;->access$000(Landroid/view/inputmethod/StringPickerDialog;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 120
    iget-object v0, p0, Landroid/view/inputmethod/StringPickerDialog$OptionsAdapterSPD;->this$0:Landroid/view/inputmethod/StringPickerDialog;

    # getter for: Landroid/view/inputmethod/StringPickerDialog;->mOptionSet:[Ljava/lang/String;
    invoke-static {v0}, Landroid/view/inputmethod/StringPickerDialog;->access$000(Landroid/view/inputmethod/StringPickerDialog;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 124
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 106
    iget-object v2, p0, Landroid/view/inputmethod/StringPickerDialog$OptionsAdapterSPD;->this$0:Landroid/view/inputmethod/StringPickerDialog;

    # getter for: Landroid/view/inputmethod/StringPickerDialog;->mOptionSet:[Ljava/lang/String;
    invoke-static {v2}, Landroid/view/inputmethod/StringPickerDialog;->access$000(Landroid/view/inputmethod/StringPickerDialog;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, p1

    .line 107
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Landroid/view/inputmethod/StringPickerDialog$OptionsAdapterSPD;->this$0:Landroid/view/inputmethod/StringPickerDialog;

    # getter for: Landroid/view/inputmethod/StringPickerDialog;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Landroid/view/inputmethod/StringPickerDialog;->access$100(Landroid/view/inputmethod/StringPickerDialog;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x3030025

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 108
    .local v0, "b":Landroid/widget/Button;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v2, p0, Landroid/view/inputmethod/StringPickerDialog$OptionsAdapterSPD;->this$0:Landroid/view/inputmethod/StringPickerDialog;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    sget-object v2, Landroid/text/method/MetaKeyKeyListener;->SPECIAL_KEYS:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    const v2, -0xffff01

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 112
    :cond_0
    return-object v0
.end method
