.class public Lcom/android/internal/telephony/RoamingGuardListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RoamingGuardListAdapter.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "DeliveryReportAdapter"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/RoamingGuardListAdapter;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/internal/telephony/RoamingGuardListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/RoamingGuardListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .local v0, "factory":Landroid/view/LayoutInflater;
    const v2, 0x109000f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .local v1, "listItem":Landroid/widget/TextView;
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .end local v0    # "factory":Landroid/view/LayoutInflater;
    :goto_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    return-object v1

    .end local v1    # "listItem":Landroid/widget/TextView;
    :cond_0
    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    .restart local v1    # "listItem":Landroid/widget/TextView;
    goto :goto_0

    :pswitch_0
    const v2, 0x3070164

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :pswitch_1
    const v2, 0x3070165

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
