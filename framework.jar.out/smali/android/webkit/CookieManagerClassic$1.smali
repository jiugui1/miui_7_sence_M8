.class Landroid/webkit/CookieManagerClassic$1;
.super Landroid/os/AsyncTask;
.source "CookieManagerClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/CookieManagerClassic;->removeSessionCookie()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/CookieManagerClassic;


# direct methods
.method constructor <init>(Landroid/webkit/CookieManagerClassic;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Landroid/webkit/CookieManagerClassic$1;->this$0:Landroid/webkit/CookieManagerClassic;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 127
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/webkit/CookieManagerClassic$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "none"    # [Ljava/lang/Void;

    .prologue
    .line 130
    # invokes: Landroid/webkit/CookieManagerClassic;->nativeRemoveSessionCookie()V
    invoke-static {}, Landroid/webkit/CookieManagerClassic;->access$000()V

    .line 131
    iget-object v0, p0, Landroid/webkit/CookieManagerClassic$1;->this$0:Landroid/webkit/CookieManagerClassic;

    # invokes: Landroid/webkit/CookieManagerClassic;->signalCookieOperationsComplete()V
    invoke-static {v0}, Landroid/webkit/CookieManagerClassic;->access$100(Landroid/webkit/CookieManagerClassic;)V

    .line 132
    const/4 v0, 0x0

    return-object v0
.end method
