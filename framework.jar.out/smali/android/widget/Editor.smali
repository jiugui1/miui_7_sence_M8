.class public Landroid/widget/Editor;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Lcom/kikin/interfaces/KikinCallbackHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$3;,
        Landroid/widget/Editor$TextModifyOperation;,
        Landroid/widget/Editor$UndoInputFilter;,
        Landroid/widget/Editor$MenuWrapper;,
        Landroid/widget/Editor$HtcPastePositionListener;,
        Landroid/widget/Editor$InputMethodState;,
        Landroid/widget/Editor$SCATDHandler;,
        Landroid/widget/Editor$InputContentType;,
        Landroid/widget/Editor$ErrorPopup;,
        Landroid/widget/Editor$CorrectionHighlighter;,
        Landroid/widget/Editor$SelectionModifierCursorController;,
        Landroid/widget/Editor$InsertionPointCursorController;,
        Landroid/widget/Editor$CursorController;,
        Landroid/widget/Editor$SelectionEndHandleView;,
        Landroid/widget/Editor$SelectionStartHandleView;,
        Landroid/widget/Editor$SelectionHandleView;,
        Landroid/widget/Editor$InsertionHandleView;,
        Landroid/widget/Editor$HandleView;,
        Landroid/widget/Editor$ActionPopupWindow;,
        Landroid/widget/Editor$SelectionActionModeCallback;,
        Landroid/widget/Editor$SuggestionsPopupWindow;,
        Landroid/widget/Editor$PinnedPopupWindow;,
        Landroid/widget/Editor$PositionListener;,
        Landroid/widget/Editor$EasyEditPopupWindow;,
        Landroid/widget/Editor$EasyEditDeleteListener;,
        Landroid/widget/Editor$SpanController;,
        Landroid/widget/Editor$DragLocalState;,
        Landroid/widget/Editor$Blink;,
        Landroid/widget/Editor$TextViewPositionListener;,
        Landroid/widget/Editor$SelectionHandlePopupWindowHandler;
    }
.end annotation


# static fields
.field static final BLINK:I = 0x1f4

.field static BLINK_BLACK:I = 0x0

.field static BLINK_WHITE:I = 0x0

.field static final DEBUG_UNDO:Z = false

.field private static DRAG_SHADOW_MAX_TEXT_LENGTH:I = 0x0

.field private static final DirectionLEFT:I = 0x3

.field private static final DirectionRIGHT:I = 0x4

.field static final EXTRACT_NOTHING:I = -0x2

.field static final EXTRACT_UNKNOWN:I = -0x1

.field public static final STYLED_ANNOTATION_SPAN_KEY:Ljava/lang/String; = "styledtext"

.field private static final TAG:Ljava/lang/String; = "Editor"

.field private static final TEMP_POSITION:[F

.field private static final isTablet:Z

.field static mCurBlinkBlack:Z

.field static mIsBlackTimeShorter:Z

.field private static mRemoveMagnifier:Z

.field private static mSCATDPROCESSING:Z

.field private static sCursorControllerTempRect:Landroid/graphics/Rect;

.field private static final sIsHEP:Z


# instance fields
.field private final ANCHOR_FLY_THRESHOLD_MILLI:I

.field private final ANCHOR_ROLLBACK_THRESHOLD_MILLI:I

.field private mAnchorHeight:I

.field private mAnchorLastMovedIndex:I

.field private mAnchorLastMovedMilli:J

.field mBlink:Landroid/widget/Editor$Blink;

.field private mChangeTimes:I

.field mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

.field mCreatedWithASelection:Z

.field private mCurrentDirection:I

.field mCurrentSelection:Lcom/kikin/selection/Selection;

.field mCursorCount:I

.field final mCursorDrawable:[Landroid/graphics/drawable/Drawable;

.field mCursorVisible:Z

.field mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mDisallowParentsToInterceptTouchEvents:Z

.field mDiscardNextActionUp:Z

.field private mDispatchToTheOtherAnchor:Z

.field private mDonotPassToLeft:Z

.field private mEasyUpHardDownTriggered:Z

.field mError:Ljava/lang/CharSequence;

.field mErrorPopup:Landroid/widget/Editor$ErrorPopup;

.field mErrorWasChanged:Z

.field private mFirstDirection:I

.field private mFlags:I

.field mFrozenWithFocus:Z

.field private mHasCustomContextMenu:Z

.field private mHookIME:Ljava/lang/Runnable;

.field protected final mHtcPastePositionListener:Landroid/widget/Editor$HtcPastePositionListener;

.field mIgnoreActionUpEvent:Z

.field private mIgnoreSetText:Z

.field mInBatchEditControllers:Z

.field mInputContentType:Landroid/widget/Editor$InputContentType;

.field mInputMethodState:Landroid/widget/Editor$InputMethodState;

.field mInputType:I

.field mInsertionControllerEnabled:Z

.field mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

.field private mIsChildOfActionBarView:Z

.field private mIsInQuickActioMode:Z

.field private mIsInTextSelectionMode:Z

.field private mIsLongPressed:Z

.field private mIsShowPasteWithoutInsertionHandle:Z

.field mKeyListener:Landroid/text/method/KeyListener;

.field private mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

.field mLastDownPositionX:F

.field mLastDownPositionY:F

.field private mLastLine:I

.field private mLastTouchDownRawX:I

.field private mLastTouchDownRawY:I

.field private mLosingFocusDueToKikinPopup:Z

.field private mLosingFocusDueToOverflowMenu:Z

.field private mMenuWrapper:Landroid/widget/Editor$MenuWrapper;

.field private mPassToLeftAnchor:Z

.field private mPasteWindowHider:Ljava/lang/Runnable;

.field private mPositionListener:Landroid/widget/Editor$PositionListener;

.field private mPreDirection:I

.field mPreserveDetachedSelection:Z

.field private mPreviousX:F

.field private mRange:Lcom/kikin/Range;

.field private mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

.field private mSCATDQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScrolled:Z

.field protected mSelectAChar:Z

.field private mSelectAgain:Z

.field mSelectAllOnFocus:Z

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field public mSelectWordOnDragging:Z

.field mSelectionActionMode:Landroid/view/ActionMode;

.field mSelectionControllerEnabled:Z

.field mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

.field mSelectionMoved:Z

.field mShowCursor:J

.field mShowErrorAfterAttach:Z

.field mShowSoftInputOnFocus:Z

.field mShowSuggestionRunnable:Ljava/lang/Runnable;

.field private mSpanController:Landroid/widget/Editor$SpanController;

.field mSpellChecker:Landroid/widget/SpellChecker;

.field mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

.field mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

.field final mTempCoords:[I

.field private mTempRect:Landroid/graphics/Rect;

.field mTemporaryDetach:Z

.field mTextDisplayLists:[Landroid/view/DisplayList;

.field mTextIsSelectable:Z

.field private mTextView:Landroid/widget/TextView;

.field mTouchFocusSelected:Z

.field mUndoInputFilter:Landroid/text/InputFilter;

.field mUndoManager:Landroid/content/UndoManager;

.field mUndoOwner:Landroid/content/UndoOwner;

.field private mVisibleRect:Landroid/graphics/Rect;

.field mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x1f4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 159
    sput-boolean v0, Landroid/widget/Editor;->mRemoveMagnifier:Z

    .line 174
    const/4 v2, 0x2

    new-array v2, v2, [F

    sput-object v2, Landroid/widget/Editor;->TEMP_POSITION:[F

    .line 175
    const/16 v2, 0x14

    sput v2, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    .line 277
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sput-object v2, Landroid/widget/Editor;->sCursorControllerTempRect:Landroid/graphics/Rect;

    .line 6346
    sput v3, Landroid/widget/Editor;->BLINK_BLACK:I

    .line 6347
    sput v3, Landroid/widget/Editor;->BLINK_WHITE:I

    .line 6348
    sput-boolean v0, Landroid/widget/Editor;->mCurBlinkBlack:Z

    .line 6349
    sput-boolean v1, Landroid/widget/Editor;->mIsBlackTimeShorter:Z

    .line 6351
    const-string v2, "ro.build.project"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SHEP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "htc.editor.useshep"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    sput-boolean v0, Landroid/widget/Editor;->sIsHEP:Z

    .line 6484
    sput-boolean v1, Landroid/widget/Editor;->mSCATDPROCESSING:Z

    return-void

    :cond_0
    move v0, v1

    .line 6351
    goto :goto_0
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 6
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x1f4

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-boolean v2, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    .line 189
    iput-boolean v2, p0, Landroid/widget/Editor;->mIsInQuickActioMode:Z

    .line 204
    iput v2, p0, Landroid/widget/Editor;->mInputType:I

    .line 210
    iput-boolean v2, p0, Landroid/widget/Editor;->mScrolled:Z

    .line 211
    iput v2, p0, Landroid/widget/Editor;->mAnchorHeight:I

    .line 212
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/Editor;->mTempCoords:[I

    .line 213
    iput-boolean v2, p0, Landroid/widget/Editor;->mEasyUpHardDownTriggered:Z

    .line 214
    iput v3, p0, Landroid/widget/Editor;->mLastLine:I

    .line 216
    iput-boolean v2, p0, Landroid/widget/Editor;->mIsChildOfActionBarView:Z

    .line 222
    iput-boolean v5, p0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 239
    iput-boolean v5, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    .line 247
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    .line 730
    iput-boolean v2, p0, Landroid/widget/Editor;->mSelectAgain:Z

    .line 733
    iput-object v1, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    .line 736
    iput-boolean v2, p0, Landroid/widget/Editor;->mSelectWordOnDragging:Z

    .line 739
    iput-boolean v2, p0, Landroid/widget/Editor;->mLosingFocusDueToKikinPopup:Z

    .line 742
    iput-boolean v2, p0, Landroid/widget/Editor;->mLosingFocusDueToOverflowMenu:Z

    .line 745
    iput-object v1, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    .line 748
    iput v2, p0, Landroid/widget/Editor;->mLastTouchDownRawX:I

    .line 749
    iput v2, p0, Landroid/widget/Editor;->mLastTouchDownRawY:I

    .line 752
    iput-boolean v2, p0, Landroid/widget/Editor;->mDisallowParentsToInterceptTouchEvents:Z

    .line 4356
    iput-boolean v2, p0, Landroid/widget/Editor;->mSelectAChar:Z

    .line 4359
    iput-boolean v2, p0, Landroid/widget/Editor;->mPassToLeftAnchor:Z

    .line 4360
    iput-boolean v2, p0, Landroid/widget/Editor;->mDispatchToTheOtherAnchor:Z

    .line 4361
    iput-boolean v2, p0, Landroid/widget/Editor;->mDonotPassToLeft:Z

    .line 4366
    iput v2, p0, Landroid/widget/Editor;->mChangeTimes:I

    .line 4367
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor;->mPreviousX:F

    .line 4368
    iput v3, p0, Landroid/widget/Editor;->mCurrentDirection:I

    .line 4369
    iput v3, p0, Landroid/widget/Editor;->mPreDirection:I

    .line 4370
    iput v3, p0, Landroid/widget/Editor;->mFirstDirection:I

    .line 6479
    iput-object v1, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    .line 6482
    iput-object v1, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    .line 6555
    new-instance v0, Landroid/widget/Editor$2;

    invoke-direct {v0, p0}, Landroid/widget/Editor$2;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mHookIME:Ljava/lang/Runnable;

    .line 6688
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mVisibleRect:Landroid/graphics/Rect;

    .line 6689
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/Editor;->mFlags:I

    .line 6690
    new-instance v0, Landroid/widget/Editor$MenuWrapper;

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$MenuWrapper;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mMenuWrapper:Landroid/widget/Editor$MenuWrapper;

    .line 6691
    new-instance v0, Landroid/widget/Editor$HtcPastePositionListener;

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$HtcPastePositionListener;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mHtcPastePositionListener:Landroid/widget/Editor$HtcPastePositionListener;

    .line 6694
    iput-boolean v2, p0, Landroid/widget/Editor;->mIgnoreSetText:Z

    .line 6716
    iput-boolean v2, p0, Landroid/widget/Editor;->mHasCustomContextMenu:Z

    .line 6733
    iput-boolean v2, p0, Landroid/widget/Editor;->mIsShowPasteWithoutInsertionHandle:Z

    .line 6840
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/Editor;->mAnchorLastMovedMilli:J

    .line 6841
    iput v2, p0, Landroid/widget/Editor;->mAnchorLastMovedIndex:I

    .line 6842
    const/16 v0, 0x3c

    iput v0, p0, Landroid/widget/Editor;->ANCHOR_ROLLBACK_THRESHOLD_MILLI:I

    .line 6843
    const/16 v0, 0x64

    iput v0, p0, Landroid/widget/Editor;->ANCHOR_FLY_THRESHOLD_MILLI:I

    .line 283
    iput-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 286
    const-string v0, "htc.editor.blinkblack"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/widget/Editor;->BLINK_BLACK:I

    .line 287
    const-string v0, "htc.editor.blinkwhite"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/widget/Editor;->BLINK_WHITE:I

    .line 288
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/widget/Editor;->BLINK_BLACK:I

    if-eq v0, v4, :cond_0

    .line 289
    const-string v0, "Editor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set BLINK_BLACK to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/widget/Editor;->BLINK_BLACK:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/widget/Editor;->BLINK_WHITE:I

    if-eq v0, v4, :cond_1

    .line 291
    const-string v0, "Editor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set BLINK_WHITE to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/widget/Editor;->BLINK_WHITE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_1
    sget v0, Landroid/widget/Editor;->BLINK_BLACK:I

    sget v1, Landroid/widget/Editor;->BLINK_WHITE:I

    if-ge v0, v1, :cond_2

    .line 293
    sput-boolean v5, Landroid/widget/Editor;->mIsBlackTimeShorter:Z

    .line 294
    :cond_2
    return-void
.end method

.method private SCATDProcessQueue()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 6432
    iget-object v0, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 6445
    :cond_0
    :goto_0
    return-void

    .line 6435
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    if-nez v0, :cond_2

    .line 6436
    new-instance v0, Landroid/widget/Editor$SCATDHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$SCATDHandler;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    .line 6438
    :cond_2
    sget-boolean v0, Landroid/widget/Editor;->mSCATDPROCESSING:Z

    if-nez v0, :cond_0

    .line 6442
    sput-boolean v5, Landroid/widget/Editor;->mSCATDPROCESSING:Z

    .line 6443
    iget-object v1, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    iget-object v2, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    new-instance v3, Ljava/lang/String;

    iget-object v0, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v3}, Landroid/widget/Editor$SCATDHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/Editor$SCATDHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private SCATDRemoveSpan(Ljava/lang/String;)V
    .locals 11
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 6407
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    .line 6408
    .local v1, "editable":Landroid/text/Editable;
    const/4 v8, 0x0

    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const-class v10, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v8, v9, v10}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/SuggestionSpan;

    .line 6409
    .local v6, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v2, v6

    .line 6411
    .local v2, "sugg_span_count":I
    const/4 v7, 0x0

    .local v7, "z":I
    :goto_0
    if-ge v7, v2, :cond_2

    .line 6412
    :try_start_0
    aget-object v8, v6, v7

    invoke-interface {v1, v8}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 6413
    .local v4, "sugg_span_start":I
    aget-object v8, v6, v7

    invoke-interface {v1, v8}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 6416
    .local v3, "sugg_span_end":I
    if-ltz v4, :cond_0

    if-gez v3, :cond_1

    .line 6411
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 6419
    :cond_1
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 6421
    .local v5, "sugg_string":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 6422
    aget-object v8, v6, v7

    invoke-interface {v1, v8}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6424
    .end local v3    # "sugg_span_end":I
    .end local v4    # "sugg_span_start":I
    .end local v5    # "sugg_string":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 6425
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "Editor"

    const-string v9, "In SCATDRemoveSpan():"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6428
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor;->SCATDProcessQueue()V

    .line 6429
    return-void
.end method

.method private SCATDRescanWord(Ljava/lang/String;)V
    .locals 11
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 6451
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    .line 6452
    .local v1, "editable":Landroid/text/Editable;
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-class v9, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v10, v8, v9}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/SuggestionSpan;

    .line 6453
    .local v7, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v3, v7

    .line 6455
    .local v3, "sugg_span_count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 6456
    :try_start_0
    aget-object v8, v7, v2

    invoke-interface {v1, v8}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 6457
    .local v5, "sugg_span_start":I
    aget-object v8, v7, v2

    invoke-interface {v1, v8}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 6460
    .local v4, "sugg_span_end":I
    if-ltz v5, :cond_0

    if-gez v4, :cond_1

    .line 6455
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6463
    :cond_1
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 6465
    .local v6, "sugg_string":Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 6466
    const/4 v8, 0x0

    invoke-direct {p0, v5, v4, v8}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 6468
    .end local v4    # "sugg_span_end":I
    .end local v5    # "sugg_span_start":I
    .end local v6    # "sugg_string":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 6469
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v8, "Editor"

    const-string v9, "In SCATDRescanWord():"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6471
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    sput-boolean v10, Landroid/widget/Editor;->mSCATDPROCESSING:Z

    .line 6474
    iget-object v8, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6475
    invoke-direct {p0}, Landroid/widget/Editor;->SCATDProcessQueue()V

    .line 6476
    return-void

    .line 6471
    :catchall_0
    move-exception v8

    sput-boolean v10, Landroid/widget/Editor;->mSCATDPROCESSING:Z

    throw v8
.end method

.method private SCATDStop()V
    .locals 2

    .prologue
    .line 6537
    iget-object v0, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    if-eqz v0, :cond_0

    .line 6538
    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/Editor;->mSCATDPROCESSING:Z

    .line 6539
    iget-object v0, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SCATDHandler;->removeMessages(I)V

    .line 6540
    iget-object v0, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SCATDHandler;->removeMessages(I)V

    .line 6541
    iget-object v0, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SCATDHandler;->removeMessages(I)V

    .line 6543
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 6544
    iget-object v0, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6545
    :cond_1
    return-void
.end method

.method static synthetic access$1000(Landroid/widget/Editor;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    return-void
.end method

.method static synthetic access$1500(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/Editor;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/widget/Editor;->showQuickAction()V

    return-void
.end method

.method static synthetic access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/Editor;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/widget/Editor;->isOffsetVisible(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100()Z
    .locals 1

    .prologue
    .line 151
    sget-boolean v0, Landroid/widget/Editor;->sIsHEP:Z

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/Editor;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    iget-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2702(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 151
    iput-object p1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$2800(Landroid/widget/Editor;IIZ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    return-void
.end method

.method static synthetic access$2900(Landroid/widget/Editor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/widget/Editor;->hasCustomSelectionActionModeCallback()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/Editor;Landroid/view/ActionMode;Lcom/kikin/KikinBarState;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/view/ActionMode;
    .param p2, "x2"    # Lcom/kikin/KikinBarState;

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->showKikinResultsViewController(Landroid/view/ActionMode;Lcom/kikin/KikinBarState;)V

    return-void
.end method

.method static synthetic access$3202(Landroid/widget/Editor;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Landroid/widget/Editor;->mLosingFocusDueToOverflowMenu:Z

    return p1
.end method

.method static synthetic access$3300(Landroid/widget/Editor;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/widget/Editor;->hideKikinResultsViewController()V

    return-void
.end method

.method static synthetic access$3402(Landroid/widget/Editor;Lcom/kikin/Range;)Lcom/kikin/Range;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Lcom/kikin/Range;

    .prologue
    .line 151
    iput-object p1, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    return-object p1
.end method

.method static synthetic access$3500(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideSuggestionSpan()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3602(Landroid/widget/Editor;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I

    .prologue
    .line 151
    iput p1, p0, Landroid/widget/Editor;->mAnchorHeight:I

    return p1
.end method

.method static synthetic access$3800(Landroid/widget/Editor;)Landroid/widget/Editor$MenuWrapper;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    iget-object v0, p0, Landroid/widget/Editor;->mMenuWrapper:Landroid/widget/Editor$MenuWrapper;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsLongPressed:Z

    return v0
.end method

.method static synthetic access$4002(Landroid/widget/Editor;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Landroid/widget/Editor;->mIsLongPressed:Z

    return p1
.end method

.method static synthetic access$4200(Landroid/widget/Editor;II)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionVisible(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Landroid/widget/Editor;->sCursorControllerTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/widget/Editor;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    iget-object v0, p0, Landroid/widget/Editor;->mVisibleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$4500(Landroid/widget/Editor;)Lcom/kikin/KikinResultsViewController;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    iget-object v0, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    return-object v0
.end method

.method static synthetic access$4600(Landroid/widget/Editor;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    iget v0, p0, Landroid/widget/Editor;->mPreviousX:F

    return v0
.end method

.method static synthetic access$4602(Landroid/widget/Editor;F)F
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # F

    .prologue
    .line 151
    iput p1, p0, Landroid/widget/Editor;->mPreviousX:F

    return p1
.end method

.method static synthetic access$4700(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    iget-boolean v0, p0, Landroid/widget/Editor;->mDispatchToTheOtherAnchor:Z

    return v0
.end method

.method static synthetic access$4702(Landroid/widget/Editor;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Landroid/widget/Editor;->mDispatchToTheOtherAnchor:Z

    return p1
.end method

.method static synthetic access$4800(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    iget-boolean v0, p0, Landroid/widget/Editor;->mDonotPassToLeft:Z

    return v0
.end method

.method static synthetic access$4802(Landroid/widget/Editor;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Landroid/widget/Editor;->mDonotPassToLeft:Z

    return p1
.end method

.method static synthetic access$4900(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    iget-boolean v0, p0, Landroid/widget/Editor;->mEasyUpHardDownTriggered:Z

    return v0
.end method

.method static synthetic access$4902(Landroid/widget/Editor;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Landroid/widget/Editor;->mEasyUpHardDownTriggered:Z

    return p1
.end method

.method static synthetic access$5000(Landroid/widget/Editor;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    iget v0, p0, Landroid/widget/Editor;->mFirstDirection:I

    return v0
.end method

.method static synthetic access$5002(Landroid/widget/Editor;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I

    .prologue
    .line 151
    iput p1, p0, Landroid/widget/Editor;->mFirstDirection:I

    return p1
.end method

.method static synthetic access$5100(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    iget-boolean v0, p0, Landroid/widget/Editor;->mPassToLeftAnchor:Z

    return v0
.end method

.method static synthetic access$5102(Landroid/widget/Editor;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Landroid/widget/Editor;->mPassToLeftAnchor:Z

    return p1
.end method

.method static synthetic access$5200(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Landroid/widget/Editor;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    iget v0, p0, Landroid/widget/Editor;->mLastLine:I

    return v0
.end method

.method static synthetic access$5302(Landroid/widget/Editor;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I

    .prologue
    .line 151
    iput p1, p0, Landroid/widget/Editor;->mLastLine:I

    return p1
.end method

.method static synthetic access$5400(Landroid/widget/Editor;)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    iget-wide v0, p0, Landroid/widget/Editor;->mAnchorLastMovedMilli:J

    return-wide v0
.end method

.method static synthetic access$5402(Landroid/widget/Editor;J)J
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # J

    .prologue
    .line 151
    iput-wide p1, p0, Landroid/widget/Editor;->mAnchorLastMovedMilli:J

    return-wide p1
.end method

.method static synthetic access$5500(Landroid/widget/Editor;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    iget v0, p0, Landroid/widget/Editor;->mAnchorLastMovedIndex:I

    return v0
.end method

.method static synthetic access$5502(Landroid/widget/Editor;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I

    .prologue
    .line 151
    iput p1, p0, Landroid/widget/Editor;->mAnchorLastMovedIndex:I

    return p1
.end method

.method static synthetic access$5600(Landroid/widget/Editor;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    iget v0, p0, Landroid/widget/Editor;->mFlags:I

    return v0
.end method

.method static synthetic access$5700(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/widget/Editor;->removeMagnifier()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5802(Landroid/widget/Editor;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I

    .prologue
    .line 151
    iput p1, p0, Landroid/widget/Editor;->mChangeTimes:I

    return p1
.end method

.method static synthetic access$5902(Landroid/widget/Editor;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I

    .prologue
    .line 151
    iput p1, p0, Landroid/widget/Editor;->mCurrentDirection:I

    return p1
.end method

.method static synthetic access$6002(Landroid/widget/Editor;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I

    .prologue
    .line 151
    iput p1, p0, Landroid/widget/Editor;->mPreDirection:I

    return p1
.end method

.method static synthetic access$6100(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    return v0
.end method

.method static synthetic access$6102(Landroid/widget/Editor;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    return p1
.end method

.method static synthetic access$6202(Landroid/widget/Editor;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Landroid/widget/Editor;->mIsShowPasteWithoutInsertionHandle:Z

    return p1
.end method

.method static synthetic access$6300(Landroid/widget/Editor;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/widget/Editor;->refineOffest(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$6502(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 151
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$6600(Landroid/widget/Editor;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    return-void
.end method

.method static synthetic access$6700(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$6702(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 151
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$6800(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$6802(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 151
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$7100(Landroid/widget/Editor;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    iget v0, p0, Landroid/widget/Editor;->mLastTouchDownRawX:I

    return v0
.end method

.method static synthetic access$7102(Landroid/widget/Editor;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I

    .prologue
    .line 151
    iput p1, p0, Landroid/widget/Editor;->mLastTouchDownRawX:I

    return p1
.end method

.method static synthetic access$7200(Landroid/widget/Editor;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    iget v0, p0, Landroid/widget/Editor;->mLastTouchDownRawY:I

    return v0
.end method

.method static synthetic access$7202(Landroid/widget/Editor;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I

    .prologue
    .line 151
    iput p1, p0, Landroid/widget/Editor;->mLastTouchDownRawY:I

    return p1
.end method

.method static synthetic access$7300(Landroid/widget/Editor;II)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->showMagnifyingGlass(II)V

    return-void
.end method

.method static synthetic access$7400(Landroid/widget/Editor;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/widget/Editor;->disallowInterceptTouchEvent(Z)V

    return-void
.end method

.method static synthetic access$7600(Landroid/widget/Editor;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    iget-object v0, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 151
    sput-boolean p0, Landroid/widget/Editor;->mSCATDPROCESSING:Z

    return p0
.end method

.method static synthetic access$7800(Landroid/widget/Editor;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/widget/Editor;->SCATDProcessQueue()V

    return-void
.end method

.method static synthetic access$7900(Landroid/widget/Editor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/widget/Editor;->SCATDRescanWord(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/widget/Editor;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 151
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private canSelectText()Z
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 12
    .param p1, "pop"    # Landroid/widget/PopupWindow;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 669
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int v11, v1, v2

    .line 670
    .local v11, "wid":I
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v1, v2

    .line 672
    .local v8, "ht":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 674
    .local v3, "defaultWidthInPixels":I
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 676
    .local v0, "l":Landroid/text/Layout;
    const/4 v10, 0x0

    .line 677
    .local v10, "max":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 678
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 677
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 685
    :cond_0
    float-to-double v1, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v1, v11

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 686
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 687
    return-void
.end method

.method private createRangeFromCurrentSelection()Lcom/kikin/Range;
    .locals 3

    .prologue
    .line 886
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 887
    .local v1, "selectionStart":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 888
    .local v0, "selectionEnd":I
    invoke-direct {p0, v1, v0}, Landroid/widget/Editor;->createRangeFromSelection(II)Lcom/kikin/Range;

    move-result-object v2

    return-object v2
.end method

.method private createRangeFromSelection(II)Lcom/kikin/Range;
    .locals 8
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 860
    if-ltz p1, :cond_0

    if-ge p2, p1, :cond_1

    :cond_0
    move-object v0, v5

    .line 878
    :goto_0
    return-object v0

    .line 865
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 866
    .local v7, "selectedText":Ljava/lang/String;
    invoke-static {v7, v2, v2}, Lcom/kikin/KikinCore;->nativeGetTextEntity(Ljava/lang/String;II)Lcom/kikin/Range;

    move-result-object v6

    .line 867
    .local v6, "range":Lcom/kikin/Range;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/kikin/Range;->getStartOffset()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v6}, Lcom/kikin/Range;->getEndOffset()I

    move-result v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 869
    new-instance v0, Lcom/kikin/Range;

    invoke-virtual {v6}, Lcom/kikin/Range;->getSelectionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/kikin/Range;->getSelectionLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/kikin/Range;->getValue()Ljava/lang/String;

    move-result-object v5

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/kikin/Range;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    .end local v6    # "range":Lcom/kikin/Range;
    .local v0, "range":Lcom/kikin/Range;
    :goto_1
    invoke-virtual {v0, v7}, Lcom/kikin/Range;->setTouchedWord(Ljava/lang/String;)V

    goto :goto_0

    .line 873
    .end local v0    # "range":Lcom/kikin/Range;
    .restart local v6    # "range":Lcom/kikin/Range;
    :cond_2
    new-instance v0, Lcom/kikin/Range;

    const-string v3, "text"

    const-string v4, ""

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/kikin/Range;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v6    # "range":Lcom/kikin/Range;
    .restart local v0    # "range":Lcom/kikin/Range;
    goto :goto_1
.end method

.method private disallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "disallow"    # Z

    .prologue
    .line 6709
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 6710
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 6711
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 6713
    :cond_0
    return-void
.end method

.method private dismissSoftKeyboard()Z
    .locals 3

    .prologue
    .line 1815
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1816
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v1

    return v1
.end method

.method private doKikinSearch(Lcom/kikin/selection/Selection;)V
    .locals 5
    .param p1, "selection"    # Lcom/kikin/selection/Selection;

    .prologue
    .line 1012
    if-eqz p1, :cond_0

    .line 1014
    iget-object v2, p0, Landroid/widget/Editor;->mCurrentSelection:Lcom/kikin/selection/Selection;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor;->mCurrentSelection:Lcom/kikin/selection/Selection;

    invoke-virtual {v2, p1}, Lcom/kikin/selection/Selection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1061
    :cond_0
    :goto_0
    return-void

    .line 1015
    :cond_1
    iput-object p1, p0, Landroid/widget/Editor;->mCurrentSelection:Lcom/kikin/selection/Selection;

    .line 1018
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectedText()Ljava/lang/String;

    move-result-object v1

    .line 1019
    .local v1, "selectedText":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1020
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/Editor;->updateSelectionInCAB(Ljava/lang/String;)V

    .line 1025
    :cond_2
    iget-object v2, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    if-nez v2, :cond_3

    .line 1027
    :try_start_0
    new-instance v2, Lcom/kikin/KikinResultsViewController;

    invoke-direct {v2, p0}, Lcom/kikin/KikinResultsViewController;-><init>(Lcom/kikin/interfaces/KikinCallbackHandler;)V

    iput-object v2, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;
    :try_end_0
    .catch Lcom/kikin/exception/KikinCallbackHandlerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    :cond_3
    iget-object v2, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v2, p1}, Lcom/kikin/KikinResultsViewController;->doKikinSearch(Lcom/kikin/selection/Selection;)V

    .line 1038
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v2}, Lcom/kikin/KikinResultsViewController;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1040
    iget-object v2, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v2}, Lcom/kikin/KikinResultsViewController;->playKikinSound()V

    .line 1043
    invoke-direct {p0}, Landroid/widget/Editor;->makeSelectionVisible()V

    goto :goto_0

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    .local v0, "e":Lcom/kikin/exception/KikinCallbackHandlerException;
    const-string v2, "Editor"

    const-string v3, "Unable to create kikin results view controller"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1044
    .end local v0    # "e":Lcom/kikin/exception/KikinCallbackHandlerException;
    :cond_4
    iget-object v2, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v2}, Lcom/kikin/KikinResultsViewController;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 1057
    iget-object v3, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x96

    if-le v2, v4, :cond_5

    sget-object v2, Lcom/kikin/KikinBarState;->FULL_CLOSE:Lcom/kikin/KikinBarState;

    :goto_1
    invoke-direct {p0, v3, v2}, Landroid/widget/Editor;->showKikinResultsViewController(Landroid/view/ActionMode;Lcom/kikin/KikinBarState;)V

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/kikin/KikinBarState;->HALF_OPEN:Lcom/kikin/KikinBarState;

    goto :goto_1
.end method

.method private downgradeEasyCorrectionSpans()V
    .locals 8

    .prologue
    .line 1945
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1946
    .local v4, "text":Ljava/lang/CharSequence;
    instance-of v5, v4, Landroid/text/Spannable;

    if-eqz v5, :cond_1

    move-object v2, v4

    .line 1947
    check-cast v2, Landroid/text/Spannable;

    .line 1948
    .local v2, "spannable":Landroid/text/Spannable;
    const/4 v5, 0x0

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v5, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/SuggestionSpan;

    .line 1950
    .local v3, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 1951
    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    .line 1952
    .local v0, "flags":I
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    and-int/lit8 v5, v0, 0x2

    if-nez v5, :cond_0

    .line 1954
    and-int/lit8 v0, v0, -0x2

    .line 1955
    aget-object v5, v3, v1

    invoke-virtual {v5, v0}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 1950
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1959
    .end local v0    # "flags":I
    .end local v1    # "i":I
    .end local v2    # "spannable":Landroid/text/Spannable;
    .end local v3    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    :cond_1
    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cursorOffsetVertical"    # I

    .prologue
    const/4 v3, 0x0

    .line 2514
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    .line 2515
    .local v1, "translate":Z
    :goto_0
    if-eqz v1, :cond_0

    int-to-float v2, p2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2516
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ge v0, v2, :cond_2

    .line 2517
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2516
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2514
    .end local v0    # "i":I
    .end local v1    # "translate":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2519
    .restart local v0    # "i":I
    .restart local v1    # "translate":Z
    :cond_2
    if-eqz v1, :cond_3

    neg-int v2, p2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2520
    :cond_3
    return-void
.end method

.method private drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 35
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p3, "highlight"    # Landroid/graphics/Path;
    .param p4, "highlightPaint"    # Landroid/graphics/Paint;
    .param p5, "cursorOffsetVertical"    # I

    .prologue
    .line 2394
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v27

    .line 2395
    .local v27, "lineRange":J
    invoke-static/range {v27 .. v28}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v9

    .line 2396
    .local v9, "firstLine":I
    invoke-static/range {v27 .. v28}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v10

    .line 2397
    .local v10, "lastLine":I
    if-gez v10, :cond_0

    .line 2488
    :goto_0
    return-void

    :cond_0
    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    .line 2399
    invoke-virtual/range {v4 .. v10}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 2402
    move-object/from16 v0, p2

    instance-of v4, v0, Landroid/text/DynamicLayout;

    if-eqz v4, :cond_d

    .line 2403
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    if-nez v4, :cond_1

    .line 2404
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealObjectArraySize(I)I

    move-result v4

    new-array v4, v4, [Landroid/view/DisplayList;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    :cond_1
    move-object/from16 v20, p2

    .line 2407
    check-cast v20, Landroid/text/DynamicLayout;

    .line 2408
    .local v20, "dynamicLayout":Landroid/text/DynamicLayout;
    invoke-virtual/range {v20 .. v20}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v15

    .line 2409
    .local v15, "blockEndLines":[I
    invoke-virtual/range {v20 .. v20}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v17

    .line 2410
    .local v17, "blockIndices":[I
    invoke-virtual/range {v20 .. v20}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v31

    .line 2411
    .local v31, "numberOfBlocks":I
    invoke-virtual/range {v20 .. v20}, Landroid/text/DynamicLayout;->getIndexFirstChangedBlock()I

    move-result v24

    .line 2413
    .local v24, "indexFirstChangedBlock":I
    const/16 v21, -0x1

    .line 2414
    .local v21, "endOfPreviousBlock":I
    const/16 v33, 0x0

    .line 2415
    .local v33, "searchStartIndex":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v31

    if-ge v0, v1, :cond_c

    .line 2416
    aget v14, v15, v23

    .line 2417
    .local v14, "blockEndLine":I
    aget v16, v17, v23

    .line 2419
    .local v16, "blockIndex":I
    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_5

    const/16 v18, 0x1

    .line 2420
    .local v18, "blockIsInvalid":Z
    :goto_2
    if-eqz v18, :cond_2

    .line 2421
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v31

    move/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor;->getAvailableDisplayListIndex([III)I

    move-result v16

    .line 2424
    aput v16, v17, v23

    .line 2425
    add-int/lit8 v33, v16, 0x1

    .line 2428
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    aget-object v12, v4, v16

    .line 2429
    .local v12, "blockDisplayList":Landroid/view/DisplayList;
    if-nez v12, :cond_6

    .line 2430
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHardwareRenderer()Landroid/view/HardwareRenderer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Text "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/HardwareRenderer;->createDisplayList(Ljava/lang/String;)Landroid/view/DisplayList;

    move-result-object v12

    .end local v12    # "blockDisplayList":Landroid/view/DisplayList;
    aput-object v12, v4, v16

    .line 2436
    .restart local v12    # "blockDisplayList":Landroid/view/DisplayList;
    :cond_3
    :goto_3
    invoke-virtual {v12}, Landroid/view/DisplayList;->isValid()Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v13, 0x1

    .line 2437
    .local v13, "blockDisplayListIsInvalid":Z
    :goto_4
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    if-eqz v13, :cond_b

    .line 2438
    :cond_4
    add-int/lit8 v11, v21, 0x1

    .line 2439
    .local v11, "blockBeginLine":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v34

    .line 2440
    .local v34, "top":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v19

    .line 2441
    .local v19, "bottom":I
    const/16 v25, 0x0

    .line 2442
    .local v25, "left":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v32

    .line 2443
    .local v32, "right":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2444
    const v30, 0x7f7fffff    # Float.MAX_VALUE

    .line 2445
    .local v30, "min":F
    const/16 v29, 0x1

    .line 2446
    .local v29, "max":F
    move/from16 v26, v11

    .local v26, "line":I
    :goto_5
    move/from16 v0, v26

    if-gt v0, v14, :cond_8

    .line 2447
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    move/from16 v0, v30

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v30

    .line 2448
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    move/from16 v0, v29

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v29

    .line 2446
    add-int/lit8 v26, v26, 0x1

    goto :goto_5

    .line 2419
    .end local v11    # "blockBeginLine":I
    .end local v12    # "blockDisplayList":Landroid/view/DisplayList;
    .end local v13    # "blockDisplayListIsInvalid":Z
    .end local v18    # "blockIsInvalid":Z
    .end local v19    # "bottom":I
    .end local v25    # "left":I
    .end local v26    # "line":I
    .end local v29    # "max":F
    .end local v30    # "min":F
    .end local v32    # "right":I
    .end local v34    # "top":I
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 2433
    .restart local v12    # "blockDisplayList":Landroid/view/DisplayList;
    .restart local v18    # "blockIsInvalid":Z
    :cond_6
    if-eqz v18, :cond_3

    invoke-virtual {v12}, Landroid/view/DisplayList;->clear()V

    goto :goto_3

    .line 2436
    :cond_7
    const/4 v13, 0x0

    goto :goto_4

    .line 2450
    .restart local v11    # "blockBeginLine":I
    .restart local v13    # "blockDisplayListIsInvalid":Z
    .restart local v19    # "bottom":I
    .restart local v25    # "left":I
    .restart local v26    # "line":I
    .restart local v29    # "max":F
    .restart local v30    # "min":F
    .restart local v32    # "right":I
    .restart local v34    # "top":I
    :cond_8
    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v25, v0

    .line 2451
    const/high16 v4, 0x3f000000    # 0.5f

    add-float v4, v4, v29

    float-to-int v0, v4

    move/from16 v32, v0

    .line 2455
    .end local v26    # "line":I
    .end local v29    # "max":F
    .end local v30    # "min":F
    :cond_9
    if-eqz v13, :cond_a

    .line 2456
    sub-int v4, v32, v25

    sub-int v5, v19, v34

    invoke-virtual {v12, v4, v5}, Landroid/view/DisplayList;->start(II)Landroid/view/HardwareCanvas;

    move-result-object v22

    .line 2461
    .local v22, "hardwareCanvas":Landroid/view/HardwareCanvas;
    move/from16 v0, v25

    neg-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v34

    neg-int v5, v0

    int-to-float v5, v5

    :try_start_0
    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 2462
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11, v14}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2466
    invoke-virtual {v12}, Landroid/view/DisplayList;->end()V

    .line 2468
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/view/DisplayList;->setClipToBounds(Z)V

    .line 2474
    .end local v22    # "hardwareCanvas":Landroid/view/HardwareCanvas;
    :cond_a
    move/from16 v0, v25

    move/from16 v1, v34

    move/from16 v2, v32

    move/from16 v3, v19

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    .end local v11    # "blockBeginLine":I
    .end local v19    # "bottom":I
    .end local v25    # "left":I
    .end local v32    # "right":I
    .end local v34    # "top":I
    :cond_b
    move-object/from16 v4, p1

    .line 2477
    check-cast v4, Landroid/view/HardwareCanvas;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v12, v5, v6}, Landroid/view/HardwareCanvas;->drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I

    .line 2480
    move/from16 v21, v14

    .line 2415
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .line 2466
    .restart local v11    # "blockBeginLine":I
    .restart local v19    # "bottom":I
    .restart local v22    # "hardwareCanvas":Landroid/view/HardwareCanvas;
    .restart local v25    # "left":I
    .restart local v32    # "right":I
    .restart local v34    # "top":I
    :catchall_0
    move-exception v4

    invoke-virtual {v12}, Landroid/view/DisplayList;->end()V

    .line 2468
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroid/view/DisplayList;->setClipToBounds(Z)V

    .line 2466
    throw v4

    .line 2483
    .end local v11    # "blockBeginLine":I
    .end local v12    # "blockDisplayList":Landroid/view/DisplayList;
    .end local v13    # "blockDisplayListIsInvalid":Z
    .end local v14    # "blockEndLine":I
    .end local v16    # "blockIndex":I
    .end local v18    # "blockIsInvalid":Z
    .end local v19    # "bottom":I
    .end local v22    # "hardwareCanvas":Landroid/view/HardwareCanvas;
    .end local v25    # "left":I
    .end local v32    # "right":I
    .end local v34    # "top":I
    :cond_c
    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->setIndexFirstChangedBlock(I)V

    goto/16 :goto_0

    .line 2486
    .end local v15    # "blockEndLines":[I
    .end local v17    # "blockIndices":[I
    .end local v20    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v21    # "endOfPreviousBlock":I
    .end local v23    # "i":I
    .end local v24    # "indexFirstChangedBlock":I
    .end local v31    # "numberOfBlocks":I
    .end local v33    # "searchStartIndex":I
    :cond_d
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v10}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    goto/16 :goto_0
.end method

.method private extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .locals 8
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "partialStartOffset"    # I
    .param p3, "partialEndOffset"    # I
    .param p4, "delta"    # I
    .param p5, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    const/4 v6, 0x0

    .line 2199
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2200
    .local v1, "content":Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    .line 2201
    const/4 v7, -0x2

    if-eq p2, v7, :cond_c

    .line 2202
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2203
    .local v0, "N":I
    if-gez p2, :cond_4

    .line 2204
    const/4 v7, -0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 2205
    const/4 p2, 0x0

    .line 2206
    move p3, v0

    .line 2239
    :cond_0
    :goto_0
    iget v7, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_b

    .line 2240
    invoke-interface {v1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 2251
    .end local v0    # "N":I
    :goto_1
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 2252
    const/16 v7, 0x800

    invoke-static {v1, v7}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v7

    if-eqz v7, :cond_1

    .line 2253
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 2255
    :cond_1
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2256
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 2258
    :cond_2
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 2259
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 2260
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 2261
    const/4 v6, 0x1

    .line 2263
    :cond_3
    return v6

    .line 2210
    .restart local v0    # "N":I
    :cond_4
    add-int/2addr p3, p4

    .line 2212
    instance-of v7, v1, Landroid/text/Spanned;

    if-eqz v7, :cond_7

    move-object v4, v1

    .line 2213
    check-cast v4, Landroid/text/Spanned;

    .line 2214
    .local v4, "spanned":Landroid/text/Spanned;
    const-class v7, Landroid/text/ParcelableSpan;

    invoke-interface {v4, p2, p3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 2216
    .local v5, "spans":[Ljava/lang/Object;
    array-length v2, v5

    .line 2217
    .local v2, "i":I
    :cond_5
    :goto_2
    if-lez v2, :cond_7

    .line 2218
    add-int/lit8 v2, v2, -0x1

    .line 2219
    aget-object v7, v5, v2

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 2220
    .local v3, "j":I
    if-ge v3, p2, :cond_6

    move p2, v3

    .line 2221
    :cond_6
    aget-object v7, v5, v2

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 2222
    if-le v3, p3, :cond_5

    move p3, v3

    goto :goto_2

    .line 2225
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "spans":[Ljava/lang/Object;
    :cond_7
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 2226
    sub-int v7, p3, p4

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 2228
    if-le p2, v0, :cond_9

    .line 2229
    move p2, v0

    .line 2233
    :cond_8
    :goto_3
    if-le p3, v0, :cond_a

    .line 2234
    move p3, v0

    goto :goto_0

    .line 2230
    :cond_9
    if-gez p2, :cond_8

    .line 2231
    const/4 p2, 0x0

    goto :goto_3

    .line 2235
    :cond_a
    if-gez p3, :cond_0

    .line 2236
    const/4 p3, 0x0

    goto :goto_0

    .line 2243
    :cond_b
    invoke-static {v1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1

    .line 2247
    .end local v0    # "N":I
    :cond_c
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 2248
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 2249
    const-string v7, ""

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method private extractedTextModeWillBeStarted()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2685
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v2, v2, Landroid/view/inputmethod/ExtractEditText;

    if-nez v2, :cond_0

    .line 2686
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2687
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 2689
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v1
.end method

.method private static findNearestNonwhiteOffset(Landroid/text/Spannable;I)I
    .locals 8
    .param p0, "sp"    # Landroid/text/Spannable;
    .param p1, "offset"    # I

    .prologue
    const/4 v4, -0x1

    .line 6946
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v5

    if-ge v5, p1, :cond_2

    :cond_0
    move v2, v4

    .line 6987
    :cond_1
    :goto_0
    return v2

    .line 6949
    :cond_2
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v5

    if-le p1, v5, :cond_3

    .line 6950
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result p1

    .line 6952
    :cond_3
    const/4 v2, -0x1

    .line 6953
    .local v2, "left":I
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    .line 6957
    .local v3, "right":I
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_1
    if-le v1, v4, :cond_4

    .line 6958
    :try_start_0
    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_6

    .line 6959
    move v2, v1

    .line 6964
    :cond_4
    move v1, p1

    :goto_2
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 6965
    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_7

    .line 6966
    move v3, v1

    .line 6975
    :cond_5
    :goto_3
    if-ne v2, v4, :cond_8

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v5

    if-ne v3, v5, :cond_8

    .line 6976
    const/4 v2, 0x0

    goto :goto_0

    .line 6957
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 6964
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6971
    :catch_0
    move-exception v0

    .line 6972
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v5, "HtcTextSelection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "offset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", in findNearestNonwhiteOffset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 6978
    .end local v0    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_8
    if-eq v2, v4, :cond_9

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v5

    if-eq v3, v5, :cond_1

    .line 6981
    :cond_9
    if-ne v2, v4, :cond_a

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-eq v3, v4, :cond_a

    move v2, v3

    .line 6982
    goto :goto_0

    .line 6984
    :cond_a
    sub-int v4, p1, v2

    sub-int v5, v3, p1

    if-le v4, v5, :cond_1

    move v2, v3

    .line 6985
    goto/16 :goto_0
.end method

.method public static findWordEnd(Ljava/lang/CharSequence;I)I
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .prologue
    const/16 v5, 0x27

    .line 6901
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge p1, v4, :cond_0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    :cond_0
    move v4, p1

    .line 6941
    :goto_0
    return v4

    .line 6904
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    .line 6905
    .local v3, "ub":Ljava/lang/Character$UnicodeBlock;
    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 6922
    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_3

    .line 6923
    add-int/lit8 v4, p1, 0x1

    goto :goto_0

    .line 6926
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 6928
    .local v1, "len":I
    :goto_1
    if-ge p1, v1, :cond_4

    .line 6929
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 6930
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v2

    .line 6932
    .local v2, "type":I
    if-eq v0, v5, :cond_5

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5

    const/4 v4, 0x3

    if-eq v2, v4, :cond_5

    const/4 v4, 0x4

    if-eq v2, v4, :cond_5

    const/16 v4, 0x9

    if-eq v2, v4, :cond_5

    .line 6941
    .end local v0    # "c":C
    .end local v2    # "type":I
    :cond_4
    if-gez p1, :cond_6

    const/4 v4, 0x0

    goto :goto_0

    .line 6928
    .restart local v0    # "c":C
    .restart local v2    # "type":I
    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .end local v0    # "c":C
    .end local v2    # "type":I
    :cond_6
    move v4, p1

    .line 6941
    goto :goto_0
.end method

.method public static findWordStart(Ljava/lang/CharSequence;I)I
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .prologue
    const/16 v5, 0x27

    .line 6854
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge p1, v4, :cond_0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    :cond_0
    move v1, p1

    .line 6892
    .end local p1    # "offset":I
    .local v1, "offset":I
    :goto_0
    return v1

    .line 6857
    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    .line 6858
    .local v3, "ub":Ljava/lang/Character$UnicodeBlock;
    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_4

    .line 6875
    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_4

    move v1, p1

    .line 6876
    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_0

    .line 6879
    .end local v1    # "offset":I
    .local v0, "c":C
    .local v2, "type":I
    .restart local p1    # "offset":I
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .end local v0    # "c":C
    .end local v2    # "type":I
    :cond_4
    if-lez p1, :cond_5

    .line 6880
    add-int/lit8 v4, p1, -0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 6881
    .restart local v0    # "c":C
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v2

    .line 6883
    .restart local v2    # "type":I
    if-eq v0, v5, :cond_3

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    const/16 v4, 0x9

    if-eq v2, v4, :cond_3

    .end local v0    # "c":C
    .end local v2    # "type":I
    :cond_5
    move v1, p1

    .line 6892
    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_0
.end method

.method private getAvailableDisplayListIndex([III)I
    .locals 8
    .param p1, "blockIndices"    # [I
    .param p2, "numberOfBlocks"    # I
    .param p3, "searchStartIndex"    # I

    .prologue
    const/4 v7, 0x0

    .line 2492
    iget-object v6, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    array-length v4, v6

    .line 2493
    .local v4, "length":I
    move v2, p3

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 2494
    const/4 v0, 0x0

    .line 2495
    .local v0, "blockIndexFound":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, p2, :cond_0

    .line 2496
    aget v6, p1, v3

    if-ne v6, v2, :cond_1

    .line 2497
    const/4 v0, 0x1

    .line 2501
    :cond_0
    if-eqz v0, :cond_3

    .line 2493
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2495
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2506
    .end local v0    # "blockIndexFound":Z
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v6, v4, 0x1

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    .line 2507
    .local v5, "newSize":I
    new-array v1, v5, [Landroid/view/DisplayList;

    .line 2508
    .local v1, "displayLists":[Landroid/view/DisplayList;
    iget-object v6, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    invoke-static {v6, v7, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2509
    iput-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    move v2, v4

    .line 2510
    .end local v1    # "displayLists":[Landroid/view/DisplayList;
    .end local v2    # "i":I
    .end local v5    # "newSize":I
    :cond_3
    return v2
.end method

.method private getCharRange(I)J
    .locals 7
    .param p1, "offset"    # I

    .prologue
    .line 1540
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 1541
    .local v4, "textLength":I
    add-int/lit8 v5, p1, 0x1

    if-ge v5, v4, :cond_0

    .line 1542
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1543
    .local v0, "currentChar":C
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1544
    .local v1, "nextChar":C
    invoke-static {v0, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1545
    add-int/lit8 v5, p1, 0x2

    invoke-static {p1, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    .line 1561
    .end local v0    # "currentChar":C
    .end local v1    # "nextChar":C
    :goto_0
    return-wide v5

    .line 1548
    :cond_0
    if-ge p1, v4, :cond_1

    .line 1549
    add-int/lit8 v5, p1, 0x1

    invoke-static {p1, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0

    .line 1551
    :cond_1
    add-int/lit8 v5, p1, -0x2

    if-ltz v5, :cond_2

    .line 1552
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, p1, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1553
    .local v2, "previousChar":C
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, p1, -0x2

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1554
    .local v3, "previousPreviousChar":C
    invoke-static {v3, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1555
    add-int/lit8 v5, p1, -0x2

    invoke-static {v5, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0

    .line 1558
    .end local v2    # "previousChar":C
    .end local v3    # "previousPreviousChar":C
    :cond_2
    add-int/lit8 v5, p1, -0x1

    if-ltz v5, :cond_3

    .line 1559
    add-int/lit8 v5, p1, -0x1

    invoke-static {v5, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0

    .line 1561
    :cond_3
    invoke-static {p1, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0
.end method

.method private getDirection(F)I
    .locals 2
    .param p1, "rawX"    # F

    .prologue
    .line 4372
    iget v0, p0, Landroid/widget/Editor;->mCurrentDirection:I

    iput v0, p0, Landroid/widget/Editor;->mPreDirection:I

    .line 4373
    iget v0, p0, Landroid/widget/Editor;->mPreviousX:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_3

    .line 4374
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/Editor;->mCurrentDirection:I

    .line 4378
    :cond_0
    :goto_0
    iget v0, p0, Landroid/widget/Editor;->mCurrentDirection:I

    iget v1, p0, Landroid/widget/Editor;->mPreDirection:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/widget/Editor;->mChangeTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Editor;->mChangeTimes:I

    .line 4380
    :cond_1
    iget v0, p0, Landroid/widget/Editor;->mChangeTimes:I

    if-nez v0, :cond_4

    .line 4381
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mDonotPassToLeft:Z

    .line 4386
    :cond_2
    :goto_1
    iget v0, p0, Landroid/widget/Editor;->mCurrentDirection:I

    return v0

    .line 4375
    :cond_3
    iget v0, p0, Landroid/widget/Editor;->mPreviousX:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    .line 4376
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/Editor;->mCurrentDirection:I

    goto :goto_0

    .line 4382
    :cond_4
    iget v0, p0, Landroid/widget/Editor;->mChangeTimes:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 4383
    iget v0, p0, Landroid/widget/Editor;->mCurrentDirection:I

    iput v0, p0, Landroid/widget/Editor;->mFirstDirection:I

    goto :goto_1
.end method

.method private getErrorX()I
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x41c80000    # 25.0f

    const/high16 v7, 0x3f000000    # 0.5f

    .line 454
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->density:F

    .line 456
    .local v4, "scale":F
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v6, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 458
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v2

    .line 461
    .local v2, "layoutDirection":I
    packed-switch v2, :pswitch_data_0

    .line 464
    if-eqz v0, :cond_0

    iget v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :cond_0
    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    mul-float v6, v8, v4

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int v3, v5, v6

    .line 465
    .local v3, "offset":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v6}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    add-int v1, v5, v3

    .line 473
    .local v1, "errorX":I
    :goto_0
    return v1

    .line 469
    .end local v1    # "errorX":I
    .end local v3    # "offset":I
    :pswitch_0
    if-eqz v0, :cond_1

    iget v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    :cond_1
    div-int/lit8 v5, v5, 0x2

    mul-float v6, v8, v4

    add-float/2addr v6, v7

    float-to-int v6, v6

    sub-int v3, v5, v6

    .line 470
    .restart local v3    # "offset":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v5

    add-int v1, v5, v3

    .restart local v1    # "errorX":I
    goto :goto_0

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getErrorY()I
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 485
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    .line 486
    .local v0, "compoundPaddingTop":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getBottom()I

    move-result v7

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v6, v7, v0

    .line 489
    .local v6, "vspace":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, v7, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 491
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v4

    .line 493
    .local v4, "layoutDirection":I
    packed-switch v4, :pswitch_data_0

    .line 496
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 503
    .local v2, "height":I
    :cond_0
    :goto_0
    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    add-int v3, v0, v7

    .line 509
    .local v3, "icontop":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v5, v7, Landroid/util/DisplayMetrics;->density:F

    .line 510
    .local v5, "scale":F
    add-int v7, v3, v2

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v5

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v7, v8

    return v7

    .line 499
    .end local v2    # "height":I
    .end local v3    # "icontop":I
    .end local v5    # "scale":F
    :pswitch_0
    if-eqz v1, :cond_1

    iget v2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .restart local v2    # "height":I
    :cond_1
    goto :goto_0

    .line 493
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getLastTapPosition()I
    .locals 2

    .prologue
    .line 1972
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_1

    .line 1973
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v0

    .line 1974
    .local v0, "lastTapPosition":I
    if-ltz v0, :cond_1

    .line 1976
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1977
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1983
    .end local v0    # "lastTapPosition":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getLastTouchOffsets()J
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1819
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1820
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    .line 1821
    .local v2, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 1822
    .local v1, "minOffset":I
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 1823
    .local v0, "maxOffset":I
    invoke-static {v1, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v3

    .line 1825
    .end local v0    # "maxOffset":I
    .end local v1    # "minOffset":I
    .end local v2    # "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    :goto_0
    return-wide v3

    :cond_0
    invoke-static {v4, v4}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v3

    goto :goto_0
.end method

.method private getPositionListener()Landroid/widget/Editor$PositionListener;
    .locals 2

    .prologue
    .line 1587
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-nez v0, :cond_0

    .line 1588
    new-instance v0, Landroid/widget/Editor$PositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    .line 1590
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    return-object v0
.end method

.method private getPrimaryHorizontal(Landroid/text/Layout;Landroid/text/Layout;IZ)F
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "hintLayout"    # Landroid/text/Layout;
    .param p3, "offset"    # I
    .param p4, "clamped"    # Z

    .prologue
    .line 2595
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2598
    invoke-virtual {p2, p3, p4}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v0

    .line 2600
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p3, p4}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v0

    goto :goto_0
.end method

.method private getSelectedText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 829
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 830
    .local v1, "selectionStart":I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 831
    .local v0, "selectionEnd":I
    if-ltz v1, :cond_0

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    .line 833
    .local v2, "selectionValid":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 835
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 838
    :goto_1
    return-object v3

    .line 831
    .end local v2    # "selectionValid":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 838
    .restart local v2    # "selectionValid":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getSelectionExtract(Lcom/kikin/selection/Selection$Mode;)Lcom/kikin/selection/Selection;
    .locals 9
    .param p1, "selectionMode"    # Lcom/kikin/selection/Selection$Mode;

    .prologue
    .line 896
    iget-object v5, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    if-nez v5, :cond_0

    const/4 v0, 0x0

    .line 909
    :goto_0
    return-object v0

    .line 899
    :cond_0
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    invoke-virtual {v6}, Lcom/kikin/Range;->getStartOffset()I

    move-result v6

    iget-object v7, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    invoke-virtual {v7}, Lcom/kikin/Range;->getEndOffset()I

    move-result v7

    invoke-interface {v5, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 900
    .local v2, "selectedText":Ljava/lang/String;
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 901
    .local v1, "content":Ljava/lang/String;
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    invoke-virtual {v6}, Lcom/kikin/Range;->getStartOffset()I

    move-result v6

    add-int/lit8 v6, v6, -0x32

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v7, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    invoke-virtual {v7}, Lcom/kikin/Range;->getStartOffset()I

    move-result v7

    invoke-interface {v5, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 902
    .local v3, "preText":Ljava/lang/String;
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    invoke-virtual {v6}, Lcom/kikin/Range;->getEndOffset()I

    move-result v6

    iget-object v7, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    invoke-virtual {v7}, Lcom/kikin/Range;->getEndOffset()I

    move-result v7

    add-int/lit8 v7, v7, 0x32

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-interface {v5, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 905
    .local v4, "postText":Ljava/lang/String;
    new-instance v0, Lcom/kikin/selection/Selection;

    iget-object v5, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    invoke-virtual {v5}, Lcom/kikin/Range;->getSelectionType()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    invoke-virtual {v6}, Lcom/kikin/Range;->getSelectionLanguage()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    invoke-virtual {v7}, Lcom/kikin/Range;->getTouchedWord()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    invoke-virtual {v8}, Lcom/kikin/Range;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/kikin/selection/Selection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    .local v0, "selection":Lcom/kikin/selection/Selection;
    invoke-virtual {v0, p1}, Lcom/kikin/selection/Selection;->setMode(Lcom/kikin/selection/Selection$Mode;)V

    goto/16 :goto_0
.end method

.method private getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 2983
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10900a9

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2986
    .local v0, "shadowView":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 2987
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to inflate text drag thumbnail"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2990
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sget v3, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    if-le v2, v3, :cond_1

    .line 2991
    sget v2, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    invoke-interface {p1, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2993
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2994
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2996
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2997
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2999
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3002
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3003
    .local v1, "size":I
    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 3005
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 3006
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 3007
    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object v2
.end method

.method private hasCustomSelectionActionModeCallback()Z
    .locals 2

    .prologue
    .line 4344
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4345
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->htcApp:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasPasswordTransformationMethod()Z
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method private hasSelectAll()Z
    .locals 3

    .prologue
    .line 1263
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 1264
    .local v1, "selectionStart":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1265
    .local v0, "selectionEnd":I
    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private hideCursorControllers()V
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowingUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    .line 599
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 600
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 601
    return-void
.end method

.method private hideError()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    .line 442
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 443
    return-void
.end method

.method private hideInsertionPointCursorController()V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    .line 569
    :cond_0
    return-void
.end method

.method private hideKikinResultsViewController()V
    .locals 2

    .prologue
    .line 963
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 964
    iget-object v0, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kikin/KikinResultsViewController;->hide(Z)Z

    .line 965
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mLosingFocusDueToKikinPopup:Z

    .line 967
    :cond_0
    return-void
.end method

.method private hideSelectionHandles()V
    .locals 1

    .prologue
    .line 1096
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    .line 1097
    .local v0, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    if-eqz v0, :cond_0

    .line 1098
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 1100
    :cond_0
    return-void
.end method

.method private hideSelectionModifierCursorController()V
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 576
    :cond_0
    return-void
.end method

.method private hideSpanControllers()V
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    invoke-virtual {v0}, Landroid/widget/Editor$SpanController;->hide()V

    .line 592
    :cond_0
    return-void
.end method

.method private isCursorInsideEasyCorrectionSpan()Z
    .locals 6

    .prologue
    .line 2709
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 2710
    .local v1, "spannable":Landroid/text/Spannable;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 2712
    .local v2, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 2713
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 2714
    const/4 v3, 0x1

    .line 2717
    :goto_1
    return v3

    .line 2712
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2717
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isCursorInsideSuggestionSpan()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2696
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2697
    .local v1, "text":Ljava/lang/CharSequence;
    instance-of v3, v1, Landroid/text/Spannable;

    if-nez v3, :cond_1

    .line 2701
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return v2

    .line 2699
    .restart local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    check-cast v1, Landroid/text/Spannable;

    .end local v1    # "text":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SuggestionSpan;

    .line 2701
    .local v0, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v3, v0

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isOffsetVisible(I)Z
    .locals 6
    .param p1, "offset"    # I

    .prologue
    .line 1639
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1641
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    const/4 v4, 0x0

    .line 1646
    :goto_0
    return v4

    .line 1643
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 1644
    .local v1, "line":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 1645
    .local v2, "lineBottom":I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v3, v4

    .line 1646
    .local v3, "primaryHorizontal":I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {p0, v4, v5}, Landroid/widget/Editor;->isPositionVisible(II)Z

    move-result v4

    goto :goto_0
.end method

.method private isPositionOnText(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 1654
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1655
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 1662
    :cond_0
    :goto_0
    return v2

    .line 1657
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v1

    .line 1658
    .local v1, "line":I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p1

    .line 1660
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_0

    .line 1661
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    cmpl-float v3, p1, v3

    if-gtz v3, :cond_0

    .line 1662
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isPositionVisible(II)Z
    .locals 11
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1599
    sget-object v6, Landroid/widget/Editor;->TEMP_POSITION:[F

    monitor-enter v6

    .line 1600
    :try_start_0
    sget-object v2, Landroid/widget/Editor;->TEMP_POSITION:[F

    .line 1601
    .local v2, "position":[F
    const/4 v7, 0x0

    int-to-float v8, p1

    aput v8, v2, v7

    .line 1602
    const/4 v7, 0x1

    int-to-float v8, p2

    aput v8, v2, v7

    .line 1603
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1605
    .local v3, "view":Landroid/view/View;
    :goto_0
    if-eqz v3, :cond_5

    .line 1606
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-eq v3, v7, :cond_0

    .line 1608
    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    .line 1609
    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    .line 1612
    :cond_0
    const/4 v7, 0x0

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_1

    const/4 v7, 0x1

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_1

    const/4 v7, 0x0

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_1

    const/4 v7, 0x1

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 1614
    :cond_1
    monitor-exit v6

    .line 1635
    :goto_1
    return v4

    .line 1617
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1618
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1621
    :cond_3
    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 1622
    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 1624
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1625
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v7, v1, Landroid/view/View;

    if-eqz v7, :cond_4

    .line 1626
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    goto :goto_0

    .line 1629
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 1632
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_5
    monitor-exit v6

    move v4, v5

    .line 1635
    goto :goto_1

    .line 1632
    .end local v2    # "position":[F
    .end local v3    # "view":Landroid/view/View;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private isTextSelected()Z
    .locals 3

    .prologue
    .line 847
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 848
    .local v1, "selectionStart":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 849
    .local v0, "selectionEnd":I
    if-ltz v1, :cond_0

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private makeSelectionVisible()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 1069
    const/4 v7, 0x2

    new-array v2, v7, [I

    .line 1070
    .local v2, "location":[I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 1073
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .line 1074
    .local v6, "selectionStart":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    .line 1076
    .local v5, "selectionEnd":I
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 1077
    .local v3, "path":Landroid/graphics/Path;
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 1078
    .local v0, "bounds":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1080
    .local v4, "rect":Landroid/graphics/Rect;
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 1081
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {v1, v6, v5, v3}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 1082
    invoke-virtual {v3, v0, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1083
    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 1086
    aget v7, v2, v8

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getScrollX()I

    move-result v8

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    aget v8, v2, v8

    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getScrollY()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 1089
    iget-object v7, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v7, v4}, Lcom/kikin/KikinResultsViewController;->setSelectionRect(Landroid/graphics/Rect;)V

    .line 1090
    return-void
.end method

.method private prepareQuickActions()V
    .locals 9

    .prologue
    .line 4349
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/Editor;->mMenuWrapper:Landroid/widget/Editor$MenuWrapper;

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->canCut()Z

    move-result v5

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->canCopy()Z

    move-result v6

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->canPaste()Z

    move-result v7

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v8

    if-nez v8, :cond_0

    iget-boolean v8, p0, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    invoke-virtual/range {v0 .. v8}, Lcom/htc/textselection/HtcTextSelectionManager;->prepareQuickActions(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/content/Context;ZZZZZ)V

    .line 4351
    return-void

    .line 4349
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private refineOffest(I)I
    .locals 8
    .param p1, "offest"    # I

    .prologue
    .line 6576
    move v1, p1

    .line 6577
    .local v1, "newOffest":I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6578
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 6579
    .local v0, "len":I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 6580
    .local v3, "tp":Landroid/text/TextPaint;
    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 6581
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6583
    :cond_0
    if-eq v1, p1, :cond_1

    const-string v4, "Editor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offset refine, new="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", old="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6585
    :cond_1
    return v1
.end method

.method private removeMagnifier()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 161
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 169
    :goto_0
    return v1

    .line 163
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_magnifier_setting"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 165
    .local v0, "enableMagnifier":I
    if-nez v0, :cond_2

    .line 166
    sput-boolean v4, Landroid/widget/Editor;->mRemoveMagnifier:Z

    .line 169
    :cond_1
    :goto_1
    sget-boolean v1, Landroid/widget/Editor;->mRemoveMagnifier:Z

    goto :goto_0

    .line 167
    :cond_2
    if-ne v0, v4, :cond_1

    .line 168
    sput-boolean v1, Landroid/widget/Editor;->mRemoveMagnifier:Z

    goto :goto_1
.end method

.method private resumeBlink()V
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 642
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 644
    :cond_0
    return-void
.end method

.method private sendUpdateSelection()V
    .locals 7

    .prologue
    .line 2307
    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    iget v1, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-gtz v1, :cond_1

    .line 2308
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2309
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 2310
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 2311
    .local v2, "selectionStart":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 2312
    .local v3, "selectionEnd":I
    const/4 v4, -0x1

    .line 2313
    .local v4, "candStart":I
    const/4 v5, -0x1

    .line 2314
    .local v5, "candEnd":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    .line 2315
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    .line 2316
    .local v6, "sp":Landroid/text/Spannable;
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 2317
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 2321
    .end local v6    # "sp":Landroid/text/Spannable;
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 2325
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "selectionStart":I
    .end local v3    # "selectionEnd":I
    .end local v4    # "candStart":I
    .end local v5    # "candEnd":I
    :cond_1
    return-void
.end method

.method private setErrorIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 424
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 425
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-nez v0, :cond_0

    .line 426
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/TextView$Drawables;

    .end local v0    # "dr":Landroid/widget/TextView$Drawables;
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v0    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v0, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 428
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView$Drawables;->setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V

    .line 430
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 431
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 432
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 433
    return-void
.end method

.method private shouldBlink()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2922
    invoke-virtual {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2930
    :cond_0
    :goto_0
    return v2

    .line 2924
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 2925
    .local v1, "start":I
    if-ltz v1, :cond_0

    .line 2927
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 2928
    .local v0, "end":I
    if-ltz v0, :cond_0

    .line 2930
    if-ne v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private showError()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    .line 375
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_0

    .line 376
    iput-boolean v8, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 399
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-nez v4, :cond_1

    .line 381
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 382
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x10900b1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 385
    .local v0, "err":Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 386
    .local v2, "scale":F
    new-instance v4, Landroid/widget/Editor$ErrorPopup;

    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v7

    float-to-int v5, v5

    const/high16 v6, 0x42480000    # 50.0f

    mul-float/2addr v6, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/Editor$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    iput-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 387
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->setFocusable(Z)V

    .line 390
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4, v8}, Landroid/widget/Editor$ErrorPopup;->setInputMethodMode(I)V

    .line 393
    .end local v0    # "err":Landroid/widget/TextView;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "scale":F
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 394
    .local v3, "tv":Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v5, v3}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 395
    iget-object v4, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v6

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/Editor$ErrorPopup;->showAsDropDown(Landroid/view/View;II)V

    .line 398
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/Editor$ErrorPopup;->isAboveAnchor()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->fixDirection(Z)V

    goto :goto_0
.end method

.method private showKikinResultsViewController(Landroid/view/ActionMode;Lcom/kikin/KikinBarState;)V
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "openState"    # Lcom/kikin/KikinBarState;

    .prologue
    const/4 v3, 0x1

    .line 941
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 942
    iget-object v1, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    if-nez v1, :cond_0

    .line 944
    :try_start_0
    new-instance v1, Lcom/kikin/KikinResultsViewController;

    invoke-direct {v1, p0}, Lcom/kikin/KikinResultsViewController;-><init>(Lcom/kikin/interfaces/KikinCallbackHandler;)V

    iput-object v1, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;
    :try_end_0
    .catch Lcom/kikin/exception/KikinCallbackHandlerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    :cond_0
    iput-boolean v3, p0, Landroid/widget/Editor;->mLosingFocusDueToKikinPopup:Z

    .line 952
    if-nez p1, :cond_1

    .line 953
    iget-object p1, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    .line 955
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2, v3}, Lcom/kikin/KikinResultsViewController;->show(Landroid/view/ActionMode;ZLcom/kikin/KikinBarState;Z)V

    .line 957
    :cond_2
    :goto_0
    return-void

    .line 945
    :catch_0
    move-exception v0

    .line 946
    .local v0, "e":Lcom/kikin/exception/KikinCallbackHandlerException;
    const-string v1, "Editor"

    const-string v2, "Unable to create kikin results view controller"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private showMagnifyingGlass(II)V
    .locals 2
    .param p1, "rawX"    # I
    .param p2, "rawY"    # I

    .prologue
    .line 817
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/kikin/magnifier/MagnifierManager;->setZoom(F)V

    .line 818
    invoke-virtual {p0}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-static {v0, v1, p1, p2}, Lcom/kikin/magnifier/MagnifierManager;->show(Landroid/view/View;Lcom/kikin/KikinResultsViewController;II)V

    .line 819
    return-void
.end method

.method private showQuickAction()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 6739
    iget-object v9, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    if-nez v9, :cond_0

    .line 6740
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    .line 6742
    :cond_0
    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    .line 6743
    .local v5, "r":Landroid/graphics/Rect;
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 6744
    .local v7, "selStart":I
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    .line 6745
    .local v6, "selEnd":I
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 6747
    .local v2, "mLayout":Landroid/text/Layout;
    if-eqz v2, :cond_4

    if-eq v7, v6, :cond_4

    if-ltz v7, :cond_4

    if-ltz v6, :cond_4

    .line 6749
    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 6750
    .local v8, "startLine":I
    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 6751
    .local v0, "endLine":I
    invoke-virtual {v2, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    iput v9, v5, Landroid/graphics/Rect;->top:I

    .line 6752
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    iput v9, v5, Landroid/graphics/Rect;->bottom:I

    .line 6753
    if-ne v8, v0, :cond_3

    .line 6754
    invoke-virtual {v2, v7}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v5, Landroid/graphics/Rect;->left:I

    .line 6755
    invoke-virtual {v2, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    float-to-int v9, v9

    add-int/lit8 v9, v9, 0x1

    iput v9, v5, Landroid/graphics/Rect;->right:I

    .line 6766
    :cond_1
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    .line 6767
    .local v3, "paddingLeft":I
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v4

    .line 6768
    .local v4, "paddingTop":I
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getGravity()I

    move-result v9

    and-int/lit8 v9, v9, 0x70

    const/16 v10, 0x30

    if-eq v9, v10, :cond_2

    .line 6769
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v9

    add-int/2addr v4, v9

    .line 6771
    :cond_2
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 6776
    .end local v0    # "endLine":I
    .end local v3    # "paddingLeft":I
    .end local v4    # "paddingTop":I
    .end local v8    # "startLine":I
    :goto_0
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v10, p0, Landroid/widget/Editor;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 6777
    iget-object v9, p0, Landroid/widget/Editor;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 6778
    iget-object v9, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_5

    iget-boolean v9, p0, Landroid/widget/Editor;->mIsShowPasteWithoutInsertionHandle:Z

    if-nez v9, :cond_5

    .line 6779
    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v5, Landroid/graphics/Rect;->bottom:I

    .line 6786
    :goto_1
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v9, v9, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v11, p0, Landroid/widget/Editor;->mFlags:I

    invoke-virtual {v9, v10, v5, v11}, Lcom/htc/textselection/HtcTextSelectionManager;->showQuickAction(Landroid/widget/TextView;Landroid/graphics/Rect;I)V

    .line 6787
    iput-boolean v12, p0, Landroid/widget/Editor;->mIsShowPasteWithoutInsertionHandle:Z

    .line 6789
    return-void

    .line 6757
    .restart local v0    # "endLine":I
    .restart local v8    # "startLine":I
    :cond_3
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v5, Landroid/graphics/Rect;->left:I

    .line 6758
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v5, Landroid/graphics/Rect;->right:I

    .line 6759
    move v1, v8

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_1

    .line 6760
    iget v9, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v10

    float-to-int v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v5, Landroid/graphics/Rect;->left:I

    .line 6761
    iget v9, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    float-to-int v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v5, Landroid/graphics/Rect;->right:I

    .line 6759
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6773
    .end local v0    # "endLine":I
    .end local v1    # "i":I
    .end local v8    # "startLine":I
    :cond_4
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 6780
    :cond_5
    iget-object v9, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Editor$SelectionModifierCursorController;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 6781
    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 6783
    :cond_6
    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    const/high16 v10, 0x41300000    # 11.0f

    iget-object v11, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method private showSelectionHandles()V
    .locals 1

    .prologue
    .line 1106
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    .line 1107
    .local v0, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    if-eqz v0, :cond_0

    .line 1108
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 1110
    :cond_0
    return-void
.end method

.method private suspendBlink()V
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    .line 637
    :cond_0
    return-void
.end method

.method private touchPositionIsInSelection()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1565
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 1566
    .local v4, "selectionStart":I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1568
    .local v3, "selectionEnd":I
    if-ne v4, v3, :cond_0

    .line 1583
    :goto_0
    return v7

    .line 1572
    :cond_0
    if-le v4, v3, :cond_1

    .line 1573
    move v5, v4

    .line 1574
    .local v5, "tmp":I
    move v4, v3

    .line 1575
    move v3, v5

    .line 1576
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1579
    .end local v5    # "tmp":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    .line 1580
    .local v2, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 1581
    .local v1, "minOffset":I
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 1583
    .local v0, "maxOffset":I
    if-lt v1, v4, :cond_2

    if-ge v0, v3, :cond_2

    const/4 v6, 0x1

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1
.end method

.method private updateCursorPosition(IIIF)V
    .locals 6
    .param p1, "cursorIndex"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "horizontal"    # F

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 2869
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    if-nez v2, :cond_0

    .line 2870
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v4, v4, Landroid/widget/TextView;->mCursorDrawableRes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, p1

    .line 2873
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    .line 2874
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2875
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 2876
    .local v1, "width":I
    sub-float v2, p4, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 2877
    float-to-int v2, p4

    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 2878
    .local v0, "left":I
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, p2, v3

    add-int v4, v0, v1

    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, p3

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2880
    return-void
.end method

.method private updateSpellCheckSpans(IIZ)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "createSpellChecker"    # Z

    .prologue
    .line 608
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    .line 609
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    .line 611
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/view/inputmethod/ExtractEditText;

    if-nez v0, :cond_1

    .line 613
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 614
    new-instance v0, Landroid/widget/SpellChecker;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 616
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SpellChecker;->spellCheck(II)V

    .line 620
    :cond_1
    return-void
.end method


# virtual methods
.method SCATDPostScan_internal(Ljava/lang/String;)V
    .locals 5
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 6380
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v4, v4, Landroid/view/inputmethod/ExtractEditText;

    if-eqz v4, :cond_1

    .line 6381
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6382
    .local v0, "data":Landroid/os/Bundle;
    const-string v4, "word"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6383
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    check-cast v4, Landroid/view/inputmethod/ExtractEditText;

    invoke-interface {v4}, Landroid/view/inputmethod/ExtractEditText;->getIME()Landroid/inputmethodservice/InputMethodService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 6384
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_0

    .line 6385
    sget-object v4, Landroid/widget/TextView;->SC_ADDTODIC_SCAN:Ljava/lang/String;

    invoke-interface {v2, v4, v0}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 6400
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    return-void

    .line 6388
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 6389
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    .line 6391
    :cond_2
    iget-object v4, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6392
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 6397
    .end local v3    # "s":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6398
    invoke-direct {p0, p1}, Landroid/widget/Editor;->SCATDRemoveSpan(Ljava/lang/String;)V

    goto :goto_0
.end method

.method SCATDWordAdded(Ljava/lang/String;)V
    .locals 3
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 6369
    iget-object v0, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    if-eqz v0, :cond_0

    .line 6371
    iget-object v0, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SCATDHandler;->removeMessages(I)V

    .line 6372
    iget-object v0, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SCATDHandler;->removeMessages(I)V

    .line 6373
    iget-object v0, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    iget-object v1, p0, Landroid/widget/Editor;->mSCATDHandler:Landroid/widget/Editor$SCATDHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/widget/Editor$SCATDHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SCATDHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6375
    :cond_0
    return-void
.end method

.method public addSpanWatchers(Landroid/text/Spannable;)V
    .locals 4
    .param p1, "text"    # Landroid/text/Spannable;

    .prologue
    const/16 v3, 0x12

    const/4 v2, 0x0

    .line 3090
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 3092
    .local v0, "textLength":I
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_0

    .line 3093
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3096
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-nez v1, :cond_1

    .line 3097
    new-instance v1, Landroid/widget/Editor$SpanController;

    invoke-direct {v1, p0}, Landroid/widget/Editor$SpanController;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    .line 3099
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3100
    return-void
.end method

.method adjustInputType(ZZZZ)V
    .locals 2
    .param p1, "password"    # Z
    .param p2, "passwordInputType"    # Z
    .param p3, "webPasswordInputType"    # Z
    .param p4, "numberPasswordInputType"    # Z

    .prologue
    .line 651
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 652
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 653
    :cond_0
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    .line 656
    :cond_1
    if-eqz p3, :cond_2

    .line 657
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0xe0

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    .line 666
    :cond_2
    :goto_0
    return-void

    .line 660
    :cond_3
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 661
    if-eqz p4, :cond_2

    .line 662
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0
.end method

.method areSuggestionsShown()Z
    .locals 1

    .prologue
    .line 2909
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beginBatchEdit()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 2132
    iput-boolean v5, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 2133
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 2134
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    .line 2135
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 2136
    .local v1, "nesting":I
    if-ne v1, v5, :cond_0

    .line 2137
    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    .line 2138
    iput v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 2139
    iget-boolean v2, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-eqz v2, :cond_1

    .line 2142
    iput v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 2143
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 2149
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->onBeginBatchEdit()V

    .line 2152
    .end local v1    # "nesting":I
    :cond_0
    return-void

    .line 2145
    .restart local v1    # "nesting":I
    :cond_1
    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 2146
    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 2147
    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto :goto_0
.end method

.method canParentInterceptTouchEvent()Z
    .locals 1

    .prologue
    .line 805
    iget-boolean v0, p0, Landroid/widget/Editor;->mDisallowParentsToInterceptTouchEvents:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method createInputContentTypeIfNeeded()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v0, :cond_0

    .line 515
    new-instance v0, Landroid/widget/Editor$InputContentType;

    invoke-direct {v0}, Landroid/widget/Editor$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 517
    :cond_0
    return-void
.end method

.method createInputMethodStateIfNeeded()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-nez v0, :cond_0

    .line 521
    new-instance v0, Landroid/widget/Editor$InputMethodState;

    invoke-direct {v0}, Landroid/widget/Editor$InputMethodState;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 523
    :cond_0
    return-void
.end method

.method public enableHtcTextSelection(ZI)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 6623
    if-eqz p1, :cond_b

    .line 6624
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/htc/textselection/HtcTextSelectionManager;->getInstance()Lcom/htc/textselection/HtcTextSelectionManager;

    move-result-object v2

    iput-object v2, v1, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    .line 6625
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v1

    if-nez v1, :cond_a

    .line 6626
    iput-boolean v3, p0, Landroid/widget/Editor;->mIgnoreSetText:Z

    .line 6627
    iput v3, p0, Landroid/widget/Editor;->mFlags:I

    .line 6628
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 6629
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_0

    .line 6630
    iget v1, p0, Landroid/widget/Editor;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/Editor;->mFlags:I

    .line 6631
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6632
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 6636
    :cond_1
    :goto_0
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_2

    .line 6637
    iget v1, p0, Landroid/widget/Editor;->mFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/widget/Editor;->mFlags:I

    .line 6639
    :cond_2
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_3

    .line 6640
    iget v1, p0, Landroid/widget/Editor;->mFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Landroid/widget/Editor;->mFlags:I

    .line 6642
    :cond_3
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_4

    .line 6643
    iget v1, p0, Landroid/widget/Editor;->mFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/widget/Editor;->mFlags:I

    .line 6645
    :cond_4
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_5

    .line 6646
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Landroid/widget/TextView;->mSupportImageClip:Ljava/lang/Boolean;

    .line 6647
    :cond_5
    and-int/lit8 v1, p2, 0x40

    if-eqz v1, :cond_6

    .line 6648
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Landroid/widget/TextView;->mSupportImageClip:Ljava/lang/Boolean;

    .line 6656
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 6657
    iget-boolean v1, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-eqz v1, :cond_9

    .line 6659
    :cond_7
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 6660
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_9

    .line 6661
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v1, :cond_8

    .line 6662
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 6664
    :cond_8
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_9

    .line 6665
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 6674
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_9
    return-void

    .line 6634
    :cond_a
    iget v1, p0, Landroid/widget/Editor;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/Editor;->mFlags:I

    goto :goto_0

    .line 6650
    :cond_b
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 6651
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iput-object v2, v1, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    .line 6652
    iput v4, p0, Landroid/widget/Editor;->mFlags:I

    .line 6653
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/textselection/HtcTextSelectionManager;

    if-eqz v1, :cond_6

    .line 6654
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_1
.end method

.method public enableHtcTextSelection(ZZ)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "triggerByLongClick"    # Z

    .prologue
    .line 6681
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/Editor;->enableHtcTextSelection(ZI)V

    .line 6683
    return-void

    .line 6681
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public endBatchEdit()V
    .locals 3

    .prologue
    .line 2155
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 2156
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 2157
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    .line 2158
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, -0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 2159
    .local v1, "nesting":I
    if-nez v1, :cond_0

    .line 2160
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 2163
    .end local v1    # "nesting":I
    :cond_0
    return-void
.end method

.method ensureEndedBatchEdit()V
    .locals 2

    .prologue
    .line 2166
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 2167
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_0

    .line 2168
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 2169
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 2171
    :cond_0
    return-void
.end method

.method extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 6
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    const/4 v2, -0x1

    .line 2192
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V
    .locals 1
    .param p1, "ims"    # Landroid/widget/Editor$InputMethodState;

    .prologue
    .line 2174
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 2176
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_2

    .line 2177
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 2178
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    .line 2185
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    .line 2186
    return-void

    .line 2179
    :cond_2
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    if-eqz v0, :cond_1

    .line 2181
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_0
.end method

.method protected getAnchorHeight()I
    .locals 1

    .prologue
    .line 4313
    iget v0, p0, Landroid/widget/Editor;->mAnchorHeight:I

    return v0
.end method

.method public getContentViewHandler()Lcom/kikin/interfaces/KikinContentViewHandler;
    .locals 2

    .prologue
    .line 1194
    new-instance v0, Lcom/kikin/KikinContentViewPusher;

    invoke-virtual {p0}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kikin/KikinContentViewPusher;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getIgnoreSetTextFlag()Z
    .locals 1

    .prologue
    .line 6608
    iget-boolean v0, p0, Landroid/widget/Editor;->mIgnoreSetText:Z

    return v0
.end method

.method getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2838
    iget-boolean v2, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v2, :cond_0

    iget v2, p0, Landroid/widget/Editor;->mFlags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    .line 2850
    :goto_0
    return-object v1

    .line 2843
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-nez v2, :cond_1

    .line 2844
    new-instance v2, Landroid/widget/Editor$InsertionPointCursorController;

    invoke-direct {v2, p0, v1}, Landroid/widget/Editor$InsertionPointCursorController;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v2, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 2846
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2847
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2850
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    goto :goto_0
.end method

.method public getIsInTextSelectionMode()Z
    .locals 1

    .prologue
    .line 6612
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    return v0
.end method

.method public getIsLongPressed()Z
    .locals 1

    .prologue
    .line 6620
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsLongPressed:Z

    return v0
.end method

.method public getIsmScrolled()Z
    .locals 1

    .prologue
    .line 6616
    iget-boolean v0, p0, Landroid/widget/Editor;->mScrolled:Z

    return v0
.end method

.method public getKikinResultsViewController()Lcom/kikin/KikinResultsViewController;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kikin/exception/KikinCallbackHandlerException;
        }
    .end annotation

    .prologue
    .line 979
    iget-object v0, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    if-nez v0, :cond_0

    .line 980
    new-instance v0, Lcom/kikin/KikinResultsViewController;

    invoke-direct {v0, p0}, Lcom/kikin/KikinResultsViewController;-><init>(Lcom/kikin/interfaces/KikinCallbackHandler;)V

    iput-object v0, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    .line 982
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    return-object v0
.end method

.method public getPopupWindowHandler()Lcom/kikin/interfaces/KikinPopupWindowHandler;
    .locals 2

    .prologue
    .line 1201
    new-instance v0, Landroid/widget/Editor$SelectionHandlePopupWindowHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$SelectionHandlePopupWindowHandler;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    return-object v0
.end method

.method getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;
    .locals 2

    .prologue
    .line 2854
    iget-boolean v1, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v1, :cond_0

    .line 2855
    const/4 v1, 0x0

    .line 2865
    :goto_0
    return-object v1

    .line 2858
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-nez v1, :cond_1

    .line 2859
    new-instance v1, Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-direct {v1, p0}, Landroid/widget/Editor$SelectionModifierCursorController;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 2861
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2862
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2865
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    goto :goto_0
.end method

.method public getTextSelectionFlags()I
    .locals 1

    .prologue
    .line 6604
    iget v0, p0, Landroid/widget/Editor;->mFlags:I

    return v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1526
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1121
    invoke-virtual {p0}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 2

    .prologue
    .line 1533
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    if-nez v0, :cond_0

    .line 1534
    new-instance v0, Landroid/text/method/WordIterator;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 1536
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method public handleLongClickUpEvent()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 2767
    iget-boolean v4, p0, Landroid/widget/Editor;->mIsLongPressed:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2768
    invoke-direct {p0}, Landroid/widget/Editor;->removeMagnifier()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2769
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v4, v4, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v4}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissMagnifier()V

    .line 2771
    :cond_0
    const/4 v2, 0x0

    .line 2772
    .local v2, "composingToSelection":Z
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isInputMethodTarget()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_1

    .line 2773
    const/4 v1, -0x1

    .line 2774
    .local v1, "candStart":I
    const/4 v0, -0x1

    .line 2775
    .local v0, "candEnd":I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    .line 2776
    .local v3, "sp":Landroid/text/Spannable;
    invoke-static {v3}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .line 2777
    invoke-static {v3}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    .line 2778
    if-eq v5, v1, :cond_1

    if-eq v5, v0, :cond_1

    .line 2779
    invoke-static {v3, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 2780
    const/4 v2, 0x1

    .line 2783
    .end local v0    # "candEnd":I
    .end local v1    # "candStart":I
    .end local v3    # "sp":Landroid/text/Spannable;
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v4, v4, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v4}, Lcom/htc/textselection/HtcTextSelectionManager;->stopAutoScroll()V

    .line 2784
    invoke-direct {p0, v6}, Landroid/widget/Editor;->disallowInterceptTouchEvent(Z)V

    .line 2785
    iput-boolean v6, p0, Landroid/widget/Editor;->mIsLongPressed:Z

    .line 2787
    .end local v2    # "composingToSelection":Z
    :cond_2
    return-void
.end method

.method hasInsertionController()Z
    .locals 1

    .prologue
    .line 2827
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    return v0
.end method

.method hasSelectionController()Z
    .locals 1

    .prologue
    .line 2834
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    return v0
.end method

.method public hideControllers()V
    .locals 0

    .prologue
    .line 584
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 585
    invoke-direct {p0}, Landroid/widget/Editor;->hideSpanControllers()V

    .line 586
    return-void
.end method

.method public hideMagnifyingGlass()V
    .locals 0

    .prologue
    .line 770
    invoke-static {}, Lcom/kikin/magnifier/MagnifierManager;->hide()V

    .line 771
    return-void
.end method

.method hideSuggestions()V
    .locals 1

    .prologue
    .line 6355
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    .line 6356
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    .line 6357
    :cond_0
    return-void
.end method

.method hookIME()V
    .locals 4

    .prologue
    .line 6567
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 6568
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mHookIME:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6569
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mHookIME:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Editor$Blink;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6571
    :cond_0
    return-void
.end method

.method invalidateTextDisplayList()V
    .locals 2

    .prologue
    .line 2555
    iget-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    if-eqz v1, :cond_1

    .line 2556
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2557
    iget-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/DisplayList;->clear()V

    .line 2556
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2560
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method invalidateTextDisplayList(Landroid/text/Layout;II)V
    .locals 9
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 2526
    iget-object v8, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    if-eqz v8, :cond_2

    instance-of v8, p1, Landroid/text/DynamicLayout;

    if-eqz v8, :cond_2

    .line 2527
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 2528
    .local v4, "firstLine":I
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .local v6, "lastLine":I
    move-object v3, p1

    .line 2530
    check-cast v3, Landroid/text/DynamicLayout;

    .line 2531
    .local v3, "dynamicLayout":Landroid/text/DynamicLayout;
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v0

    .line 2532
    .local v0, "blockEndLines":[I
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v2

    .line 2533
    .local v2, "blockIndices":[I
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v7

    .line 2535
    .local v7, "numberOfBlocks":I
    const/4 v5, 0x0

    .line 2537
    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 2538
    aget v8, v0, v5

    if-lt v8, v4, :cond_3

    .line 2543
    :cond_0
    :goto_1
    if-ge v5, v7, :cond_2

    .line 2544
    aget v1, v2, v5

    .line 2545
    .local v1, "blockIndex":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    .line 2546
    iget-object v8, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/view/DisplayList;->clear()V

    .line 2548
    :cond_1
    aget v8, v0, v5

    if-lt v8, v6, :cond_4

    .line 2552
    .end local v0    # "blockEndLines":[I
    .end local v1    # "blockIndex":I
    .end local v2    # "blockIndices":[I
    .end local v3    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v4    # "firstLine":I
    .end local v5    # "i":I
    .end local v6    # "lastLine":I
    .end local v7    # "numberOfBlocks":I
    :cond_2
    return-void

    .line 2539
    .restart local v0    # "blockEndLines":[I
    .restart local v2    # "blockIndices":[I
    .restart local v3    # "dynamicLayout":Landroid/text/DynamicLayout;
    .restart local v4    # "firstLine":I
    .restart local v5    # "i":I
    .restart local v6    # "lastLine":I
    .restart local v7    # "numberOfBlocks":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2549
    .restart local v1    # "blockIndex":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 2550
    goto :goto_1
.end method

.method protected isContextMenuType()Z
    .locals 1

    .prologue
    .line 1254
    iget v0, p0, Landroid/widget/Editor;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/Editor;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCursorVisible()Z
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHWKeyboardOpen()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 6550
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 6551
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v3, v1, :cond_0

    const/4 v1, 0x3

    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v3, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSelectingText()Z
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected kikinHelper()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1273
    sget-boolean v4, Lcom/kikin/KikinGlobal;->IS_ENABLED:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->isContextMenuType()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1276
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-direct {p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 1277
    .local v0, "cursorPositionX":F
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget v5, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    const/4 v1, 0x1

    .line 1280
    .local v1, "isOnText":Z
    :goto_0
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->hasSelection()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_3

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->hasSelectAll()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1282
    invoke-virtual {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1307
    .end local v0    # "cursorPositionX":F
    .end local v1    # "isOnText":Z
    :cond_1
    :goto_1
    return-void

    .restart local v0    # "cursorPositionX":F
    :cond_2
    move v1, v3

    .line 1277
    goto :goto_0

    .line 1288
    .restart local v1    # "isOnText":Z
    :cond_3
    iget-object v4, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    if-nez v4, :cond_4

    .line 1290
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    invoke-direct {p0, v4, v5}, Landroid/widget/Editor;->createRangeFromSelection(II)Lcom/kikin/Range;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    .line 1294
    :cond_4
    invoke-direct {p0}, Landroid/widget/Editor;->isTextSelected()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1295
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1296
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 1298
    :cond_5
    sget-object v4, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    invoke-direct {p0, v4}, Landroid/widget/Editor;->getSelectionExtract(Lcom/kikin/selection/Selection$Mode;)Lcom/kikin/selection/Selection;

    move-result-object v2

    .line 1299
    .local v2, "selection":Lcom/kikin/selection/Selection;
    if-eqz v2, :cond_6

    .line 1301
    invoke-direct {p0, v2}, Landroid/widget/Editor;->doKikinSearch(Lcom/kikin/selection/Selection;)V

    .line 1305
    .end local v2    # "selection":Lcom/kikin/selection/Selection;
    :cond_6
    iput-boolean v3, p0, Landroid/widget/Editor;->mSelectWordOnDragging:Z

    goto :goto_1
.end method

.method makeBlink()V
    .locals 6

    .prologue
    .line 2934
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2935
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 2936
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$Blink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$Blink;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    .line 2937
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2939
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 2941
    sget-boolean v0, Landroid/widget/Editor;->mIsBlackTimeShorter:Z

    if-eqz v0, :cond_2

    .line 2942
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-wide v2, p0, Landroid/widget/Editor;->mShowCursor:J

    sget v4, Landroid/widget/Editor;->BLINK_WHITE:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Editor$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 2948
    :cond_1
    :goto_0
    return-void

    .line 2944
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-wide v2, p0, Landroid/widget/Editor;->mShowCursor:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Editor$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2946
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 297
    iget-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    if-eqz v1, :cond_0

    .line 298
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 299
    iput-boolean v3, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 301
    :cond_0
    iput-boolean v3, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    .line 303
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 306
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v1, :cond_1

    .line 307
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 309
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_2

    .line 310
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 311
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 313
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v3, v1, v2}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 316
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasTransientState()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 321
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHasTransientState(Z)V

    .line 324
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 326
    :cond_3
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 2891
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-nez v0, :cond_0

    .line 2892
    new-instance v0, Landroid/widget/Editor$CorrectionHighlighter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$CorrectionHighlighter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    .line 2897
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$CorrectionHighlighter;->highlight(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 2898
    return-void

    .line 2894
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    const/4 v1, 0x0

    # invokes: Landroid/widget/Editor$CorrectionHighlighter;->invalidate(Z)V
    invoke-static {v0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->access$600(Landroid/widget/Editor$CorrectionHighlighter;Z)V

    goto :goto_0
.end method

.method onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 329
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 330
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 333
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    .line 338
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 342
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_3

    .line 343
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 346
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 347
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 350
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 352
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_5

    .line 353
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0}, Landroid/widget/SpellChecker;->closeSession()V

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 359
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 360
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 361
    iput-boolean v2, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 362
    iput-boolean v2, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    .line 365
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroid/widget/Editor;->mIsLongPressed:Z

    if-eqz v0, :cond_6

    .line 366
    iput-boolean v2, p0, Landroid/widget/Editor;->mIsLongPressed:Z

    .line 367
    invoke-direct {p0, v2}, Landroid/widget/Editor;->disallowInterceptTouchEvent(Z)V

    .line 371
    :cond_6
    invoke-direct {p0}, Landroid/widget/Editor;->SCATDStop()V

    .line 372
    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p3, "highlight"    # Landroid/graphics/Path;
    .param p4, "highlightPaint"    # Landroid/graphics/Paint;
    .param p5, "cursorOffsetVertical"    # I

    .prologue
    .line 2329
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v15

    .line 2330
    .local v15, "selectionStart":I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v14

    .line 2332
    .local v14, "selectionEnd":I
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 2333
    .local v11, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v11, :cond_2

    iget v6, v11, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v6, :cond_2

    .line 2334
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    .line 2335
    .local v5, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v5, :cond_2

    .line 2336
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2337
    const/4 v13, 0x0

    .line 2338
    .local v13, "reported":Z
    iget-boolean v6, v11, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v6, :cond_0

    iget-boolean v6, v11, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v6, :cond_1

    .line 2342
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->reportExtractedText()Z

    .line 2346
    .end local v13    # "reported":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodManager;->isWatchingCursor(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz p3, :cond_2

    .line 2347
    iget-object v6, v11, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v7, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 2353
    const/4 v6, 0x2

    new-array v12, v6, [I

    .line 2354
    .local v12, "onScreenOffset":[I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 2355
    iget-object v6, v11, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v7, 0x0

    aget v7, v12, v7

    int-to-float v7, v7

    const/4 v8, 0x1

    aget v8, v12, v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 2356
    iget-object v6, v11, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getScrollY()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 2359
    iget-object v6, v11, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v7, 0x0

    move/from16 v0, p5

    int-to-float v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 2361
    iget-object v6, v11, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget-object v7, v11, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    float-to-double v7, v7

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double/2addr v7, v9

    double-to-int v7, v7

    iget-object v8, v11, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    float-to-double v8, v8

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v8, v8, v16

    double-to-int v8, v8

    iget-object v9, v11, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    float-to-double v9, v9

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v9, v9, v16

    double-to-int v9, v9

    iget-object v10, v11, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v10, v0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 2366
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v7, v11, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, v11, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, v11, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, v11, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V

    .line 2373
    .end local v5    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v12    # "onScreenOffset":[I
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-eqz v6, :cond_3

    .line 2374
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v6, v0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->draw(Landroid/graphics/Canvas;I)V

    .line 2377
    :cond_3
    if-eqz p3, :cond_4

    if-ne v15, v14, :cond_4

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/Editor;->mCursorCount:I

    if-lez v6, :cond_4

    .line 2378
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor;->drawCursor(Landroid/graphics/Canvas;I)V

    .line 2381
    const/16 p3, 0x0

    .line 2384
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->canHaveDisplayList()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2385
    invoke-direct/range {p0 .. p5}, Landroid/widget/Editor;->drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 2390
    :goto_0
    return-void

    .line 2388
    :cond_5
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_0
.end method

.method onDrop(Landroid/view/DragEvent;)V
    .locals 26
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 3022
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v23, ""

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3023
    .local v4, "content":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    .line 3024
    .local v3, "clipData":Landroid/content/ClipData;
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v11

    .line 3025
    .local v11, "itemCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v11, :cond_0

    .line 3026
    invoke-virtual {v3, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    .line 3027
    .local v10, "item":Landroid/content/ClipData$Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3025
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 3030
    .end local v10    # "item":Landroid/content/ClipData$Item;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v25

    invoke-virtual/range {v23 .. v25}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v18

    .line 3032
    .local v18, "offset":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v12

    .line 3033
    .local v12, "localState":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 3034
    .local v6, "dragLocalState":Landroid/widget/Editor$DragLocalState;
    instance-of v0, v12, Landroid/widget/Editor$DragLocalState;

    move/from16 v23, v0

    if-eqz v23, :cond_1

    move-object v6, v12

    .line 3035
    check-cast v6, Landroid/widget/Editor$DragLocalState;

    .line 3037
    :cond_1
    if-eqz v6, :cond_3

    iget-object v0, v6, Landroid/widget/Editor$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_3

    const/4 v5, 0x1

    .line 3040
    .local v5, "dragDropIntoItself":Z
    :goto_1
    if-eqz v5, :cond_4

    .line 3041
    iget v0, v6, Landroid/widget/Editor$DragLocalState;->start:I

    move/from16 v23, v0

    move/from16 v0, v18

    move/from16 v1, v23

    if-lt v0, v1, :cond_4

    iget v0, v6, Landroid/widget/Editor$DragLocalState;->end:I

    move/from16 v23, v0

    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 3087
    :cond_2
    :goto_2
    return-void

    .line 3037
    .end local v5    # "dragDropIntoItself":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 3047
    .restart local v5    # "dragDropIntoItself":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->length()I

    move-result v19

    .line 3048
    .local v19, "originalLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v15

    .line 3049
    .local v15, "minMax":J
    invoke-static/range {v15 .. v16}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v14

    .line 3050
    .local v14, "min":I
    invoke-static/range {v15 .. v16}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v13

    .line 3052
    .local v13, "max":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    check-cast v23, Landroid/text/Spannable;

    move-object/from16 v0, v23

    invoke-static {v0, v13}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3053
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14, v13, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 3055
    if-eqz v5, :cond_2

    .line 3056
    iget v8, v6, Landroid/widget/Editor$DragLocalState;->start:I

    .line 3057
    .local v8, "dragSourceStart":I
    iget v7, v6, Landroid/widget/Editor$DragLocalState;->end:I

    .line 3059
    .local v7, "dragSourceEnd":I
    if-gt v13, v8, :cond_5

    .line 3061
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->length()I

    move-result v23

    sub-int v21, v23, v19

    .line 3062
    .local v21, "shift":I
    add-int v8, v8, v21

    .line 3063
    add-int v7, v7, v21

    .line 3075
    .end local v21    # "shift":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v7}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 3078
    const/16 v23, 0x0

    add-int/lit8 v24, v8, -0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 3079
    .local v20, "prevCharIdx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->length()I

    move-result v23

    add-int/lit8 v24, v8, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 3080
    .local v17, "nextCharIdx":I
    add-int/lit8 v23, v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-le v0, v1, :cond_2

    .line 3081
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v22

    .line 3082
    .local v22, "t":Ljava/lang/CharSequence;
    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 3083
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    add-int/lit8 v24, v20, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->deleteText_internal(II)V

    goto/16 :goto_2
.end method

.method onFocusChanged(ZI)V
    .locals 10
    .param p1, "focused"    # Z
    .param p2, "direction"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1830
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 1831
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    .line 1833
    if-eqz p1, :cond_c

    .line 1834
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 1835
    .local v4, "selStart":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1839
    .local v3, "selEnd":I
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v5, :cond_a

    if-nez v4, :cond_a

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v3, v5, :cond_a

    move v0, v6

    .line 1842
    .local v0, "isFocusHighlighted":Z
    :goto_0
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-eqz v5, :cond_b

    if-nez v0, :cond_b

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 1845
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_0

    if-ltz v4, :cond_0

    if-gez v3, :cond_6

    .line 1848
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTapPosition()I

    move-result v1

    .line 1849
    .local v1, "lastTapPosition":I
    if-ltz v1, :cond_1

    .line 1850
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1854
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v2

    .line 1855
    .local v2, "mMovement":Landroid/text/method/MovementMethod;
    if-eqz v2, :cond_2

    .line 1856
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v2, v8, v5, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    .line 1864
    :cond_2
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v5, v5, Landroid/view/inputmethod/ExtractEditText;

    if-nez v5, :cond_3

    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    if-eqz v5, :cond_4

    :cond_3
    if-ltz v4, :cond_4

    if-ltz v3, :cond_4

    .line 1875
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1878
    :cond_4
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v5, :cond_5

    .line 1879
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->selectAllText()Z

    .line 1882
    :cond_5
    iput-boolean v6, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 1885
    .end local v1    # "lastTapPosition":I
    .end local v2    # "mMovement":Landroid/text/method/MovementMethod;
    :cond_6
    iput-boolean v7, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    .line 1886
    iput-boolean v7, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 1888
    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v5, :cond_7

    .line 1889
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 1892
    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 1895
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 1896
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1897
    invoke-direct {p0}, Landroid/widget/Editor;->removeMagnifier()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1898
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, v5, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v5}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissMagnifier()V

    .line 1899
    :cond_8
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, v5, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v5, v7}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    .line 1938
    .end local v0    # "isFocusHighlighted":Z
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    :cond_9
    :goto_2
    return-void

    .restart local v3    # "selEnd":I
    .restart local v4    # "selStart":I
    :cond_a
    move v0, v7

    .line 1839
    goto/16 :goto_0

    .restart local v0    # "isFocusHighlighted":Z
    :cond_b
    move v5, v7

    .line 1842
    goto/16 :goto_1

    .line 1904
    .end local v0    # "isFocusHighlighted":Z
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    :cond_c
    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v5, :cond_d

    .line 1905
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 1908
    :cond_d
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 1910
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v5, v5, Landroid/view/inputmethod/ExtractEditText;

    if-eqz v5, :cond_10

    .line 1913
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 1916
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 1917
    .restart local v4    # "selStart":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1920
    .restart local v3    # "selEnd":I
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1921
    invoke-direct {p0}, Landroid/widget/Editor;->removeMagnifier()Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, v5, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v5}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissMagnifier()V

    .line 1922
    :cond_e
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, v5, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v5, v7}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    .line 1925
    :cond_f
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1934
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    :goto_3
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v5, :cond_9

    .line 1935
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    goto :goto_2

    .line 1927
    :cond_10
    iget-boolean v5, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    if-eqz v5, :cond_11

    iput-boolean v6, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 1928
    :cond_11
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 1929
    iget-boolean v5, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    if-eqz v5, :cond_12

    iput-boolean v7, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 1930
    :cond_12
    invoke-direct {p0}, Landroid/widget/Editor;->downgradeEasyCorrectionSpans()V

    goto :goto_3
.end method

.method onLocaleChanged()V
    .locals 1

    .prologue
    .line 1518
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 1519
    return-void
.end method

.method public onOverflowMenuClosed()V
    .locals 1

    .prologue
    .line 795
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mLosingFocusDueToOverflowMenu:Z

    .line 796
    return-void
.end method

.method public onOverflowMenuCreated()V
    .locals 1

    .prologue
    .line 783
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mLosingFocusDueToOverflowMenu:Z

    .line 784
    return-void
.end method

.method onScreenStateChanged(I)V
    .locals 0
    .param p1, "screenState"    # I

    .prologue
    .line 623
    packed-switch p1, :pswitch_data_0

    .line 631
    :goto_0
    return-void

    .line 625
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    goto :goto_0

    .line 628
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    goto :goto_0

    .line 623
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onScrollChanged()V
    .locals 1

    .prologue
    .line 2913
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-eqz v0, :cond_0

    .line 2914
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->onScrollChanged()V

    .line 2916
    :cond_0
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2041
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/Editor;->mLastTouchDownRawX:I

    .line 2042
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/Editor;->mLastTouchDownRawY:I

    .line 2044
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2045
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 2048
    :cond_0
    iget-object v5, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v5, :cond_1

    .line 2049
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v6, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2050
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 2053
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-nez v5, :cond_2

    .line 2054
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    .line 2055
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    .line 2059
    iput-boolean v4, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 2060
    iput-boolean v4, p0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    .line 2062
    iput-boolean v4, p0, Landroid/widget/Editor;->mIsLongPressed:Z

    .line 2063
    iput-boolean v4, p0, Landroid/widget/Editor;->mScrolled:Z

    .line 2067
    :cond_2
    sget-boolean v5, Lcom/kikin/KikinGlobal;->IS_ENABLED:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v5

    if-nez v5, :cond_a

    .line 2068
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2072
    .local v0, "action":I
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectWordOnDragging:Z

    if-eqz v5, :cond_6

    const/4 v5, 0x2

    if-ne v0, v5, :cond_6

    .line 2074
    iget v5, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_3

    iget v5, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_4

    :cond_3
    move v1, v3

    .line 2075
    .local v1, "didTouchMove":Z
    :goto_0
    if-nez v1, :cond_5

    .line 2127
    .end local v0    # "action":I
    .end local v1    # "didTouchMove":Z
    :goto_1
    return v3

    .restart local v0    # "action":I
    :cond_4
    move v1, v4

    .line 2074
    goto :goto_0

    .line 2078
    .restart local v1    # "didTouchMove":Z
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    .line 2079
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    .line 2082
    invoke-virtual {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    .line 2085
    iget v4, p0, Landroid/widget/Editor;->mLastTouchDownRawX:I

    iget v5, p0, Landroid/widget/Editor;->mLastTouchDownRawY:I

    invoke-direct {p0, v4, v5}, Landroid/widget/Editor;->showMagnifyingGlass(II)V

    goto :goto_1

    .line 2092
    .end local v1    # "didTouchMove":Z
    :cond_6
    if-eq v0, v3, :cond_7

    if-ne v0, v7, :cond_a

    .line 2094
    :cond_7
    iput-boolean v4, p0, Landroid/widget/Editor;->mDisallowParentsToInterceptTouchEvents:Z

    .line 2097
    invoke-virtual {p0}, Landroid/widget/Editor;->hideMagnifyingGlass()V

    .line 2099
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectWordOnDragging:Z

    if-eqz v5, :cond_a

    .line 2101
    if-ne v0, v3, :cond_b

    invoke-direct {p0}, Landroid/widget/Editor;->isTextSelected()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2103
    iput-boolean v3, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    .line 2104
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, v3, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-virtual {v5, v6, v3}, Lcom/htc/textselection/HtcTextSelectionManager;->onStartSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 2107
    sget-object v3, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    invoke-direct {p0, v3}, Landroid/widget/Editor;->getSelectionExtract(Lcom/kikin/selection/Selection$Mode;)Lcom/kikin/selection/Selection;

    move-result-object v2

    .line 2108
    .local v2, "selection":Lcom/kikin/selection/Selection;
    if-eqz v2, :cond_8

    .line 2110
    invoke-direct {p0, v2}, Landroid/widget/Editor;->doKikinSearch(Lcom/kikin/selection/Selection;)V

    .line 2114
    :cond_8
    invoke-direct {p0}, Landroid/widget/Editor;->showSelectionHandles()V

    .line 2123
    .end local v2    # "selection":Lcom/kikin/selection/Selection;
    :cond_9
    :goto_2
    iput-boolean v4, p0, Landroid/widget/Editor;->mSelectWordOnDragging:Z

    .end local v0    # "action":I
    :cond_a
    move v3, v4

    .line 2127
    goto :goto_1

    .line 2116
    .restart local v0    # "action":I
    :cond_b
    if-ne v0, v7, :cond_9

    .line 2118
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 2119
    invoke-direct {p0}, Landroid/widget/Editor;->hideSelectionHandles()V

    goto :goto_2
.end method

.method onTouchUpEvent(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, -0x1

    .line 2722
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 2723
    .local v2, "oldSelStart":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 2725
    .local v1, "oldSelEnd":I
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x1

    .line 2726
    .local v3, "selectAllGotFocus":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 2727
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 2728
    .local v4, "text":Ljava/lang/CharSequence;
    if-nez v3, :cond_5

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 2731
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v5

    invoke-direct {p0, v5}, Landroid/widget/Editor;->refineOffest(I)I

    move-result v0

    .line 2733
    .local v0, "offset":I
    check-cast v4, Landroid/text/Spannable;

    .end local v4    # "text":Ljava/lang/CharSequence;
    invoke-static {v4, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2734
    iget-object v5, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v5, :cond_0

    .line 2736
    iget-object v5, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v5}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    .line 2738
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2739
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2740
    new-instance v5, Landroid/widget/Editor$1;

    invoke-direct {v5, p0}, Landroid/widget/Editor$1;-><init>(Landroid/widget/Editor;)V

    iput-object v5, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 2746
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v6, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2757
    .end local v0    # "offset":I
    :cond_1
    :goto_1
    iget-boolean v5, p0, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-eqz v5, :cond_2

    iget v5, p0, Landroid/widget/Editor;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    iget-boolean v5, p0, Landroid/widget/Editor;->mScrolled:Z

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v5

    if-eqz v5, :cond_2

    if-ne v2, v9, :cond_2

    if-ne v2, v9, :cond_2

    .line 2760
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 2763
    :cond_2
    return-void

    .line 2725
    .end local v3    # "selectAllGotFocus":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 2748
    .restart local v0    # "offset":I
    .restart local v3    # "selectAllGotFocus":Z
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2749
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    goto :goto_1

    .line 2753
    .end local v0    # "offset":I
    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_5
    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->canPaste()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2754
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v5

    # invokes: Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;
    invoke-static {v5}, Landroid/widget/Editor$InsertionPointCursorController;->access$300(Landroid/widget/Editor$InsertionPointCursorController;)Landroid/widget/Editor$InsertionHandleView;

    move-result-object v5

    # invokes: Landroid/widget/Editor$InsertionHandleView;->showPasteWithoutInsertionHandle()V
    invoke-static {v5}, Landroid/widget/Editor$InsertionHandleView;->access$400(Landroid/widget/Editor$InsertionHandleView;)V

    goto :goto_1
.end method

.method onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1993
    sget-boolean v0, Lcom/kikin/KikinGlobal;->IS_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor;->mLosingFocusDueToKikinPopup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v0}, Lcom/kikin/KikinResultsViewController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1997
    const/4 p1, 0x1

    .line 1998
    iput-boolean v1, p0, Landroid/widget/Editor;->mLosingFocusDueToKikinPopup:Z

    .line 2004
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->useQuickActionWindowStyle()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    iget-boolean v0, p0, Landroid/widget/Editor;->mLosingFocusDueToOverflowMenu:Z

    if-eqz v0, :cond_2

    .line 2005
    iput-boolean v1, p0, Landroid/widget/Editor;->mLosingFocusDueToOverflowMenu:Z

    .line 2035
    :cond_1
    :goto_0
    return-void

    .line 2010
    :cond_2
    if-eqz p1, :cond_3

    .line 2011
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_1

    .line 2012
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 2013
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 2016
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->isHWKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2017
    invoke-virtual {p0}, Landroid/widget/Editor;->hookIME()V

    goto :goto_0

    .line 2020
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_4

    .line 2021
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    .line 2023
    :cond_4
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_5

    .line 2024
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v1, v0, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 2027
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 2028
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_6

    .line 2029
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->onParentLostFocus()V

    .line 2033
    :cond_6
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    goto :goto_0
.end method

.method performKikinSearchOnChangedSelection()V
    .locals 3

    .prologue
    .line 917
    invoke-direct {p0}, Landroid/widget/Editor;->createRangeFromCurrentSelection()Lcom/kikin/Range;

    move-result-object v0

    .line 920
    .local v0, "range":Lcom/kikin/Range;
    iget-object v2, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    invoke-virtual {v0, v2}, Lcom/kikin/Range;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 921
    iput-object v0, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    .line 924
    sget-object v2, Lcom/kikin/selection/Selection$Mode;->SELECTION:Lcom/kikin/selection/Selection$Mode;

    invoke-direct {p0, v2}, Landroid/widget/Editor;->getSelectionExtract(Lcom/kikin/selection/Selection$Mode;)Lcom/kikin/selection/Selection;

    move-result-object v1

    .line 927
    .local v1, "selection":Lcom/kikin/selection/Selection;
    if-eqz v1, :cond_0

    .line 929
    invoke-direct {p0, v1}, Landroid/widget/Editor;->doKikinSearch(Lcom/kikin/selection/Selection;)V

    .line 932
    .end local v1    # "selection":Lcom/kikin/selection/Selection;
    :cond_0
    return-void
.end method

.method public performLongClick(Z)Z
    .locals 12
    .param p1, "handled"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1667
    if-nez p1, :cond_9

    iget v7, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v8, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-direct {p0, v7, v8}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result v7

    if-nez v7, :cond_0

    iget-boolean v7, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v7, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_2

    :cond_1
    iget v7, p0, Landroid/widget/Editor;->mFlags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_9

    .line 1674
    :cond_2
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v8, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v9, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v4

    .line 1676
    .local v4, "offset":I
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 1678
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1679
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v8, v7, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    invoke-virtual {v8, v9, v7}, Lcom/htc/textselection/HtcTextSelectionManager;->onStartSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 1680
    :cond_3
    if-ltz v4, :cond_4

    .line 1681
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1683
    :cond_4
    iput-boolean v11, p0, Landroid/widget/Editor;->mIsLongPressed:Z

    .line 1691
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->hasFocus()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1692
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->requestFocus()Z

    .line 1694
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-gtz v7, :cond_6

    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    iget v7, p0, Landroid/widget/Editor;->mFlags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_11

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-gtz v7, :cond_11

    .line 1696
    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Editor$InsertionPointCursorController;->showWithActionPopupDelay()V

    .line 1700
    :cond_8
    :goto_0
    iget v7, p0, Landroid/widget/Editor;->mFlags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_12

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_12

    .line 1701
    const/4 p1, 0x0

    .line 1707
    .end local v4    # "offset":I
    :cond_9
    :goto_1
    if-nez p1, :cond_b

    iget-object v7, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v7, :cond_a

    iget-boolean v7, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    if-eqz v7, :cond_b

    .line 1708
    :cond_a
    invoke-direct {p0}, Landroid/widget/Editor;->touchPositionIsInSelection()Z

    move-result v7

    if-eqz v7, :cond_13

    iget v7, p0, Landroid/widget/Editor;->mFlags:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_13

    invoke-direct {p0}, Landroid/widget/Editor;->hasPasswordTransformationMethod()Z

    move-result v7

    if-nez v7, :cond_13

    .line 1711
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 1712
    .local v6, "start":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 1713
    .local v2, "end":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v6, v2}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1714
    .local v5, "selectedText":Ljava/lang/CharSequence;
    const/4 v7, 0x0

    invoke-static {v7, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 1715
    .local v0, "data":Landroid/content/ClipData;
    new-instance v3, Landroid/widget/Editor$DragLocalState;

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v3, v7, v6, v2}, Landroid/widget/Editor$DragLocalState;-><init>(Landroid/widget/TextView;II)V

    .line 1716
    .local v3, "localState":Landroid/widget/Editor$DragLocalState;
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Landroid/widget/Editor;->getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;

    move-result-object v8

    invoke-virtual {v7, v0, v8, v3, v10}, Landroid/widget/TextView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 1717
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 1718
    const/4 p1, 0x1

    .line 1735
    .end local v0    # "data":Landroid/content/ClipData;
    .end local v2    # "end":I
    .end local v3    # "localState":Landroid/widget/Editor$DragLocalState;
    .end local v5    # "selectedText":Ljava/lang/CharSequence;
    .end local v6    # "start":I
    :cond_b
    :goto_2
    if-nez p1, :cond_10

    .line 1737
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v7

    if-nez v7, :cond_c

    sget-boolean v7, Lcom/kikin/KikinGlobal;->IS_ENABLED:Z

    if-nez v7, :cond_d

    iget-boolean v7, p0, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-eqz v7, :cond_d

    invoke-direct {p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1738
    :cond_c
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v8, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v9, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v4

    .line 1740
    .restart local v4    # "offset":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setPressed(Z)V

    .line 1741
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 1742
    invoke-direct {p0, v10}, Landroid/widget/Editor;->disallowInterceptTouchEvent(Z)V

    .line 1743
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v7, v7, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Lcom/htc/textselection/HtcTextSelectionManager;->findScrollableView(Landroid/widget/TextView;)V

    .line 1744
    iput-boolean v10, p0, Landroid/widget/Editor;->mIsLongPressed:Z

    .line 1745
    if-ltz v4, :cond_d

    .line 1746
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1750
    .end local v4    # "offset":I
    :cond_d
    sget-boolean v7, Lcom/kikin/KikinGlobal;->IS_ENABLED:Z

    if-eqz v7, :cond_19

    .line 1754
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1755
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    move-result p1

    .line 1800
    :cond_e
    :goto_3
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v7

    if-nez v7, :cond_f

    sget-boolean v7, Lcom/kikin/KikinGlobal;->IS_ENABLED:Z

    if-nez v7, :cond_10

    iget-boolean v7, p0, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-eqz v7, :cond_10

    invoke-direct {p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1801
    :cond_f
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v7, v7, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v7}, Lcom/htc/textselection/HtcTextSelectionManager;->stopAutoScroll()V

    .line 1802
    invoke-direct {p0, v10}, Landroid/widget/Editor;->disallowInterceptTouchEvent(Z)V

    .line 1806
    :cond_10
    return p1

    .line 1697
    .restart local v4    # "offset":I
    :cond_11
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1698
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Editor$InsertionPointCursorController;->showWithActionPopup()V

    goto/16 :goto_0

    .line 1703
    :cond_12
    const/4 p1, 0x1

    goto/16 :goto_1

    .line 1721
    .end local v4    # "offset":I
    :cond_13
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v7

    if-eqz v7, :cond_15

    iget-boolean v7, p0, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-nez v7, :cond_14

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual {p0}, Landroid/widget/Editor;->useQuickActionWindowStyle()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1722
    :cond_14
    const/4 p1, 0x0

    .line 1723
    sget-boolean v7, Lcom/kikin/KikinGlobal;->IS_ENABLED:Z

    if-eqz v7, :cond_b

    iget-boolean v7, p0, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-eqz v7, :cond_b

    .line 1724
    iput-boolean v11, p0, Landroid/widget/Editor;->mSelectAgain:Z

    goto/16 :goto_2

    .line 1725
    :cond_15
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1726
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 1727
    invoke-virtual {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    .line 1728
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 1729
    const/4 p1, 0x1

    goto/16 :goto_2

    .line 1757
    :cond_16
    invoke-direct {p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1759
    invoke-direct {p0}, Landroid/widget/Editor;->dismissSoftKeyboard()Z

    move-result v1

    .line 1761
    .local v1, "dismissed":Z
    if-nez v1, :cond_e

    .line 1763
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 1765
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->hasFocus()Z

    move-result v7

    if-nez v7, :cond_17

    .line 1766
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->requestFocus()Z

    .line 1768
    :cond_17
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setPressed(Z)V

    .line 1771
    invoke-direct {p0, v11}, Landroid/widget/Editor;->disallowInterceptTouchEvent(Z)V

    .line 1772
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v7, v7, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Lcom/htc/textselection/HtcTextSelectionManager;->findScrollableView(Landroid/widget/TextView;)V

    .line 1776
    :cond_18
    iput-boolean v11, p0, Landroid/widget/Editor;->mSelectWordOnDragging:Z

    .line 1779
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1781
    iput-boolean v11, p0, Landroid/widget/Editor;->mDisallowParentsToInterceptTouchEvents:Z

    .line 1784
    iget v7, p0, Landroid/widget/Editor;->mLastTouchDownRawX:I

    iget v8, p0, Landroid/widget/Editor;->mLastTouchDownRawY:I

    invoke-direct {p0, v7, v8}, Landroid/widget/Editor;->showMagnifyingGlass(II)V

    .line 1787
    invoke-virtual {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    .line 1788
    iput-boolean v10, p0, Landroid/widget/Editor;->mSelectAgain:Z

    .line 1790
    invoke-direct {p0}, Landroid/widget/Editor;->hideSelectionHandles()V

    .line 1791
    iput-boolean v11, p0, Landroid/widget/Editor;->mIsLongPressed:Z

    .line 1793
    const/4 p1, 0x1

    goto/16 :goto_3

    .line 1798
    .end local v1    # "dismissed":Z
    :cond_19
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    move-result p1

    goto/16 :goto_3
.end method

.method prepareCursorControllers()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 531
    const/4 v3, 0x0

    .line 533
    .local v3, "windowSupportsHandles":Z
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 534
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v6, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v6, :cond_1

    move-object v2, v1

    .line 535
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 536
    .local v2, "windowParams":Landroid/view/WindowManager$LayoutParams;
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_0

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7cf

    if-le v6, v7, :cond_5

    :cond_0
    move v3, v5

    .line 540
    .end local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_0
    if-eqz v3, :cond_6

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    if-eqz v6, :cond_6

    move v0, v5

    .line 541
    .local v0, "enabled":Z
    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v6

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_2
    move v6, v5

    :goto_2
    iput-boolean v6, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    .line 546
    if-eqz v0, :cond_8

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v6

    if-eqz v6, :cond_8

    :goto_3
    iput-boolean v5, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    .line 548
    iget-boolean v4, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v4, :cond_3

    .line 549
    invoke-direct {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 550
    iget-object v4, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v4, :cond_3

    .line 551
    iget-object v4, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v4}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 552
    iput-object v8, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 556
    :cond_3
    iget-boolean v4, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v4, :cond_4

    .line 557
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 558
    iget-object v4, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v4, :cond_4

    .line 559
    iget-object v4, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v4}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 560
    iput-object v8, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 563
    :cond_4
    return-void

    .end local v0    # "enabled":Z
    .restart local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_5
    move v3, v4

    .line 536
    goto :goto_0

    .end local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    move v0, v4

    .line 540
    goto :goto_1

    .restart local v0    # "enabled":Z
    :cond_7
    move v6, v4

    .line 541
    goto :goto_2

    :cond_8
    move v5, v4

    .line 546
    goto :goto_3
.end method

.method public removeReplacementSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 6801
    instance-of v6, p1, Landroid/text/Spannable;

    if-eqz v6, :cond_1

    move-object v3, p1

    .line 6802
    check-cast v3, Landroid/text/Spannable;

    .line 6803
    .local v3, "spannable":Landroid/text/Spannable;
    const/4 v6, 0x0

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v7

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v3, v6, v7, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 6804
    .local v4, "spans":[Ljava/lang/Object;
    array-length v1, v4

    .line 6805
    .local v1, "i":I
    :cond_0
    :goto_0
    if-lez v1, :cond_2

    .line 6806
    add-int/lit8 v1, v1, -0x1

    .line 6807
    aget-object v6, v4, v1

    invoke-interface {v3, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 6808
    .local v5, "start":I
    aget-object v6, v4, v1

    invoke-interface {v3, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 6809
    .local v0, "end":I
    aget-object v6, v4, v1

    invoke-interface {v3, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 6811
    if-ltz v5, :cond_0

    if-le v0, v5, :cond_0

    invoke-interface {v3, v5}, Landroid/text/Spannable;->charAt(I)C

    move-result v6

    const v7, 0xfffc

    if-ne v6, v7, :cond_0

    .line 6812
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 6813
    .local v2, "spanBuilder":Landroid/text/SpannableStringBuilder;
    const-string v6, ""

    invoke-virtual {v2, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto :goto_0

    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v2    # "spanBuilder":Landroid/text/SpannableStringBuilder;
    .end local v3    # "spannable":Landroid/text/Spannable;
    .end local v4    # "spans":[Ljava/lang/Object;
    .end local v5    # "start":I
    :cond_1
    move-object v3, p1

    .line 6818
    :cond_2
    return-object v3
.end method

.method public removeStyledAnnotationSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 6825
    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 6826
    check-cast v1, Landroid/text/Spannable;

    .line 6829
    .local v1, "spannable":Landroid/text/Spannable;
    :goto_0
    const/4 v3, 0x0

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/Annotation;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/Annotation;

    .line 6830
    .local v2, "spans":[Landroid/text/Annotation;
    array-length v0, v2

    .line 6831
    .local v0, "i":I
    :cond_0
    :goto_1
    if-lez v0, :cond_2

    .line 6832
    add-int/lit8 v0, v0, -0x1

    .line 6833
    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "styledtext"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6835
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1

    .line 6828
    .end local v0    # "i":I
    .end local v1    # "spannable":Landroid/text/Spannable;
    .end local v2    # "spans":[Landroid/text/Annotation;
    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v1    # "spannable":Landroid/text/Spannable;
    goto :goto_0

    .line 6837
    .restart local v0    # "i":I
    .restart local v2    # "spans":[Landroid/text/Annotation;
    :cond_2
    return-object v1
.end method

.method reportExtractedText()Z
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 2267
    iget-object v8, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 2268
    .local v8, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v8, :cond_2

    .line 2269
    iget-boolean v6, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 2270
    .local v6, "contentChanged":Z
    if-nez v6, :cond_0

    iget-boolean v0, v8, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_2

    .line 2271
    :cond_0
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 2272
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    .line 2273
    iget-object v1, v8, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 2274
    .local v1, "req":Landroid/view/inputmethod/ExtractedTextRequest;
    if-eqz v1, :cond_2

    .line 2275
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    .line 2276
    .local v7, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_2

    .line 2281
    iget v0, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v0, :cond_1

    if-nez v6, :cond_1

    .line 2282
    const/4 v0, -0x2

    iput v0, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 2284
    :cond_1
    iget v2, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iget v3, v8, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    iget v4, v8, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    iget-object v5, v8, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2292
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v2, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v3, v8, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v7, v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 2293
    iput v10, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 2294
    iput v10, v8, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 2295
    iput v9, v8, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 2296
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 2297
    const/4 v0, 0x1

    .line 2303
    .end local v1    # "req":Landroid/view/inputmethod/ExtractedTextRequest;
    .end local v6    # "contentChanged":Z
    .end local v7    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return v0

    :cond_2
    move v0, v9

    goto :goto_0
.end method

.method public selectCurrentWord()Z
    .locals 30

    .prologue
    .line 1330
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v28

    if-nez v28, :cond_0

    .line 1331
    const/16 v28, 0x0

    .line 1513
    :goto_0
    return v28

    .line 1334
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->hasPasswordTransformationMethod()Z

    move-result v28

    if-eqz v28, :cond_1

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->selectAllText()Z

    move-result v28

    goto :goto_0

    .line 1341
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getInputType()I

    move-result v7

    .line 1342
    .local v7, "inputType":I
    and-int/lit8 v9, v7, 0xf

    .line 1343
    .local v9, "klass":I
    and-int/lit16 v0, v7, 0xff0

    move/from16 v26, v0

    .line 1346
    .local v26, "variation":I
    const/16 v28, 0x2

    move/from16 v0, v28

    if-eq v9, v0, :cond_2

    const/16 v28, 0x3

    move/from16 v0, v28

    if-eq v9, v0, :cond_2

    const/16 v28, 0x4

    move/from16 v0, v28

    if-eq v9, v0, :cond_2

    const/16 v28, 0x10

    move/from16 v0, v26

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    const/16 v28, 0x20

    move/from16 v0, v26

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    const/16 v28, 0xd0

    move/from16 v0, v26

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    const/16 v28, 0xb0

    move/from16 v0, v26

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor;->mFlags:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x4

    if-eqz v28, :cond_3

    .line 1354
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->selectAllText()Z

    move-result v28

    goto :goto_0

    .line 1357
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    move-result-wide v10

    .line 1358
    .local v10, "lastTouchOffsets":J
    invoke-static {v10, v11}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v13

    .line 1359
    .local v13, "minOffset":I
    invoke-static {v10, v11}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v12

    .line 1360
    .local v12, "maxOffset":I
    move v4, v13

    .line 1367
    .local v4, "adjustedMinOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v28

    if-eqz v28, :cond_7

    .line 1369
    if-ltz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->length()I

    move-result v28

    move/from16 v0, v28

    if-lt v13, v0, :cond_5

    :cond_4
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 1370
    :cond_5
    if-ltz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->length()I

    move-result v28

    move/from16 v0, v28

    if-lt v12, v0, :cond_7

    :cond_6
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 1373
    :cond_7
    const/16 v21, -0x1

    .local v21, "selectionStart":I
    const/16 v19, -0x1

    .line 1376
    .local v19, "selectionEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    check-cast v28, Landroid/text/Spanned;

    const-class v29, Landroid/text/style/URLSpan;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v13, v12, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Landroid/text/style/URLSpan;

    .line 1378
    .local v25, "urlSpans":[Landroid/text/style/URLSpan;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_a

    .line 1379
    const/16 v28, 0x0

    aget-object v24, v25, v28

    .line 1380
    .local v24, "urlSpan":Landroid/text/style/URLSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    check-cast v28, Landroid/text/Spanned;

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v21

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    check-cast v28, Landroid/text/Spanned;

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v19

    .line 1383
    sget-boolean v28, Lcom/kikin/KikinGlobal;->IS_ENABLED:Z

    if-eqz v28, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v28

    if-nez v28, :cond_8

    .line 1385
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor;->createRangeFromSelection(II)Lcom/kikin/Range;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    .line 1508
    .end local v24    # "urlSpan":Landroid/text/style/URLSpan;
    :cond_8
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_9

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    check-cast v28, Landroid/text/Spannable;

    move-object/from16 v0, v28

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1513
    :cond_9
    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_21

    const/16 v28, 0x1

    goto/16 :goto_0

    .line 1389
    :cond_a
    sget-boolean v28, Lcom/kikin/KikinGlobal;->IS_ENABLED:Z

    if-eqz v28, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v28

    if-nez v28, :cond_13

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    .line 1393
    .local v5, "cursorPositionX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v28, v28, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor;->mLastDownPositionX:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v28

    const/high16 v29, 0x41200000    # 10.0f

    cmpg-float v28, v28, v29

    if-gez v28, :cond_f

    const/4 v8, 0x1

    .line 1397
    .local v8, "isOnText":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v28

    if-eqz v28, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->length()I

    move-result v28

    if-lez v28, :cond_11

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v14

    .line 1399
    .local v14, "offset":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor;->mSelectAgain:Z

    move/from16 v28, v0

    if-eqz v28, :cond_b

    move v14, v13

    .line 1401
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v0, v14}, Landroid/widget/Editor;->findWordStart(Ljava/lang/CharSequence;I)I

    move-result v28

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 1402
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v20

    .line 1404
    .local v20, "selectionModifierCursorController":Landroid/widget/Editor$SelectionModifierCursorController;
    if-eqz v20, :cond_c

    .line 1405
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v14

    .line 1407
    .end local v20    # "selectionModifierCursorController":Landroid/widget/Editor$SelectionModifierCursorController;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    check-cast v28, Landroid/text/Spannable;

    move-object/from16 v0, v28

    invoke-static {v0, v14}, Landroid/widget/Editor;->findNearestNonwhiteOffset(Landroid/text/Spannable;I)I

    move-result v14

    .line 1408
    move v4, v14

    .line 1409
    const/16 v28, -0x1

    move/from16 v0, v28

    if-le v14, v0, :cond_11

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v0, v14}, Landroid/widget/Editor;->findWordStart(Ljava/lang/CharSequence;I)I

    move-result v21

    .line 1411
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v0, v14}, Landroid/widget/Editor;->findWordEnd(Ljava/lang/CharSequence;I)I

    move-result v19

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v28, v0

    if-eqz v28, :cond_10

    .line 1413
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    check-cast v22, Landroid/text/Spannable;

    .line 1414
    .local v22, "sp":Landroid/text/Spannable;
    const-class v28, Landroid/text/style/ReplacementSpan;

    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v19

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Landroid/text/style/ReplacementSpan;

    .line 1415
    .local v23, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v6, v0, :cond_10

    .line 1416
    aget-object v28, v23, v6

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v18

    .line 1417
    .local v18, "replaceStart":I
    aget-object v28, v23, v6

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v17

    .line 1418
    .local v17, "replaceEnd":I
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    .line 1419
    move/from16 v21, v18

    .line 1420
    :cond_d
    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_e

    .line 1421
    move/from16 v19, v17

    .line 1415
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1393
    .end local v6    # "i":I
    .end local v8    # "isOnText":Z
    .end local v14    # "offset":I
    .end local v17    # "replaceEnd":I
    .end local v18    # "replaceStart":I
    .end local v22    # "sp":Landroid/text/Spannable;
    .end local v23    # "spans":[Landroid/text/style/ReplacementSpan;
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 1425
    .restart local v8    # "isOnText":Z
    .restart local v14    # "offset":I
    :cond_10
    move/from16 v0, v21

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->length()I

    move-result v28

    move/from16 v0, v28

    move/from16 v1, v21

    if-le v0, v1, :cond_11

    .line 1426
    add-int/lit8 v19, v21, 0x1

    .line 1431
    .end local v14    # "offset":I
    :cond_11
    if-nez v8, :cond_12

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_8

    .line 1434
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v0, v1, v4}, Lcom/kikin/KikinCore;->nativeGetTextEntity(Ljava/lang/String;II)Lcom/kikin/Range;

    move-result-object v15

    .line 1435
    .local v15, "range":Lcom/kikin/Range;
    if-eqz v15, :cond_8

    .line 1437
    invoke-virtual {v15}, Lcom/kikin/Range;->getStartOffset()I

    move-result v21

    .line 1438
    invoke-virtual {v15}, Lcom/kikin/Range;->getEndOffset()I

    move-result v19

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/kikin/Range;->setTouchedWord(Ljava/lang/String;)V

    .line 1444
    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    goto/16 :goto_1

    .line 1449
    .end local v5    # "cursorPositionX":F
    .end local v8    # "isOnText":Z
    .end local v15    # "range":Lcom/kikin/Range;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v28

    if-eqz v28, :cond_1b

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->length()I

    move-result v28

    if-lez v28, :cond_18

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v14

    .line 1452
    .restart local v14    # "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v0, v14}, Landroid/widget/Editor;->findWordStart(Ljava/lang/CharSequence;I)I

    move-result v28

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_14

    .line 1453
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v20

    .line 1455
    .restart local v20    # "selectionModifierCursorController":Landroid/widget/Editor$SelectionModifierCursorController;
    if-eqz v20, :cond_14

    .line 1456
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v14

    .line 1458
    .end local v20    # "selectionModifierCursorController":Landroid/widget/Editor$SelectionModifierCursorController;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    check-cast v28, Landroid/text/Spannable;

    move-object/from16 v0, v28

    invoke-static {v0, v14}, Landroid/widget/Editor;->findNearestNonwhiteOffset(Landroid/text/Spannable;I)I

    move-result v14

    .line 1459
    const/16 v28, -0x1

    move/from16 v0, v28

    if-le v14, v0, :cond_18

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v0, v14}, Landroid/widget/Editor;->findWordStart(Ljava/lang/CharSequence;I)I

    move-result v21

    .line 1461
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v0, v14}, Landroid/widget/Editor;->findWordEnd(Ljava/lang/CharSequence;I)I

    move-result v19

    .line 1462
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v28, v0

    if-eqz v28, :cond_17

    .line 1463
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    check-cast v22, Landroid/text/Spannable;

    .line 1464
    .restart local v22    # "sp":Landroid/text/Spannable;
    const-class v28, Landroid/text/style/ReplacementSpan;

    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v19

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Landroid/text/style/ReplacementSpan;

    .line 1465
    .restart local v23    # "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v6, v0, :cond_17

    .line 1466
    aget-object v28, v23, v6

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v18

    .line 1467
    .restart local v18    # "replaceStart":I
    aget-object v28, v23, v6

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v17

    .line 1468
    .restart local v17    # "replaceEnd":I
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_15

    .line 1469
    move/from16 v21, v18

    .line 1470
    :cond_15
    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_16

    .line 1471
    move/from16 v19, v17

    .line 1465
    :cond_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1474
    .end local v6    # "i":I
    .end local v17    # "replaceEnd":I
    .end local v18    # "replaceStart":I
    .end local v22    # "sp":Landroid/text/Spannable;
    .end local v23    # "spans":[Landroid/text/style/ReplacementSpan;
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/widget/Editor;->getCharRange(I)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v21

    .line 1475
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/Editor;->getCharRange(I)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v19

    .line 1477
    move/from16 v0, v21

    move/from16 v1, v19

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->length()I

    move-result v28

    move/from16 v0, v28

    move/from16 v1, v21

    if-le v0, v1, :cond_19

    .line 1478
    add-int/lit8 v19, v21, 0x1

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    check-cast v28, Landroid/text/Spannable;

    move-object/from16 v0, v28

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1486
    .end local v14    # "offset":I
    :cond_18
    :goto_5
    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_1a

    const/16 v28, 0x1

    goto/16 :goto_0

    .line 1481
    .restart local v14    # "offset":I
    :cond_19
    move/from16 v0, v21

    move/from16 v1, v19

    if-eq v0, v1, :cond_18

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    check-cast v28, Landroid/text/Spannable;

    move-object/from16 v0, v28

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_5

    .line 1486
    .end local v14    # "offset":I
    :cond_1a
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 1490
    :cond_1b
    if-ltz v13, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->length()I

    move-result v28

    move/from16 v0, v28

    if-lt v13, v0, :cond_1d

    :cond_1c
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 1491
    :cond_1d
    if-ltz v12, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->length()I

    move-result v28

    move/from16 v0, v28

    if-lt v12, v0, :cond_1f

    :cond_1e
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 1492
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v27

    .line 1493
    .local v27, "wordIterator":Landroid/text/method/WordIterator;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v13, v12}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 1495
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v21

    .line 1496
    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v19

    .line 1498
    const/16 v28, -0x1

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_20

    const/16 v28, -0x1

    move/from16 v0, v19

    move/from16 v1, v28

    if-eq v0, v1, :cond_20

    move/from16 v0, v21

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 1501
    :cond_20
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/Editor;->getCharRange(I)J

    move-result-wide v15

    .line 1502
    .local v15, "range":J
    invoke-static/range {v15 .. v16}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v21

    .line 1503
    invoke-static/range {v15 .. v16}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v19

    goto/16 :goto_1

    .line 1513
    .end local v15    # "range":J
    .end local v27    # "wordIterator":Landroid/text/method/WordIterator;
    :cond_21
    const/16 v28, 0x0

    goto/16 :goto_0
.end method

.method sendOnTextChanged(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "after"    # I

    .prologue
    .line 1962
    add-int v0, p1, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 1967
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 1968
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 402
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mErrorWasChanged:Z

    .line 405
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 406
    invoke-direct {p0, v1}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    .line 407
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    .line 412
    :cond_0
    iput-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 414
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 421
    :cond_2
    :goto_0
    return-void

    .line 416
    :cond_3
    invoke-direct {p0, p2}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    .line 417
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 418
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    goto :goto_0
.end method

.method setFrame()V
    .locals 7

    .prologue
    .line 690
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 692
    .local v6, "tv":Landroid/widget/TextView;
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v6}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 693
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v2

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/Editor$ErrorPopup;->getHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Editor$ErrorPopup;->update(Landroid/view/View;IIII)V

    .line 696
    .end local v6    # "tv":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setLastTouchDownPosition(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 996
    int-to-float v1, p1

    iput v1, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    .line 997
    int-to-float v1, p2

    iput v1, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    .line 999
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    .line 1000
    .local v0, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    if-eqz v0, :cond_0

    .line 1001
    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor$SelectionModifierCursorController;->setMinAndMaxOffset(II)V

    .line 1003
    :cond_0
    return-void
.end method

.method public showQuickActionAgain()V
    .locals 0

    .prologue
    .line 6729
    invoke-direct {p0}, Landroid/widget/Editor;->showQuickAction()V

    .line 6730
    return-void
.end method

.method showSuggestions()V
    .locals 1

    .prologue
    .line 2901
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-nez v0, :cond_0

    .line 2902
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SuggestionsPopupWindow;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 2904
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 2905
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->show()V

    .line 2906
    return-void
.end method

.method startSelectionActionMode()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 2608
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_1

    .line 2681
    :cond_0
    :goto_0
    return v6

    .line 2612
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->requestFocus()Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, p0, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-nez v5, :cond_3

    .line 2613
    :cond_2
    const-string v5, "TextView"

    const-string v7, "TextView does not support text selection. Action mode cancelled."

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    iput-boolean v6, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    goto :goto_0

    .line 2620
    :cond_3
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isPressSelectAllButton()Z

    move-result v5

    if-nez v5, :cond_6

    .line 2622
    :cond_4
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v5, :cond_5

    .line 2624
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v7, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v8, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {v5, v7, v8}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v2

    .line 2625
    .local v2, "offset":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_5

    .line 2626
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2631
    .end local v2    # "offset":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2637
    :cond_6
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v4

    .line 2639
    .local v4, "willExtract":Z
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2640
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v7, v5, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-virtual {v7, v8, v5}, Lcom/htc/textselection/HtcTextSelectionManager;->onStartSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 2644
    :cond_7
    sget-boolean v5, Lcom/kikin/KikinGlobal;->IS_ENABLED:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_8
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {p0}, Landroid/widget/Editor;->useQuickActionWindowStyle()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2646
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2648
    iget-boolean v5, p0, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-nez v5, :cond_d

    .line 2649
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 2654
    :cond_9
    :goto_1
    invoke-direct {p0}, Landroid/widget/Editor;->prepareQuickActions()V

    .line 2655
    invoke-direct {p0}, Landroid/widget/Editor;->showQuickAction()V

    .line 2656
    iput-boolean v3, p0, Landroid/widget/Editor;->mIsInQuickActioMode:Z

    .line 2668
    :cond_a
    :goto_2
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v5, :cond_b

    if-nez v4, :cond_b

    iget-boolean v5, p0, Landroid/widget/Editor;->mIsInQuickActioMode:Z

    if-eqz v5, :cond_10

    .line 2670
    .local v3, "selectionStarted":Z
    :cond_b
    :goto_3
    iput-boolean v3, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    .line 2672
    if-eqz v3, :cond_c

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    if-nez v5, :cond_c

    iget-boolean v5, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2675
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 2676
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_c

    .line 2677
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v6, v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_c
    move v6, v3

    .line 2681
    goto/16 :goto_0

    .line 2651
    .end local v3    # "selectionStarted":Z
    :cond_d
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->forceShow()V

    goto :goto_1

    .line 2662
    :cond_e
    if-eqz v4, :cond_f

    sget-boolean v5, Lcom/kikin/KikinGlobal;->IS_ENABLED:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v5

    if-nez v5, :cond_a

    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectWordOnDragging:Z

    if-eqz v5, :cond_a

    .line 2663
    :cond_f
    new-instance v0, Landroid/widget/Editor$SelectionActionModeCallback;

    invoke-direct {v0, p0, v9}, Landroid/widget/Editor$SelectionActionModeCallback;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    .line 2664
    .local v0, "actionModeCallback":Landroid/view/ActionMode$Callback;
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    .line 2665
    iput-boolean v6, p0, Landroid/widget/Editor;->mIsInQuickActioMode:Z

    goto :goto_2

    .end local v0    # "actionModeCallback":Landroid/view/ActionMode$Callback;
    :cond_10
    move v3, v6

    .line 2668
    goto :goto_3
.end method

.method protected stopSelectionActionMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2790
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    if-eqz v0, :cond_4

    .line 2792
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2794
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2798
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2799
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 2803
    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor;->hideSelectionModifierCursorController()V

    .line 2805
    iput-boolean v3, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    .line 2806
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2807
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {v1, v2, v0}, Lcom/htc/textselection/HtcTextSelectionManager;->onEndSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 2809
    :cond_1
    iput-boolean v3, p0, Landroid/widget/Editor;->mIsInQuickActioMode:Z

    .line 2811
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-boolean v0, v0, Landroid/widget/TextView;->isMessageLink:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/Editor;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/Editor;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 2813
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2821
    :cond_2
    :goto_1
    return-void

    .line 2801
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 2816
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2817
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    # invokes: Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;
    invoke-static {v0}, Landroid/widget/Editor$InsertionPointCursorController;->access$300(Landroid/widget/Editor$InsertionPointCursorController;)Landroid/widget/Editor$InsertionHandleView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionHandleView;->hidePasteWidow()V

    goto :goto_1

    .line 2818
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2819
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    goto :goto_1
.end method

.method updateCursorsPositions()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v9, 0x2

    .line 2563
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v8, v8, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-nez v8, :cond_1

    .line 2564
    iput v11, p0, Landroid/widget/Editor;->mCursorCount:I

    .line 2591
    :cond_0
    :goto_0
    return-void

    .line 2568
    :cond_1
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 2569
    .local v3, "layout":Landroid/text/Layout;
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHintLayout()Landroid/text/Layout;

    move-result-object v2

    .line 2570
    .local v2, "hintLayout":Landroid/text/Layout;
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 2571
    .local v6, "offset":I
    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 2572
    .local v4, "line":I
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    .line 2573
    .local v7, "top":I
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 2575
    .local v0, "bottom":I
    invoke-virtual {v3, v6}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v9

    :goto_1
    iput v8, p0, Landroid/widget/Editor;->mCursorCount:I

    .line 2577
    move v5, v0

    .line 2578
    .local v5, "middle":I
    iget v8, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ne v8, v9, :cond_2

    .line 2580
    add-int v8, v7, v0

    shr-int/lit8 v5, v8, 0x1

    .line 2583
    :cond_2
    invoke-virtual {v3, v4}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v1

    .line 2584
    .local v1, "clamped":Z
    invoke-direct {p0, v3, v2, v6, v1}, Landroid/widget/Editor;->getPrimaryHorizontal(Landroid/text/Layout;Landroid/text/Layout;IZ)F

    move-result v8

    invoke-direct {p0, v11, v7, v5, v8}, Landroid/widget/Editor;->updateCursorPosition(IIIF)V

    .line 2587
    iget v8, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ne v8, v9, :cond_0

    .line 2588
    invoke-virtual {v3, v6, v1}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v8

    invoke-direct {p0, v10, v5, v0, v8}, Landroid/widget/Editor;->updateCursorPosition(IIIF)V

    goto :goto_0

    .end local v1    # "clamped":Z
    .end local v5    # "middle":I
    :cond_3
    move v8, v10

    .line 2575
    goto :goto_1
.end method

.method public updateSelection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "oldQuery"    # Ljava/lang/String;
    .param p2, "newQuery"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1151
    iget-object v6, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    if-nez v6, :cond_1

    .line 1190
    :cond_0
    :goto_0
    return-void

    .line 1154
    :cond_1
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 1157
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectedText()Ljava/lang/String;

    move-result-object v4

    .line 1158
    .local v4, "selectedText":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1163
    iget-object v6, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    invoke-virtual {v6}, Lcom/kikin/Range;->getStartOffset()I

    move-result v5

    .line 1164
    .local v5, "startIndex":I
    iget-object v6, p0, Landroid/widget/Editor;->mRange:Lcom/kikin/Range;

    invoke-virtual {v6}, Lcom/kikin/Range;->getEndOffset()I

    move-result v1

    .line 1166
    .local v1, "endIndex":I
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1168
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1169
    .local v3, "oldQueryStartIndexInNewQuery":I
    sub-int/2addr v5, v3

    .line 1170
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    sub-int/2addr v6, v7

    add-int/2addr v1, v6

    .line 1179
    .end local v3    # "oldQueryStartIndexInNewQuery":I
    :cond_2
    :goto_1
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1180
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1184
    :try_start_0
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v5, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1185
    :catch_0
    move-exception v0

    .line 1187
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "Editor"

    const-string v7, "couldn\'t update the selection"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1172
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1174
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1175
    .local v2, "newQueryStartIndexInOldQuery":I
    add-int/2addr v5, v2

    .line 1176
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v2

    sub-int/2addr v6, v7

    sub-int/2addr v1, v6

    goto :goto_1
.end method

.method public updateSelectionInCAB(Ljava/lang/String;)V
    .locals 3
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 1134
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    .line 1135
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/kikin/KikinGlobal;->IS_ENABLED:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1137
    .local v0, "allowText":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1138
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 1141
    .end local v0    # "allowText":Z
    :cond_1
    return-void

    .line 1135
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useHtcTextSelection()Z
    .locals 1

    .prologue
    .line 6705
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected useQuickActionWindowStyle()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4331
    sget-boolean v1, Lcom/kikin/KikinGlobal;->IS_ENABLED:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4334
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->hasCustomSelectionActionModeCallback()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
