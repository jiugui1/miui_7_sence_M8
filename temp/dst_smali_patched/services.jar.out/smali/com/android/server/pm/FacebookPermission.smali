.class Lcom/android/server/pm/FacebookPermission;
.super Ljava/lang/Object;
.source "FacebookPermission.java"


# instance fields
.field public final name:Ljava/lang/String;

.field public final revoke:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "revoke"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/FacebookPermission;->name:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/server/pm/FacebookPermission;->revoke:Z

    return-void
.end method
