.class public Lcom/android/server/facebook/method/FacebookMethod;
.super Ljava/lang/Object;
.source "FacebookMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/facebook/method/FacebookMethod$Server;,
        Lcom/android/server/facebook/method/FacebookMethod$Client;
    }
.end annotation


# static fields
.field public static final METHOD_NAME_KEY:Ljava/lang/String; = "method_name"


# instance fields
.field private final mDescriptor:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/facebook/method/FacebookMethod;->mDescriptor:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/android/server/facebook/method/FacebookMethod;->mName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/facebook/method/FacebookMethod;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/facebook/method/FacebookMethod;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/facebook/method/FacebookMethod;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/facebook/method/FacebookMethod;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/facebook/method/FacebookMethod;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/facebook/method/FacebookMethod;->mName:Ljava/lang/String;

    return-object v0
.end method
