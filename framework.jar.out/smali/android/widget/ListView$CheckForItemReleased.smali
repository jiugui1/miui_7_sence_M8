.class Landroid/widget/ListView$CheckForItemReleased;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForItemReleased"
.end annotation


# instance fields
.field mId:J

.field mPosition:I

.field mView:Landroid/view/View;

.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method private constructor <init>(Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 4399
    iput-object p1, p0, Landroid/widget/ListView$CheckForItemReleased;->this$0:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/ListView;
    .param p2, "x1"    # Landroid/widget/ListView$1;

    .prologue
    .line 4399
    invoke-direct {p0, p1}, Landroid/widget/ListView$CheckForItemReleased;-><init>(Landroid/widget/ListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 4410
    iget-object v3, p0, Landroid/widget/ListView$CheckForItemReleased;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/widget/ListView$CheckForItemReleased;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    .line 4411
    :cond_0
    iget-object v3, p0, Landroid/widget/ListView$CheckForItemReleased;->this$0:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 4438
    :cond_1
    :goto_0
    return-void

    .line 4414
    :cond_2
    iget-object v3, p0, Landroid/widget/ListView$CheckForItemReleased;->this$0:Landroid/widget/ListView;

    iget-boolean v3, v3, Landroid/widget/ListView;->mDataChanged:Z

    if-eqz v3, :cond_4

    .line 4415
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v3, :cond_3

    const-string v3, "itemclick"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4416
    :cond_3
    const-string v3, "ListView"

    const-string v4, "Since data is changed, we should cancel the click."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4421
    :cond_4
    iget-object v3, p0, Landroid/widget/ListView$CheckForItemReleased;->this$0:Landroid/widget/ListView;

    iget-object v0, v3, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4422
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_5

    iget-object v3, p0, Landroid/widget/ListView$CheckForItemReleased;->this$0:Landroid/widget/ListView;

    iget v3, v3, Landroid/widget/ListView;->mItemCount:I

    if-lez v3, :cond_5

    iget v3, p0, Landroid/widget/ListView$CheckForItemReleased;->mPosition:I

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v3, p0, Landroid/widget/ListView$CheckForItemReleased;->this$0:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->sameWindowForPerformClick()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4424
    iget-object v3, p0, Landroid/widget/ListView$CheckForItemReleased;->this$0:Landroid/widget/ListView;

    iget v4, p0, Landroid/widget/ListView$CheckForItemReleased;->mPosition:I

    iget-object v5, p0, Landroid/widget/ListView$CheckForItemReleased;->this$0:Landroid/widget/ListView;

    iget v5, v5, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4425
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 4426
    iget-object v3, p0, Landroid/widget/ListView$CheckForItemReleased;->this$0:Landroid/widget/ListView;

    iget v4, p0, Landroid/widget/ListView$CheckForItemReleased;->mPosition:I

    iget-wide v5, p0, Landroid/widget/ListView$CheckForItemReleased;->mId:J

    # invokes: Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z
    invoke-static {v3, v2, v4, v5, v6}, Landroid/widget/ListView;->access$401(Landroid/widget/ListView;Landroid/view/View;IJ)Z

    goto :goto_0

    .line 4429
    .end local v2    # "view":Landroid/view/View;
    :cond_5
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v3, :cond_6

    const-string v3, "itemclick"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4430
    :cond_6
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 4431
    .local v1, "dataCount":I
    :goto_1
    const-string v3, "ListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Something bad happened, we should cancel the click. , adapter="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , mItemCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/ListView$CheckForItemReleased;->this$0:Landroid/widget/ListView;

    iget v5, v5, Landroid/widget/ListView;->mItemCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , mPosition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/widget/ListView$CheckForItemReleased;->mPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , adapter.getCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , mView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/ListView$CheckForItemReleased;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , sameWindow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/ListView$CheckForItemReleased;->this$0:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->sameWindowForPerformClick()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4430
    .end local v1    # "dataCount":I
    :cond_7
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public start(Landroid/view/View;IJ)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 4404
    iput-object p1, p0, Landroid/widget/ListView$CheckForItemReleased;->mView:Landroid/view/View;

    .line 4405
    iput p2, p0, Landroid/widget/ListView$CheckForItemReleased;->mPosition:I

    .line 4406
    iput-wide p3, p0, Landroid/widget/ListView$CheckForItemReleased;->mId:J

    .line 4407
    iget-object v0, p0, Landroid/widget/ListView$CheckForItemReleased;->this$0:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 4408
    return-void
.end method