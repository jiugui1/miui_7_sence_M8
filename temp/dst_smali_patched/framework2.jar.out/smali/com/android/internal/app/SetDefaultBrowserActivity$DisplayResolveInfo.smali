.class final Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;
.super Ljava/lang/Object;
.source "SetDefaultBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/SetDefaultBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayResolveInfo"
.end annotation


# instance fields
.field origIntent:Landroid/content/Intent;

.field ri:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/android/internal/app/SetDefaultBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/SetDefaultBrowserActivity;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)V
    .locals 0
    .param p2, "pri"    # Landroid/content/pm/ResolveInfo;
    .param p3, "pOrigIntent"    # Landroid/content/Intent;

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;->this$0:Lcom/android/internal/app/SetDefaultBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iput-object p3, p0, Lcom/android/internal/app/SetDefaultBrowserActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    return-void
.end method
