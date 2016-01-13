.class public Lcom/htc/fingerprint/FingerprintListenerVendor;
.super Lcom/htc/fingerprint/FingerprintVendor;
.source "FingerprintListenerVendor.java"


# instance fields
.field protected mListener:Lcom/htc/fingerprint/FingerprintManager$IFingerprintListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/htc/fingerprint/FingerprintVendor;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fingerprint/FingerprintListenerVendor;->mListener:Lcom/htc/fingerprint/FingerprintManager$IFingerprintListener;

    iput-object p1, p0, Lcom/htc/fingerprint/FingerprintListenerVendor;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/fingerprint/FingerprintManager$IFingerprintListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventListener"    # Lcom/htc/fingerprint/FingerprintManager$IFingerprintListener;

    .prologue
    invoke-direct {p0}, Lcom/htc/fingerprint/FingerprintVendor;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fingerprint/FingerprintListenerVendor;->mListener:Lcom/htc/fingerprint/FingerprintManager$IFingerprintListener;

    iput-object p1, p0, Lcom/htc/fingerprint/FingerprintListenerVendor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/fingerprint/FingerprintListenerVendor;->mListener:Lcom/htc/fingerprint/FingerprintManager$IFingerprintListener;

    return-void
.end method


# virtual methods
.method protected registerListener(Lcom/htc/fingerprint/FingerprintManager$IFingerprintListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/htc/fingerprint/FingerprintManager$IFingerprintListener;

    .prologue
    iput-object p1, p0, Lcom/htc/fingerprint/FingerprintListenerVendor;->mListener:Lcom/htc/fingerprint/FingerprintManager$IFingerprintListener;

    return-void
.end method
