.class public final Landroid/media/MediaRecorder$AudioSourceEx;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioSourceEx"
.end annotation


# static fields
.field public static final FM_RX:I = 0x9

.field public static final FM_RX_A2DP:I = 0xa

.field public static final RAW_PCM:I = 0xb


# instance fields
.field final synthetic this$0:Landroid/media/MediaRecorder;


# direct methods
.method private constructor <init>(Landroid/media/MediaRecorder;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Landroid/media/MediaRecorder$AudioSourceEx;->this$0:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
