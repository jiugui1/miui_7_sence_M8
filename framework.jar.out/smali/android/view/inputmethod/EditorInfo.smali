.class public Landroid/view/inputmethod/EditorInfo;
.super Ljava/lang/Object;
.source "EditorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/text/InputType;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/inputmethod/EditorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EDITORINFO_TYPE_FULL:I = -0x1

.field public static final EDITORINFO_TYPE_IMEOPTIONS:I = 0x8

.field public static final EDITORINFO_TYPE_INPUTTYPE:I = 0x4

.field public static final EDITORINFO_TYPE_PRIMARY:I = 0x1

.field public static final EDITORINFO_TYPE_SECONDARY:I = 0x2

.field public static final IME_ACTION_DONE:I = 0x6

.field public static final IME_ACTION_GO:I = 0x2

.field public static final IME_ACTION_NEXT:I = 0x5

.field public static final IME_ACTION_NONE:I = 0x1

.field public static final IME_ACTION_PREVIOUS:I = 0x7

.field public static final IME_ACTION_SEARCH:I = 0x3

.field public static final IME_ACTION_SEND:I = 0x4

.field public static final IME_ACTION_UNSPECIFIED:I = 0x0

.field public static final IME_FLAG_FORCE_ASCII:I = -0x80000000

.field public static final IME_FLAG_NAVIGATE_NEXT:I = 0x8000000

.field public static final IME_FLAG_NAVIGATE_PREVIOUS:I = 0x4000000

.field public static final IME_FLAG_NO_ACCESSORY_ACTION:I = 0x20000000

.field public static final IME_FLAG_NO_ENTER_ACTION:I = 0x40000000

.field public static final IME_FLAG_NO_EXTRACT_UI:I = 0x10000000

.field public static final IME_FLAG_NO_FULLSCREEN:I = 0x2000000

.field private static final IME_HTC_FLAG_RENEWIC:I = 0x100

.field private static final IME_HTC_FLAG_TRANSFORMATION_HIDERETURNS:I = 0x2000

.field private static final IME_HTC_FLAG_TRANSFORMATION_PASSWORD:I = 0x1000

.field private static final IME_HTC_FLAG_TRANSFORMATION_SINGLELINE:I = 0x4000

.field public static final IME_MASK_ACTION:I = 0xff

.field private static final IME_MASK_FLAGS:I = -0x10000

.field private static final IME_MASK_HTC_FLAGS:I = 0xff00

.field public static final IME_NULL:I = 0x0

.field private static final IME_OPTIONS_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INPUTTYPE_NAMES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final TYPE_MASK_HTC_FLAGS:I = 0xf000000

.field public static final TYPE_PHONE_VARIATION_HTC_PIN_KEYBOARD:I = 0x900

.field public static final TYPE_TEXT_FLAG_SPELL_CHECKER:I = 0x800000

.field public static final TYPE_TEXT_HTC_FLAG_ENABLE_ACTION_FOR_ENTER_KEY:I = 0x2000000

.field public static final TYPE_TEXT_HTC_FLAG_HTC_IME_CURSOR_ADAPTER:I = 0x1000000

.field public static final TYPE_TEXT_VARIATION_HTC_QWERTY_SYMBOL:I = 0x9f0

.field public static final TYPE_TEXT_VARIATION_HTC_SHORT_MESSAGE_CONTENT:I = 0x980

.field public static final TYPE_TEXT_VARIATION_HTC_SHORT_MESSAGE_RECIPIENT:I = 0x990

.field public static final TYPE_TEXT_VARIATION_HTC_SMART_DIAL_HANDWRITING:I = 0x9a0


# instance fields
.field public actionId:I

.field public actionLabel:Ljava/lang/CharSequence;

.field public extras:Landroid/os/Bundle;

.field public fieldId:I

.field public fieldName:Ljava/lang/String;

.field public hintText:Ljava/lang/CharSequence;

.field public imeOptions:I

.field public initialCapsMode:I

.field public initialSelEnd:I

.field public initialSelStart:I

.field public inputType:I

.field public label:Ljava/lang/CharSequence;

.field public packageName:Ljava/lang/String;

.field public privateImeOptions:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x2000

    const/16 v6, 0x1000

    const/16 v5, 0x10

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 540
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v1, Landroid/view/inputmethod/EditorInfo;->INPUTTYPE_NAMES:Ljava/util/ArrayList;

    .line 541
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Landroid/view/inputmethod/EditorInfo;->IME_OPTIONS_NAMES:Landroid/util/SparseArray;

    .line 544
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 545
    .local v0, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v1, 0x1

    const-string v2, "TYPE_CLASS_TEXT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 546
    const-string v1, "TYPE_CLASS_NUMBER"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 547
    const/4 v1, 0x3

    const-string v2, "TYPE_CLASS_PHONE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 548
    const/4 v1, 0x4

    const-string v2, "TYPE_CLASS_DATETIME"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 549
    sget-object v1, Landroid/view/inputmethod/EditorInfo;->INPUTTYPE_NAMES:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 552
    .restart local v0    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v1, "(NONE)"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 553
    const-string v1, "TYPE_TEXT_VARIATION_NORMAL"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 554
    const-string v1, "TYPE_TEXT_VARIATION_URI"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 555
    const/16 v1, 0x20

    const-string v2, "TYPE_TEXT_VARIATION_EMAIL_ADDRESS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 556
    const/16 v1, 0x30

    const-string v2, "TYPE_TEXT_VARIATION_EMAIL_SUBJECT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 557
    const/16 v1, 0x40

    const-string v2, "TYPE_TEXT_VARIATION_SHORT_MESSAGE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 558
    const/16 v1, 0x50

    const-string v2, "TYPE_TEXT_VARIATION_LONG_MESSAGE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 559
    const/16 v1, 0x60

    const-string v2, "TYPE_TEXT_VARIATION_PERSON_NAME"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 560
    const/16 v1, 0x70

    const-string v2, "TYPE_TEXT_VARIATION_POSTAL_ADDRESS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 561
    const/16 v1, 0x80

    const-string v2, "TYPE_TEXT_VARIATION_PASSWORD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 562
    const/16 v1, 0x90

    const-string v2, "TYPE_TEXT_VARIATION_VISIBLE_PASSWORD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 563
    const/16 v1, 0xa0

    const-string v2, "TYPE_TEXT_VARIATION_WEB_EDIT_TEXT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 564
    const/16 v1, 0xb0

    const-string v2, "TYPE_TEXT_VARIATION_FILTER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 565
    const/16 v1, 0xc0

    const-string v2, "TYPE_TEXT_VARIATION_PHONETIC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 566
    const/16 v1, 0xd0

    const-string v2, "TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 567
    const/16 v1, 0xe0

    const-string v2, "TYPE_TEXT_VARIATION_WEB_PASSWORD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 568
    const/16 v1, 0x980

    const-string v2, "TYPE_TEXT_VARIATION_HTC_SHORT_MESSAGE_CONTENT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 569
    const/16 v1, 0x990

    const-string v2, "TYPE_TEXT_VARIATION_HTC_SHORT_MESSAGE_RECIPIENT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 570
    const/16 v1, 0x9a0

    const-string v2, "TYPE_TEXT_VARIATION_HTC_SMART_DIAL_HANDWRITING"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 571
    const/16 v1, 0x9f0

    const-string v2, "TYPE_TEXT_VARIATION_HTC_QWERTY_SYMBOL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 573
    const-string v1, "TYPE_TEXT_FLAG_CAP_CHARACTERS"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 574
    const-string v1, "TYPE_TEXT_FLAG_CAP_WORDS"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 575
    const/16 v1, 0x4000

    const-string v2, "TYPE_TEXT_FLAG_CAP_SENTENCES"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 576
    const v1, 0x8000

    const-string v2, "TYPE_TEXT_FLAG_AUTO_CORRECT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 577
    const/high16 v1, 0x10000

    const-string v2, "TYPE_TEXT_FLAG_AUTO_COMPLETE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 578
    const/high16 v1, 0x20000

    const-string v2, "TYPE_TEXT_FLAG_MULTI_LINE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 579
    const/high16 v1, 0x40000

    const-string v2, "TYPE_TEXT_FLAG_IME_MULTI_LINE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 580
    const/high16 v1, 0x80000

    const-string v2, "TYPE_TEXT_FLAG_NO_SUGGESTIONS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 581
    const/high16 v1, 0x800000

    const-string v2, "TYPE_TEXT_FLAG_SPELL_CHECKER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 583
    const/high16 v1, 0x1000000

    const-string v2, "TYPE_TEXT_HTC_FLAG_HTC_IME_CURSOR_ADAPTER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 584
    const/high16 v1, 0x2000000

    const-string v2, "TYPE_TEXT_HTC_FLAG_ENABLE_ACTION_FOR_ENTER_KEY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 585
    sget-object v1, Landroid/view/inputmethod/EditorInfo;->INPUTTYPE_NAMES:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 588
    .restart local v0    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v1, "(NONE)"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 589
    const-string v1, "TYPE_NUMBER_VARIATION_NORMAL"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 590
    const-string v1, "TYPE_NUMBER_VARIATION_PASSWORD"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 592
    const-string v1, "TYPE_NUMBER_FLAG_SIGNED"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 593
    const-string v1, "TYPE_NUMBER_FLAG_DECIMAL"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 594
    sget-object v1, Landroid/view/inputmethod/EditorInfo;->INPUTTYPE_NAMES:Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 596
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 597
    .restart local v0    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v1, "(NONE)"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 598
    const/16 v1, 0x900

    const-string v2, "TYPE_PHONE_VARIATION_HTC_PIN_KEYBOARD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 599
    sget-object v1, Landroid/view/inputmethod/EditorInfo;->INPUTTYPE_NAMES:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 602
    .restart local v0    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v1, "(NONE)"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 603
    const-string v1, "TYPE_DATETIME_VARIATION_NORMAL"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 604
    const-string v1, "TYPE_DATETIME_VARIATION_DATE"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 605
    const/16 v1, 0x20

    const-string v2, "TYPE_DATETIME_VARIATION_TIME"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 606
    sget-object v1, Landroid/view/inputmethod/EditorInfo;->INPUTTYPE_NAMES:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    sget-object v0, Landroid/view/inputmethod/EditorInfo;->IME_OPTIONS_NAMES:Landroid/util/SparseArray;

    .line 609
    const-string v1, "IME_ACTION_UNSPECIFIED"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 610
    const/4 v1, 0x1

    const-string v2, "IME_ACTION_NONE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 611
    const-string v1, "IME_ACTION_GO"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 612
    const/4 v1, 0x3

    const-string v2, "IME_ACTION_SEARCH"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 613
    const/4 v1, 0x4

    const-string v2, "IME_ACTION_SEND"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 614
    const/4 v1, 0x5

    const-string v2, "IME_ACTION_NEXT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 615
    const/4 v1, 0x6

    const-string v2, "IME_ACTION_DONE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 616
    const/4 v1, 0x7

    const-string v2, "IME_ACTION_PREVIOUS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 618
    const/high16 v1, 0x2000000

    const-string v2, "IME_FLAG_NO_FULLSCREEN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 619
    const/high16 v1, 0x4000000

    const-string v2, "IME_FLAG_NAVIGATE_PREVIOUS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 620
    const/high16 v1, 0x8000000

    const-string v2, "IME_FLAG_NAVIGATE_NEXT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 621
    const/high16 v1, 0x10000000

    const-string v2, "IME_FLAG_NO_EXTRACT_UI"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 622
    const/high16 v1, 0x20000000

    const-string v2, "IME_FLAG_NO_ACCESSORY_ACTION"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 623
    const/high16 v1, 0x40000000    # 2.0f

    const-string v2, "IME_FLAG_NO_ENTER_ACTION"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 624
    const/high16 v1, -0x80000000

    const-string v2, "IME_FLAG_FORCE_ASCII"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 626
    const/16 v1, 0x100

    const-string v2, "IME_HTC_FLAG_RENEWIC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 627
    const-string v1, "IME_HTC_FLAG_TRANSFORMATION_PASSWORD"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 628
    const-string v1, "IME_HTC_FLAG_TRANSFORMATION_HIDERETURNS"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 629
    const/16 v1, 0x4000

    const-string v2, "IME_HTC_FLAG_TRANSFORMATION_SINGLELINE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 642
    new-instance v1, Landroid/view/inputmethod/EditorInfo$1;

    invoke-direct {v1}, Landroid/view/inputmethod/EditorInfo$1;-><init>()V

    sput-object v1, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 219
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 232
    iput-object v2, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 244
    iput-object v2, p0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 252
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 260
    iput v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 268
    iput v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 279
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    return-void
.end method

.method private getDescriptionFromFlag(Landroid/util/SparseArray;I)Ljava/lang/String;
    .locals 8
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 510
    .local p1, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 511
    .local v4, "msg":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 512
    .local v2, "hasDescription":Z
    const/4 v5, 0x0

    .line 513
    .local v5, "undefinedFlag":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v6, 0x20

    if-ge v3, v6, :cond_3

    .line 514
    const/4 v6, 0x1

    shl-int/2addr v6, v3

    and-int v0, p2, v6

    .line 515
    .local v0, "curFlag":I
    if-eqz v0, :cond_1

    .line 516
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 517
    .local v1, "curFlagStr":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 518
    if-eqz v2, :cond_0

    .line 519
    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    const/4 v2, 0x1

    .line 513
    .end local v1    # "curFlagStr":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 524
    .restart local v1    # "curFlagStr":Ljava/lang/String;
    :cond_2
    and-int/2addr v5, v0

    goto :goto_1

    .line 527
    .end local v0    # "curFlag":I
    .end local v1    # "curFlagStr":Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_6

    .line 528
    if-eqz v5, :cond_4

    .line 529
    const-string v6, "; "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    :cond_4
    :goto_2
    if-eqz v5, :cond_5

    .line 536
    const-string v6, "Undefined Flag=0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    :cond_5
    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 532
    :cond_6
    if-nez v5, :cond_4

    .line 533
    const-string v6, "EMPTY"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method


# virtual methods
.method public checkIfNeedToRenewIC()Z
    .locals 2

    .prologue
    .line 454
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v1, 0xff00

    and-int/2addr v0, v1

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 455
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 456
    const/4 v0, 0x1

    .line 458
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 668
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "inputType=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " imeOptions=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " privateImeOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "actionLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " actionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "initialSelStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " initialSelEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " initialCapsMode=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hintText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fieldId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fieldName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method public getInfo(I)Ljava/lang/String;
    .locals 20
    .param p1, "type"    # I

    .prologue
    .line 469
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "EditorInfo { "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 470
    .local v17, "s":Ljava/lang/StringBuilder;
    and-int/lit8 v18, p1, 0x1

    if-eqz v18, :cond_0

    .line 471
    const-string v18, "packageName="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", inputType=0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", imeOptions=0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", privateImeOptions="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    :cond_0
    and-int/lit8 v18, p1, 0x4

    if-eqz v18, :cond_2

    .line 475
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v18, v0

    and-int/lit8 v8, v18, 0xf

    .line 476
    .local v8, "inputTypeClass":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v14, v0, 0xff0

    .line 477
    .local v14, "inputTypeVariation":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v18, v0

    const v19, 0xfff000

    and-int v10, v18, v19

    .line 478
    .local v10, "inputTypeFlag":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v18, v0

    const/high16 v19, 0xf000000

    and-int v12, v18, v19

    .line 479
    .local v12, "inputTypeHtcFlag":I
    sget-object v18, Landroid/view/inputmethod/EditorInfo;->INPUTTYPE_NAMES:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/SparseArray;

    .line 480
    .local v16, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    sget-object v18, Landroid/view/inputmethod/EditorInfo;->INPUTTYPE_NAMES:Ljava/util/ArrayList;

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/SparseArray;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 481
    .local v9, "inputTypeClassStr":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 482
    .local v15, "inputTypeVariationStr":Ljava/lang/String;
    if-nez v15, :cond_1

    .line 483
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "(Undefined, 0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 484
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v10}, Landroid/view/inputmethod/EditorInfo;->getDescriptionFromFlag(Landroid/util/SparseArray;I)Ljava/lang/String;

    move-result-object v11

    .line 485
    .local v11, "inputTypeFlagStr":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v12}, Landroid/view/inputmethod/EditorInfo;->getDescriptionFromFlag(Landroid/util/SparseArray;I)Ljava/lang/String;

    move-result-object v13

    .line 486
    .local v13, "inputTypeHtcFlagStr":Ljava/lang/String;
    const-string v18, "\n  InputType [ CLASS="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", VARIATION="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", FLAG="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", HTC_FLAG="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .end local v8    # "inputTypeClass":I
    .end local v9    # "inputTypeClassStr":Ljava/lang/String;
    .end local v10    # "inputTypeFlag":I
    .end local v11    # "inputTypeFlagStr":Ljava/lang/String;
    .end local v12    # "inputTypeHtcFlag":I
    .end local v13    # "inputTypeHtcFlagStr":Ljava/lang/String;
    .end local v14    # "inputTypeVariation":I
    .end local v15    # "inputTypeVariationStr":Ljava/lang/String;
    .end local v16    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_2
    and-int/lit8 v18, p1, 0x8

    if-eqz v18, :cond_3

    .line 490
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v2, v0, 0xff

    .line 491
    .local v2, "imeOptionsAction":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    move/from16 v18, v0

    const/high16 v19, -0x10000

    and-int v4, v18, v19

    .line 492
    .local v4, "imeOptionsFlag":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    move/from16 v18, v0

    const v19, 0xff00

    and-int v7, v18, v19

    .line 493
    .local v7, "imeOptionsHtcFlag":I
    sget-object v18, Landroid/view/inputmethod/EditorInfo;->IME_OPTIONS_NAMES:Landroid/util/SparseArray;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 494
    .local v3, "imeOptionsActionStr":Ljava/lang/String;
    sget-object v18, Landroid/view/inputmethod/EditorInfo;->IME_OPTIONS_NAMES:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4}, Landroid/view/inputmethod/EditorInfo;->getDescriptionFromFlag(Landroid/util/SparseArray;I)Ljava/lang/String;

    move-result-object v6

    .line 495
    .local v6, "imeOptionsFlagStr":Ljava/lang/String;
    sget-object v18, Landroid/view/inputmethod/EditorInfo;->IME_OPTIONS_NAMES:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Landroid/view/inputmethod/EditorInfo;->getDescriptionFromFlag(Landroid/util/SparseArray;I)Ljava/lang/String;

    move-result-object v5

    .line 496
    .local v5, "imeOptionsFlagHtcStr":Ljava/lang/String;
    const-string v18, "\n  IMEOptions [ ACTION="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", FLAG="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", HTC_FLAG="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .end local v2    # "imeOptionsAction":I
    .end local v3    # "imeOptionsActionStr":Ljava/lang/String;
    .end local v4    # "imeOptionsFlag":I
    .end local v5    # "imeOptionsFlagHtcStr":Ljava/lang/String;
    .end local v6    # "imeOptionsFlagStr":Ljava/lang/String;
    .end local v7    # "imeOptionsHtcFlag":I
    :cond_3
    and-int/lit8 v18, p1, 0x2

    if-eqz v18, :cond_4

    .line 500
    const-string v18, "\n extras="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", initialSelStart="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", initialSelEnd="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", initialCapsMode=0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", label="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n actionId="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", actionLabel="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", fieldId="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", fieldName="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", hintText="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 505
    :cond_4
    const-string v18, " }"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18
.end method

.method public final makeCompatible(I)V
    .locals 2
    .param p1, "targetSdkVersion"    # I

    .prologue
    const v1, 0xfff000

    .line 338
    const/16 v0, 0xb

    if-ge p1, v0, :cond_0

    .line 339
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v0, 0xfff

    sparse-switch v0, :sswitch_data_0

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 341
    :sswitch_0
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x21

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 345
    :sswitch_1
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v0, v1

    or-int/lit16 v0, v0, 0x81

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 350
    :sswitch_2
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 339
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x12 -> :sswitch_2
        0xd1 -> :sswitch_0
        0xe1 -> :sswitch_1
    .end sparse-switch
.end method

.method public needToRenewIC()V
    .locals 3

    .prologue
    .line 463
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 464
    const-string v0, "EditorInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needToRenewIC imeOptions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return-void
.end method

.method public recordTransformationType(Landroid/text/method/TransformationMethod;)V
    .locals 1
    .param p1, "tm"    # Landroid/text/method/TransformationMethod;

    .prologue
    .line 429
    if-nez p1, :cond_0

    .line 431
    :cond_0
    instance-of v0, p1, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_2

    .line 432
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 437
    :cond_1
    :goto_0
    return-void

    .line 433
    :cond_2
    instance-of v0, p1, Landroid/text/method/HideReturnsTransformationMethod;

    if-eqz v0, :cond_3

    .line 434
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 435
    :cond_3
    instance-of v0, p1, Landroid/text/method/SingleLineTransformationMethod;

    if-eqz v0, :cond_1

    .line 436
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0
.end method

.method public setTransformationMethodIfExists(Landroid/widget/EditText;)V
    .locals 3
    .param p1, "eet"    # Landroid/widget/EditText;

    .prologue
    .line 441
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v2, 0xff00

    and-int v0, v1, v2

    .line 442
    .local v0, "type":I
    if-nez v0, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_2

    .line 445
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 446
    :cond_2
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_3

    .line 447
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 448
    :cond_3
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_0

    .line 449
    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 635
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/EditorInfo;->getInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 385
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 389
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 394
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 395
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 396
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 399
    return-void
.end method
