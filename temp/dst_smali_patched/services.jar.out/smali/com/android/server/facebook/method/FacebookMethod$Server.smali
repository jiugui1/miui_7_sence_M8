.class public abstract Lcom/android/server/facebook/method/FacebookMethod$Server;
.super Ljava/lang/Object;
.source "FacebookMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/facebook/method/FacebookMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Server"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/facebook/method/FacebookMethod;


# direct methods
.method public constructor <init>(Lcom/android/server/facebook/method/FacebookMethod;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/facebook/method/FacebookMethod$Server;->this$0:Lcom/android/server/facebook/method/FacebookMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract handleMethod(Landroid/os/Bundle;Landroid/os/Bundle;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
