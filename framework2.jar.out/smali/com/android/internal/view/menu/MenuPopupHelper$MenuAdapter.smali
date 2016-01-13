.class Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private colorStateList:Landroid/content/res/ColorStateList;

.field private itemEndMargin:I

.field private itemStartMargin:I

.field private mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/android/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/MenuPopupHelper;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/high16 v1, -0x80000000

    .line 479
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 477
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 509
    iput v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemStartMargin:I

    .line 510
    iput v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemEndMargin:I

    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->colorStateList:Landroid/content/res/ColorStateList;

    .line 480
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 481
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 482
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 6

    .prologue
    .line 597
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$500(Lcom/android/internal/view/menu/MenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 598
    .local v1, "expandedItem":Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_1

    .line 599
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$500(Lcom/android/internal/view/menu/MenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 600
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 601
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 602
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 603
    .local v3, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    if-ne v3, v1, :cond_0

    .line 604
    iput v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 610
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    return-void

    .line 601
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 609
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 485
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$100(Lcom/android/internal/view/menu/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 487
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1

    .line 488
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 490
    :goto_1
    return v1

    .line 485
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 490
    .restart local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 494
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$100(Lcom/android/internal/view/menu/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 496
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    .line 497
    add-int/lit8 p1, p1, 0x1

    .line 499
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v1

    .line 494
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 475
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 505
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 515
    if-nez p2, :cond_0

    .line 516
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v8}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$200(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x1090070

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 517
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup:Z
    invoke-static {v8}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$300(Lcom/android/internal/view/menu/MenuPopupHelper;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    instance-of v8, p2, Lcom/android/internal/view/menu/ListMenuItemView;

    if-eqz v8, :cond_0

    move-object v8, p2

    .line 519
    check-cast v8, Lcom/android/internal/view/menu/ListMenuItemView;

    const v9, 0x1020016

    invoke-virtual {v8, v9}, Lcom/android/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 520
    .local v7, "v":Landroid/view/View;
    if-eqz v7, :cond_0

    instance-of v8, v7, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    move-object v6, v7

    .line 521
    check-cast v6, Landroid/widget/TextView;

    .line 522
    .local v6, "tv":Landroid/widget/TextView;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 523
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 524
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$400(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x2030018

    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 530
    .end local v6    # "tv":Landroid/widget/TextView;
    .end local v7    # "v":Landroid/view/View;
    :cond_0
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup:Z
    invoke-static {v8}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$300(Lcom/android/internal/view/menu/MenuPopupHelper;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 531
    instance-of v8, p2, Lcom/android/internal/view/menu/ListMenuItemView;

    if-eqz v8, :cond_5

    .line 532
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {p2, v8, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    move-object v8, p2

    .line 535
    check-cast v8, Lcom/android/internal/view/menu/ListMenuItemView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/view/menu/ListMenuItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 536
    .local v5, "temp":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 538
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemStartMargin:I

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_1

    iget v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemEndMargin:I

    const/high16 v9, -0x80000000

    if-ne v8, v9, :cond_2

    .line 540
    :cond_1
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$400(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 541
    .local v4, "resource":Landroid/content/res/Resources;
    const v8, 0x2050001

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemEndMargin:I

    iput v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemStartMargin:I

    .line 544
    .end local v4    # "resource":Landroid/content/res/Resources;
    :cond_2
    iget v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemStartMargin:I

    if-lez v8, :cond_3

    if-eqz v2, :cond_3

    .line 545
    iget v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemStartMargin:I

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 547
    :cond_3
    iget v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemEndMargin:I

    if-lez v8, :cond_4

    if-eqz v2, :cond_4

    .line 548
    iget v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemEndMargin:I

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 549
    :cond_4
    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v8, p2

    .line 552
    check-cast v8, Lcom/android/internal/view/menu/ListMenuItemView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/internal/view/menu/ListMenuItemView;->enableHtcStyle(Z)V

    .end local v2    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5    # "temp":Landroid/view/View;
    :cond_5
    move-object v1, p2

    .line 556
    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 557
    .local v1, "itemView":Lcom/android/internal/view/menu/MenuView$ItemView;
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-boolean v8, v8, Lcom/android/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    if-eqz v8, :cond_6

    move-object v8, p2

    .line 558
    check-cast v8, Lcom/android/internal/view/menu/ListMenuItemView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/internal/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 560
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v1, v8, v9}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 562
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup:Z
    invoke-static {v8}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$300(Lcom/android/internal/view/menu/MenuPopupHelper;)Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v8, p2

    check-cast v8, Lcom/android/internal/view/menu/ListMenuItemView;

    invoke-virtual {v8}, Lcom/android/internal/view/menu/ListMenuItemView;->showsIcon()Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v8, p2

    .line 563
    check-cast v8, Lcom/android/internal/view/menu/ListMenuItemView;

    invoke-virtual {v8}, Lcom/android/internal/view/menu/ListMenuItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 565
    const v8, 0x1020006

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 567
    .local v0, "iconView":Landroid/view/View;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_7

    .line 568
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    .line 579
    .end local v0    # "iconView":Landroid/view/View;
    :cond_7
    :goto_0
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup:Z
    invoke-static {v8}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$300(Lcom/android/internal/view/menu/MenuPopupHelper;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 582
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->colorStateList:Landroid/content/res/ColorStateList;

    if-nez v8, :cond_8

    .line 584
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$400(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x20600d5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->colorStateList:Landroid/content/res/ColorStateList;

    .line 587
    :cond_8
    const v8, 0x1020016

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 589
    .local v3, "mTitleView":Landroid/widget/TextView;
    if-eqz v3, :cond_9

    iget-object v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->colorStateList:Landroid/content/res/ColorStateList;

    if-eqz v8, :cond_9

    .line 590
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->colorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 593
    .end local v3    # "mTitleView":Landroid/widget/TextView;
    :cond_9
    return-object p2

    .line 571
    :cond_a
    const v8, 0x1020006

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 573
    .restart local v0    # "iconView":Landroid/view/View;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v8

    const v9, 0x3ecccccd    # 0.4f

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_7

    .line 574
    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 616
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 617
    return-void
.end method