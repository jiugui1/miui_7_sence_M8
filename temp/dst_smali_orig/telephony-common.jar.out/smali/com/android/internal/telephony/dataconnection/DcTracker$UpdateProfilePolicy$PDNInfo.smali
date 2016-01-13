.class public Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$PDNInfo;
.super Ljava/lang/Object;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PDNInfo"
.end annotation


# instance fields
.field public pdnLabel:Ljava/lang/String;

.field public radioTechology:I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;ILjava/lang/String;)V
    .locals 0
    .param p2, "rat"    # I
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$PDNInfo;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$PDNInfo;->radioTechology:I

    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$PDNInfo;->pdnLabel:Ljava/lang/String;

    return-void
.end method
