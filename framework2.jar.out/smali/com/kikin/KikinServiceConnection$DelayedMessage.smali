.class Lcom/kikin/KikinServiceConnection$DelayedMessage;
.super Ljava/lang/Object;
.source "KikinServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kikin/KikinServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedMessage"
.end annotation


# instance fields
.field private data:Landroid/os/Bundle;

.field private messageType:Lcom/kikin/interfaces/KikinMessageType;

.field final synthetic this$0:Lcom/kikin/KikinServiceConnection;


# direct methods
.method public constructor <init>(Lcom/kikin/KikinServiceConnection;Lcom/kikin/interfaces/KikinMessageType;Landroid/os/Bundle;)V
    .locals 0
    .param p2, "messageType"    # Lcom/kikin/interfaces/KikinMessageType;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/kikin/KikinServiceConnection$DelayedMessage;->this$0:Lcom/kikin/KikinServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput-object p3, p0, Lcom/kikin/KikinServiceConnection$DelayedMessage;->data:Landroid/os/Bundle;

    .line 465
    iput-object p2, p0, Lcom/kikin/KikinServiceConnection$DelayedMessage;->messageType:Lcom/kikin/interfaces/KikinMessageType;

    .line 466
    return-void
.end method


# virtual methods
.method public send()V
    .locals 3

    .prologue
    .line 470
    iget-object v0, p0, Lcom/kikin/KikinServiceConnection$DelayedMessage;->this$0:Lcom/kikin/KikinServiceConnection;

    iget-object v1, p0, Lcom/kikin/KikinServiceConnection$DelayedMessage;->messageType:Lcom/kikin/interfaces/KikinMessageType;

    iget-object v2, p0, Lcom/kikin/KikinServiceConnection$DelayedMessage;->data:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/kikin/KikinServiceConnection;->sendMessage(Lcom/kikin/interfaces/KikinMessageType;Landroid/os/Bundle;)Z

    .line 471
    return-void
.end method
