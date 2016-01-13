.class Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionItem;
.super Ljava/lang/Object;
.source "WebViewSpellCheckHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuggestionItem"
.end annotation


# instance fields
.field mSuggestion:Ljava/lang/String;

.field mSuggestionIndex:I

.field final synthetic this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;Ljava/lang/String;I)V
    .locals 0
    .param p2, "suggestion"    # Ljava/lang/String;
    .param p3, "suggestionIndex"    # I

    .prologue
    .line 518
    iput-object p1, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionItem;->this$1:Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-object p2, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionItem;->mSuggestion:Ljava/lang/String;

    .line 520
    iput p3, p0, Landroid/webkit/WebViewSpellCheckHelper$SuggestionWindow$SuggestionItem;->mSuggestionIndex:I

    .line 521
    return-void
.end method
