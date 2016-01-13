.class public final Lcom/htc/browsermodule/res/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/browsermodule/res/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final interested_htcgridview_attrs:[I

.field public static final interested_htcgridview_attrs_android_spacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 358
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010113

    aput v2, v0, v1

    sput-object v0, Lcom/htc/browsermodule/res/R$styleable;->interested_htcgridview_attrs:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
