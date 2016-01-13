.class public Lcom/android/server/HtcHardwareService$VendorArray;
.super Ljava/lang/Object;
.source "HtcHardwareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VendorArray"
.end annotation


# instance fields
.field public disabled:Z

.field final synthetic this$0:Lcom/android/server/HtcHardwareService;

.field public vName:Lcom/android/server/HtcHardwareService$VendorName;


# direct methods
.method public constructor <init>(Lcom/android/server/HtcHardwareService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/HtcHardwareService$VendorArray;->this$0:Lcom/android/server/HtcHardwareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
