.class Lcom/htc/textselection/HtcTextSelectionManager$2;
.super Landroid/os/Handler;
.source "HtcTextSelectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/textselection/HtcTextSelectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/textselection/HtcTextSelectionManager;


# direct methods
.method constructor <init>(Lcom/htc/textselection/HtcTextSelectionManager;)V
    .locals 0

    .prologue
    .line 772
    iput-object p1, p0, Lcom/htc/textselection/HtcTextSelectionManager$2;->this$0:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v11, 0x19

    const/high16 v10, 0x41200000    # 10.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    .line 776
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 801
    :pswitch_0
    iget-object v5, p0, Lcom/htc/textselection/HtcTextSelectionManager$2;->this$0:Lcom/htc/textselection/HtcTextSelectionManager;

    # getter for: Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/htc/textselection/HtcTextSelectionManager;->access$000(Lcom/htc/textselection/HtcTextSelectionManager;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 802
    iget-object v5, p0, Lcom/htc/textselection/HtcTextSelectionManager$2;->this$0:Lcom/htc/textselection/HtcTextSelectionManager;

    # getter for: Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/htc/textselection/HtcTextSelectionManager;->access$000(Lcom/htc/textselection/HtcTextSelectionManager;)Landroid/widget/TextView;

    move-result-object v4

    .line 804
    .local v4, "target":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Landroid/widget/TextView;->findWordEnd(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 805
    .local v1, "dest":I
    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    sub-int v5, v1, v5

    int-to-float v2, v5

    .line 807
    .local v2, "diff":F
    cmpg-float v5, v2, v9

    if-gtz v5, :cond_1

    .line 808
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    invoke-static {v5, v6, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 810
    :cond_1
    div-float v5, v2, v8

    float-to-int v3, v5

    .line 811
    .local v3, "increment":I
    div-float v5, v2, v8

    mul-float/2addr v5, v10

    mul-int/lit8 v6, v3, 0xa

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 812
    add-int/lit8 v3, v3, 0x1

    .line 814
    :cond_2
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    add-int/2addr v7, v3

    invoke-static {v5, v6, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 815
    iget-object v5, p0, Lcom/htc/textselection/HtcTextSelectionManager$2;->this$0:Lcom/htc/textselection/HtcTextSelectionManager;

    # getter for: Lcom/htc/textselection/HtcTextSelectionManager;->mPrivateHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/textselection/HtcTextSelectionManager;->access$200(Lcom/htc/textselection/HtcTextSelectionManager;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3ea

    invoke-virtual {v5, v6, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 820
    .end local v1    # "dest":I
    .end local v2    # "diff":F
    .end local v3    # "increment":I
    .end local v4    # "target":Landroid/widget/TextView;
    :cond_3
    :pswitch_1
    iget-object v5, p0, Lcom/htc/textselection/HtcTextSelectionManager$2;->this$0:Lcom/htc/textselection/HtcTextSelectionManager;

    # getter for: Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/htc/textselection/HtcTextSelectionManager;->access$000(Lcom/htc/textselection/HtcTextSelectionManager;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 821
    iget-object v5, p0, Lcom/htc/textselection/HtcTextSelectionManager$2;->this$0:Lcom/htc/textselection/HtcTextSelectionManager;

    # getter for: Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/htc/textselection/HtcTextSelectionManager;->access$000(Lcom/htc/textselection/HtcTextSelectionManager;)Landroid/widget/TextView;

    move-result-object v4

    .line 823
    .restart local v4    # "target":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    invoke-static {v5, v6}, Landroid/widget/TextView;->findWordStart(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 824
    .restart local v1    # "dest":I
    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    sub-int/2addr v5, v1

    int-to-float v2, v5

    .line 826
    .restart local v2    # "diff":F
    cmpg-float v5, v2, v9

    if-gtz v5, :cond_4

    .line 827
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    invoke-static {v5, v1, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_0

    .line 829
    :cond_4
    div-float v5, v2, v8

    float-to-int v0, v5

    .line 830
    .local v0, "decrement":I
    div-float v5, v2, v8

    mul-float/2addr v5, v10

    mul-int/lit8 v6, v0, 0xa

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    .line 831
    add-int/lit8 v0, v0, 0x1

    .line 832
    :cond_5
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 833
    iget-object v5, p0, Lcom/htc/textselection/HtcTextSelectionManager$2;->this$0:Lcom/htc/textselection/HtcTextSelectionManager;

    # getter for: Lcom/htc/textselection/HtcTextSelectionManager;->mPrivateHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/textselection/HtcTextSelectionManager;->access$200(Lcom/htc/textselection/HtcTextSelectionManager;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3e9

    invoke-virtual {v5, v6, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 776
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method