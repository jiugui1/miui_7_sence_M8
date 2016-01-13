.class Lcom/android/server/facebook/method/PropertyHelper;
.super Ljava/lang/Object;
.source "PropertyHelper.java"


# static fields
.field private static final DASH_ENABLED_DEFAULT:Ljava/lang/String;

.field private static final DASH_ENABLED_PROPERTY_RO:Ljava/lang/String; = "ro.product.facebook.dash"

.field private static final DASH_ENABLED_PROPERTY_RW:Ljava/lang/String; = "persist.sys.facebook.dash"

.field private static final PRODUCT_NAME_DEFAULT:Ljava/lang/String; = "undefined"

.field private static final PRODUCT_NAME_PROPERTY_RO:Ljava/lang/String; = "ro.product.facebook.name"

.field public static final PROPERTY_DASH_ENABLED:Ljava/lang/String; = "dashEnabled"

.field public static final PROPERTY_PRODUCT_NAME:Ljava/lang/String; = "productName"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/facebook/method/PropertyHelper;->DASH_ENABLED_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const-class v2, Lcom/android/server/facebook/method/PropertyHelper;

    monitor-enter v2

    :try_start_0
    const-string v1, "dashEnabled"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "persist.sys.facebook.dash"

    const-string v3, ""

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "property":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ro.product.facebook.dash"

    sget-object v3, Lcom/android/server/facebook/method/PropertyHelper;->DASH_ENABLED_DEFAULT:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .end local v0    # "property":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    :cond_1
    :try_start_1
    const-string v1, "productName"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ro.product.facebook.name"

    const-string v3, "undefined"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const-class v1, Lcom/android/server/facebook/method/PropertyHelper;

    monitor-enter v1

    :try_start_0
    const-string v0, "dashEnabled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "persist.sys.facebook.dash"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
