.class public Landroid/widget/OnDemandDateTimeView;
.super Landroid/widget/DateTimeView;
.source "OnDemandDateTimeView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/DateTimeView;-><init>(Landroid/content/Context;)V

    const-string v0, "OnDemandDateTimeView"

    iput-object v0, p0, Landroid/widget/OnDemandDateTimeView;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Landroid/widget/OnDemandDateTimeView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/DateTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "OnDemandDateTimeView"

    iput-object v0, p0, Landroid/widget/OnDemandDateTimeView;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Landroid/widget/OnDemandDateTimeView;->DEBUG:Z

    return-void
.end method


# virtual methods
.method registerReceivers()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/widget/OnDemandDateTimeView;->DEBUG:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "OnDemandDateTimeView"

    const-string v1, "skip registerReceivers()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method unregisterReceivers()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/widget/OnDemandDateTimeView;->DEBUG:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "OnDemandDateTimeView"

    const-string v1, "skip unregisterReceivers()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
