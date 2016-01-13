.class Lcom/android/server/location/CarGpsProvider$CarGpsRequest;
.super Ljava/lang/Object;
.source "CarGpsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/CarGpsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CarGpsRequest"
.end annotation


# instance fields
.field public request:Lcom/android/internal/location/ProviderRequest;

.field public source:Landroid/os/WorkSource;


# direct methods
.method public constructor <init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/CarGpsProvider$CarGpsRequest;->request:Lcom/android/internal/location/ProviderRequest;

    iput-object p2, p0, Lcom/android/server/location/CarGpsProvider$CarGpsRequest;->source:Landroid/os/WorkSource;

    return-void
.end method
