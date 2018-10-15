.class public Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;,
        Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;,
        Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$CustomEditText;,
        Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;,
        Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$InputTextFilter;,
        Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$Formatter;,
        Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$OnScrollListener;,
        Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$OnValueChangeListener;,
        Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I = 0x0

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x1

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x3

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final sTwoDigitFormatter:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$TwoDigitFormatter;


# instance fields
.field private mAccessibilityNodeProvider:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;

.field private final mAdjustScroller:Lcom/iflytek/viafly/ui/customtimepicker/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Lcom/iflytek/viafly/ui/customtimepicker/Scroller;

.field private mFormatter:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mIncrementVirtualButtonPressed:Z

.field private mIngonreMoveEvents:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/TextView;

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$OnValueChangeListener;

.field private final mPressedStateHelper:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mShowSoftInputOnTap:Z

.field private final mSolidColor:I

.field private mTextColor:I

.field private final mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->sTwoDigitFormatter:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$TwoDigitFormatter;

    .line 1990
    const/16 v0, 0x1e

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 556
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 557
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 566
    const v0, 0x7f010001

    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 567
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 577
    invoke-direct/range {p0 .. p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 260
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mTextColor:I

    .line 305
    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mLongPressUpdateInterval:J

    .line 310
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 315
    const/4 v14, 0x3

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorIndices:[I

    .line 335
    const/high16 v14, -0x80000000

    move-object/from16 v0, p0

    iput v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mInitialScrollOffset:I

    .line 436
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mScrollState:I

    .line 487
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 580
    sget-object v14, Lcom/iflytek/cmcc/R$styleable;->NumberPicker:[I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v14, v2, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 582
    .local v4, "attributesArray":Landroid/content/res/TypedArray;
    const/16 v14, 0x8

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 585
    .local v10, "layoutResId":I
    if-eqz v10, :cond_0

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mHasSelectorWheel:Z

    .line 587
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSolidColor:I

    .line 589
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 591
    const/4 v14, 0x1

    const/high16 v15, 0x40000000    # 2.0f

    .line 593
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    .line 591
    invoke-static/range {v14 .. v16}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    float-to-int v8, v14

    .line 594
    .local v8, "defSelectionDividerHeight":I
    const/4 v14, 0x2

    invoke-virtual {v4, v14, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectionDividerHeight:I

    .line 597
    const/4 v14, 0x1

    const/high16 v15, 0x42400000    # 48.0f

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    .line 597
    invoke-static/range {v14 .. v16}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    float-to-int v7, v14

    .line 600
    .local v7, "defSelectionDividerDistance":I
    const/4 v14, 0x3

    invoke-virtual {v4, v14, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectionDividersDistance:I

    .line 603
    const/4 v14, 0x4

    const/4 v15, -0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinHeight:I

    .line 606
    const/4 v14, 0x5

    const/4 v15, -0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxHeight:I

    .line 608
    move-object/from16 v0, p0

    iget v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinHeight:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxHeight:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxHeight:I

    if-le v14, v15, :cond_1

    .line 610
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "minHeight > maxHeight"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 585
    .end local v7    # "defSelectionDividerDistance":I
    .end local v8    # "defSelectionDividerHeight":I
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 613
    .restart local v7    # "defSelectionDividerDistance":I
    .restart local v8    # "defSelectionDividerHeight":I
    :cond_1
    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinWidth:I

    .line 616
    const/4 v14, 0x7

    const/4 v15, -0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxWidth:I

    .line 618
    move-object/from16 v0, p0

    iget v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinWidth:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxWidth:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinWidth:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxWidth:I

    if-le v14, v15, :cond_2

    .line 620
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "minWidth > maxWidth"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 623
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxWidth:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_4

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mComputeMaxWidth:Z

    .line 625
    const/16 v14, 0x9

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 628
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 630
    new-instance v14, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;-><init>(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mPressedStateHelper:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;

    .line 637
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v14, :cond_5

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setWillNotDraw(Z)V

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string/jumbo v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 641
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v9, v10, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 643
    new-instance v11, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$1;-><init>(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)V

    .line 655
    .local v11, "onClickListener":Landroid/view/View$OnClickListener;
    new-instance v12, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$2;-><init>(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)V

    .line 669
    .local v12, "onLongClickListener":Landroid/view/View$OnLongClickListener;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v14, :cond_6

    .line 670
    const v14, 0x7f0b0002

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 671
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v12}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 678
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v14, :cond_7

    .line 679
    const v14, 0x7f0b0001

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 680
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v12}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 687
    :goto_4
    const v14, 0x7f0b0522

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mInputText:Landroid/widget/TextView;

    .line 706
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 707
    .local v6, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mTouchSlop:I

    .line 708
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinimumFlingVelocity:I

    .line 709
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v14

    div-int/lit8 v14, v14, 0x8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaximumFlingVelocity:I

    .line 711
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getTextSize()F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mTextSize:I

    .line 714
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 715
    .local v13, "paint":Landroid/graphics/Paint;
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 716
    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 717
    move-object/from16 v0, p0

    iget v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mTextSize:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 718
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 721
    const-string/jumbo v14, "#d5d5d5"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 722
    .local v5, "color":I
    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 723
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 726
    new-instance v14, Lcom/iflytek/viafly/ui/customtimepicker/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-direct/range {v14 .. v17}, Lcom/iflytek/viafly/ui/customtimepicker/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mFlingScroller:Lcom/iflytek/viafly/ui/customtimepicker/Scroller;

    .line 727
    new-instance v14, Lcom/iflytek/viafly/ui/customtimepicker/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v15

    new-instance v16, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v17, 0x40200000    # 2.5f

    invoke-direct/range {v16 .. v17}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct/range {v14 .. v16}, Lcom/iflytek/viafly/ui/customtimepicker/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mAdjustScroller:Lcom/iflytek/viafly/ui/customtimepicker/Scroller;

    .line 731
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x10

    if-lt v14, v15, :cond_3

    .line 733
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getImportantForAccessibility()I

    move-result v14

    if-nez v14, :cond_3

    .line 734
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setImportantForAccessibility(I)V

    .line 737
    :cond_3
    return-void

    .line 623
    .end local v5    # "color":I
    .end local v6    # "configuration":Landroid/view/ViewConfiguration;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v11    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v12    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    .end local v13    # "paint":Landroid/graphics/Paint;
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 637
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 674
    .restart local v9    # "inflater":Landroid/view/LayoutInflater;
    .restart local v11    # "onClickListener":Landroid/view/View$OnClickListener;
    .restart local v12    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    :cond_6
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_3

    .line 683
    :cond_7
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_4
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .prologue
    .line 96
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$1100(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .prologue
    .line 96
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic access$1300(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)J
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->showSoftInput()V

    return-void
.end method

.method static synthetic access$1502(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mIngonreMoveEvents:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .prologue
    .line 96
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectionDividerHeight:I

    return v0
.end method

.method static synthetic access$1700(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mInputText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .prologue
    .line 96
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mValue:I

    return v0
.end method

.method static synthetic access$1900(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;ZJ)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;I)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .prologue
    .line 96
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinValue:I

    return v0
.end method

.method static synthetic access$2200(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()[C
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$600(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .prologue
    .line 96
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxValue:I

    return v0
.end method

.method static synthetic access$900(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$902(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method private changeValueByOne(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1673
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 1675
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mFlingScroller:Lcom/iflytek/viafly/ui/customtimepicker/Scroller;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->moveToFinalScrollerPosition(Lcom/iflytek/viafly/ui/customtimepicker/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1676
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mAdjustScroller:Lcom/iflytek/viafly/ui/customtimepicker/Scroller;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->moveToFinalScrollerPosition(Lcom/iflytek/viafly/ui/customtimepicker/Scroller;)Z

    .line 1678
    :cond_0
    iput v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mPreviousScrollerY:I

    .line 1679
    if-eqz p1, :cond_1

    .line 1680
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mFlingScroller:Lcom/iflytek/viafly/ui/customtimepicker/Scroller;

    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/ui/customtimepicker/Scroller;->startScroll(IIIII)V

    .line 1684
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->invalidate()V

    .line 1692
    :goto_1
    return-void

    .line 1682
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mFlingScroller:Lcom/iflytek/viafly/ui/customtimepicker/Scroller;

    iget v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/ui/customtimepicker/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1686
    :cond_2
    if-eqz p1, :cond_3

    .line 1687
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1

    .line 1689
    :cond_3
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1793
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 1794
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1793
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1796
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1797
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 1798
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxValue:I

    .line 1800
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1801
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1802
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1810
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1811
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1825
    :goto_0
    return-void

    .line 1814
    :cond_0
    iget v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 1815
    :cond_1
    const-string/jumbo v2, ""

    .line 1824
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1817
    :cond_2
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1818
    iget v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 1819
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1820
    goto :goto_1

    .line 1821
    .end local v1    # "displayedValueIndex":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2073
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mInitialScrollOffset:I

    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 2074
    .local v4, "deltaY":I
    if-eqz v4, :cond_1

    .line 2075
    iput v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mPreviousScrollerY:I

    .line 2076
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    .line 2077
    if-lez v4, :cond_2

    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v4, v0

    .line 2079
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mAdjustScroller:Lcom/iflytek/viafly/ui/customtimepicker/Scroller;

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/ui/customtimepicker/Scroller;->startScroll(IIIII)V

    .line 2080
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->invalidate()V

    .line 2081
    const/4 v1, 0x1

    .line 2083
    :cond_1
    return v1

    .line 2077
    :cond_2
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorElementHeight:I

    goto :goto_0
.end method

.method private fling(I)V
    .locals 9
    .param p1, "velocityY"    # I

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1749
    iput v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mPreviousScrollerY:I

    .line 1751
    if-lez p1, :cond_0

    .line 1752
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mFlingScroller:Lcom/iflytek/viafly/ui/customtimepicker/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Lcom/iflytek/viafly/ui/customtimepicker/Scroller;->fling(IIIIIIII)V

    .line 1757
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->invalidate()V

    .line 1758
    return-void

    .line 1754
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mFlingScroller:Lcom/iflytek/viafly/ui/customtimepicker/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Lcom/iflytek/viafly/ui/customtimepicker/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mFormatter:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mFormatter:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 2680
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1943
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1945
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1969
    :goto_0
    return v1

    .line 1950
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1952
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1953
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1954
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 1950
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1963
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 1946
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    .line 1969
    :goto_2
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinValue:I

    goto :goto_0

    .line 1964
    .restart local v0    # "i":I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private getSupportAccessibilityNodeProvider()Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;
    .locals 2

    .prologue
    .line 2224
    new-instance v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;-><init>(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$1;)V

    return-object v0
.end method

.method public static final getTwoDigitFormatter()Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$Formatter;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->sTwoDigitFormatter:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1764
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 1765
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinValue:I

    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxValue:I

    iget v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1769
    .end local p1    # "selectorIndex":I
    :cond_0
    :goto_0
    return p1

    .line 1766
    .restart local p1    # "selectorIndex":I
    :cond_1
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 1767
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxValue:I

    iget v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 1215
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1216
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1217
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1218
    iget-boolean v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1222
    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1777
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 1778
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1777
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1780
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1781
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 1782
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinValue:I

    .line 1784
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1785
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1786
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 1712
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1713
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setFadingEdgeLength(I)V

    .line 1714
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .prologue
    .line 1695
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1696
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorIndices:[I

    .line 1697
    .local v1, "selectorIndices":[I
    array-length v5, v1

    iget v6, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mTextSize:I

    mul-int v4, v5, v6

    .line 1698
    .local v4, "totalTextHeight":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 1699
    .local v3, "totalTextGapHeight":F
    array-length v5, v1

    int-to-float v2, v5

    .line 1700
    .local v2, "textGapCount":F
    div-float v5, v3, v2

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorTextGapHeight:I

    .line 1701
    iget v5, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mTextSize:I

    iget v6, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorElementHeight:I

    .line 1704
    iget-object v5, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getBaseline()I

    move-result v5

    iget-object v6, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 1705
    .local v0, "editTextTextPosition":I
    iget v5, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x1

    sub-int v5, v0, v5

    iput v5, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mInitialScrollOffset:I

    .line 1707
    iget v5, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mInitialScrollOffset:I

    iput v5, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mCurrentScrollOffset:I

    .line 1709
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 1625
    iget-object v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1626
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorIndices:[I

    .line 1627
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getValue()I

    move-result v0

    .line 1628
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1629
    add-int/lit8 v4, v1, -0x1

    add-int v2, v0, v4

    .line 1630
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1631
    invoke-direct {p0, v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 1633
    :cond_0
    aput v2, v3, v1

    .line 1634
    aget v4, v3, v1

    invoke-direct {p0, v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1628
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1636
    .end local v2    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1548
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1559
    .end local p1    # "measureSpec":I
    :goto_0
    :sswitch_0
    return p1

    .line 1551
    .restart local p1    # "measureSpec":I
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1552
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1553
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_0

    .line 1561
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1557
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1559
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1553
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private moveToFinalScrollerPosition(Lcom/iflytek/viafly/ui/customtimepicker/Scroller;)Z
    .locals 7
    .param p1, "scroller"    # Lcom/iflytek/viafly/ui/customtimepicker/Scroller;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 795
    invoke-virtual {p1, v3}, Lcom/iflytek/viafly/ui/customtimepicker/Scroller;->forceFinished(Z)V

    .line 796
    invoke-virtual {p1}, Lcom/iflytek/viafly/ui/customtimepicker/Scroller;->getFinalY()I

    move-result v5

    invoke-virtual {p1}, Lcom/iflytek/viafly/ui/customtimepicker/Scroller;->getCurrY()I

    move-result v6

    sub-int v0, v5, v6

    .line 797
    .local v0, "amountToScroll":I
    iget v5, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorElementHeight:I

    rem-int v1, v5, v6

    .line 798
    .local v1, "futureScrollOffset":I
    iget v5, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mInitialScrollOffset:I

    sub-int v2, v5, v1

    .line 799
    .local v2, "overshootAdjustment":I
    if-eqz v2, :cond_2

    .line 800
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_0

    .line 801
    if-lez v2, :cond_1

    .line 802
    iget v5, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v2, v5

    .line 807
    :cond_0
    :goto_0
    add-int/2addr v0, v2

    .line 808
    invoke-virtual {p0, v4, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->scrollBy(II)V

    .line 811
    :goto_1
    return v3

    .line 804
    :cond_1
    iget v5, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v2, v5

    goto :goto_0

    :cond_2
    move v3, v4

    .line 811
    goto :goto_1
.end method

.method private notifyChange(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mOnValueChangeListener:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 1873
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mOnValueChangeListener:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$OnValueChangeListener;

    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$OnValueChangeListener;->onValueChange(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;II)V

    .line 1875
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .prologue
    .line 1736
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 1743
    :cond_0
    :goto_0
    return-void

    .line 1739
    :cond_1
    iput p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mScrollState:I

    .line 1740
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mOnScrollListener:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1741
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mOnScrollListener:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$OnScrollListener;->onScrollStateChange(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Lcom/iflytek/viafly/ui/customtimepicker/Scroller;)V
    .locals 2
    .param p1, "scroller"    # Lcom/iflytek/viafly/ui/customtimepicker/Scroller;

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mFlingScroller:Lcom/iflytek/viafly/ui/customtimepicker/Scroller;

    if-ne p1, v0, :cond_2

    .line 1721
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1724
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->onScrollStateChange(I)V

    .line 1730
    :cond_1
    :goto_0
    return-void

    .line 1726
    :cond_2
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 4

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 1907
    new-instance v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 1911
    :goto_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1912
    return-void

    .line 1909
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 2
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1884
    new-instance v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 1888
    :goto_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$400(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1889
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1890
    return-void

    .line 1886
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 1927
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1928
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1933
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_1

    .line 1934
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1936
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mPressedStateHelper:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->cancel()V

    .line 1937
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 1919
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1921
    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1897
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1899
    :cond_0
    return-void
.end method

.method public static resolveSizeAndState(III)I
    .locals 4
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I
    .param p2, "childMeasuredState"    # I

    .prologue
    .line 1599
    move v0, p0

    .line 1600
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1601
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1602
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 1617
    :goto_0
    const/high16 v3, -0x1000000

    and-int/2addr v3, p2

    or-int/2addr v3, v0

    return v3

    .line 1604
    :sswitch_0
    move v0, p0

    .line 1605
    goto :goto_0

    .line 1607
    :sswitch_1
    if-ge v2, p0, :cond_0

    .line 1608
    const/high16 v3, 0x1000000

    or-int v0, v2, v3

    goto :goto_0

    .line 1610
    :cond_0
    move v0, p0

    .line 1612
    goto :goto_0

    .line 1614
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 1602
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 1577
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1578
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1579
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->resolveSizeAndState(III)I

    move-result p2

    .line 1581
    .end local v0    # "desiredWidth":I
    .end local p2    # "measuredSize":I
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 1645
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mValue:I

    if-ne v1, p1, :cond_0

    .line 1663
    :goto_0
    return-void

    .line 1649
    :cond_0
    iget-boolean v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_2

    .line 1650
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1655
    :goto_1
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mValue:I

    .line 1656
    .local v0, "previous":I
    iput p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mValue:I

    .line 1658
    if-eqz p2, :cond_1

    .line 1659
    invoke-direct {p0, v0, p1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->notifyChange(II)V

    .line 1661
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1662
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1652
    .end local v0    # "previous":I
    :cond_2
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1653
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1
.end method

.method private showSoftInput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1201
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1202
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 1203
    iget-boolean v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1204
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1206
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 1207
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1209
    :cond_1
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 10

    .prologue
    .line 1228
    iget-boolean v8, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mComputeMaxWidth:Z

    if-nez v8, :cond_1

    .line 1265
    :cond_0
    :goto_0
    return-void

    .line 1231
    :cond_1
    const/4 v4, 0x0

    .line 1232
    .local v4, "maxTextWidth":I
    iget-object v8, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 1233
    const/4 v3, 0x0

    .line 1234
    .local v3, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v8, 0x9

    if-gt v2, v8, :cond_3

    .line 1235
    iget-object v8, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1236
    .local v1, "digitWidth":F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_2

    .line 1237
    move v3, v1

    .line 1234
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1240
    .end local v1    # "digitWidth":F
    :cond_3
    const/4 v5, 0x0

    .line 1241
    .local v5, "numberOfDigits":I
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxValue:I

    .line 1242
    .local v0, "current":I
    :goto_2
    if-lez v0, :cond_4

    .line 1243
    add-int/lit8 v5, v5, 0x1

    .line 1244
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 1246
    :cond_4
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1256
    .end local v0    # "current":I
    .end local v3    # "maxDigitWidth":F
    .end local v5    # "numberOfDigits":I
    :cond_5
    iget-object v8, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1257
    iget v8, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxWidth:I

    if-eq v8, v4, :cond_0

    .line 1258
    iget v8, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinWidth:I

    if-le v4, v8, :cond_8

    .line 1259
    iput v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxWidth:I

    .line 1263
    :goto_3
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1248
    .end local v2    # "i":I
    :cond_6
    iget-object v8, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 1249
    .local v7, "valueCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v7, :cond_5

    .line 1250
    iget-object v8, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1251
    .local v6, "textWidth":F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    .line 1252
    float-to-int v4, v6

    .line 1249
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1261
    .end local v6    # "textWidth":F
    .end local v7    # "valueCount":I
    :cond_8
    iget v8, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinWidth:I

    iput v8, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxWidth:I

    goto :goto_3
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 1053
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mFlingScroller:Lcom/iflytek/viafly/ui/customtimepicker/Scroller;

    .line 1054
    .local v1, "scroller":Lcom/iflytek/viafly/ui/customtimepicker/Scroller;
    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/customtimepicker/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1055
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mAdjustScroller:Lcom/iflytek/viafly/ui/customtimepicker/Scroller;

    .line 1056
    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/customtimepicker/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1072
    :goto_0
    return-void

    .line 1060
    :cond_0
    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/customtimepicker/Scroller;->computeScrollOffset()Z

    .line 1061
    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/customtimepicker/Scroller;->getCurrY()I

    move-result v0

    .line 1062
    .local v0, "currentScrollerY":I
    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 1063
    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/customtimepicker/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mPreviousScrollerY:I

    .line 1065
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->scrollBy(II)V

    .line 1066
    iput v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mPreviousScrollerY:I

    .line 1067
    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/customtimepicker/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1068
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->onScrollerFinished(Lcom/iflytek/viafly/ui/customtimepicker/Scroller;)V

    goto :goto_0

    .line 1070
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->invalidate()V

    goto :goto_0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x100

    const/16 v8, 0x80

    const/16 v7, 0x40

    const/4 v6, -0x1

    .line 1003
    iget-boolean v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v4, :cond_0

    .line 1004
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 1048
    :goto_0
    return v4

    .line 1007
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1008
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 1010
    .local v1, "eventY":I
    iget v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mTopSelectionDividerTop:I

    if-ge v1, v4, :cond_2

    .line 1011
    const/4 v2, 0x3

    .line 1017
    .local v2, "hoveredVirtualViewId":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 1018
    .local v0, "action":I
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getSupportAccessibilityNodeProvider()Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;

    move-result-object v3

    .line 1020
    .local v3, "provider":Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;
    packed-switch v0, :pswitch_data_0

    .line 1048
    .end local v0    # "action":I
    .end local v1    # "eventY":I
    .end local v2    # "hoveredVirtualViewId":I
    .end local v3    # "provider":Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;
    :cond_1
    :goto_2
    :pswitch_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1012
    .restart local v1    # "eventY":I
    :cond_2
    iget v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mBottomSelectionDividerBottom:I

    if-le v1, v4, :cond_3

    .line 1013
    const/4 v2, 0x1

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_1

    .line 1015
    .end local v2    # "hoveredVirtualViewId":I
    :cond_3
    const/4 v2, 0x2

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_1

    .line 1022
    .restart local v0    # "action":I
    .restart local v3    # "provider":Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;
    :pswitch_1
    invoke-virtual {v3, v2, v8}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;->sendAccessibilityEventForVirtualView(II)V

    .line 1024
    iput v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1025
    invoke-virtual {v3, v2, v7, v10}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 1029
    :pswitch_2
    iget v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v2, :cond_1

    iget v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v6, :cond_1

    .line 1031
    iget v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v3, v4, v9}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;->sendAccessibilityEventForVirtualView(II)V

    .line 1034
    invoke-virtual {v3, v2, v8}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;->sendAccessibilityEventForVirtualView(II)V

    .line 1036
    iput v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1037
    invoke-virtual {v3, v2, v7, v10}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 1042
    :pswitch_3
    invoke-virtual {v3, v2, v9}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;->sendAccessibilityEventForVirtualView(II)V

    .line 1044
    iput v6, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mLastHoveredChildVirtualViewId:I

    goto :goto_2

    .line 1020
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x1

    .line 954
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 955
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_0

    .line 986
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    :cond_1
    :goto_1
    return v2

    .line 958
    :sswitch_0
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 962
    :sswitch_1
    iget-boolean v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 965
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 967
    :pswitch_0
    iget-boolean v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-ne v0, v4, :cond_3

    .line 968
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getMaxValue()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 969
    :goto_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->requestFocus()Z

    .line 970
    iput v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 971
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->removeAllCallbacks()V

    .line 972
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mFlingScroller:Lcom/iflytek/viafly/ui/customtimepicker/Scroller;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/customtimepicker/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 973
    if-ne v0, v4, :cond_4

    move v1, v2

    :goto_3
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->changeValueByOne(Z)V

    goto :goto_1

    .line 968
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getMinValue()I

    move-result v3

    if-le v1, v3, :cond_0

    goto :goto_2

    .line 973
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 979
    :pswitch_1
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_0

    .line 980
    const/4 v1, -0x1

    iput v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    goto :goto_1

    .line 955
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 965
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 942
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 943
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 949
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 946
    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 943
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 991
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 992
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 998
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 995
    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 992
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 2

    .prologue
    .line 1531
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1532
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 1537
    :goto_0
    return-object v0

    .line 1534
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mAccessibilityNodeProvider:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;

    if-nez v0, :cond_1

    .line 1535
    new-instance v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;-><init>(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$1;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mAccessibilityNodeProvider:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;

    .line 1537
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mAccessibilityNodeProvider:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;

    iget-object v0, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;->mProvider:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;

    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1444
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1370
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1332
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 1124
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1439
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1323
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1276
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1449
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->removeAllCallbacks()V

    .line 1450
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1454
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v12, :cond_1

    .line 1455
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1518
    :cond_0
    :goto_0
    return-void

    .line 1458
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getRight()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getLeft()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-double v12, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    double-to-float v10, v12

    .line 1459
    .local v10, "x":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v11, v12

    .line 1462
    .local v11, "y":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mScrollState:I

    if-nez v12, :cond_3

    .line 1464
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mDecrementVirtualButtonPressed:Z

    if-eqz v12, :cond_2

    .line 1466
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v13, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1467
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getRight()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mTopSelectionDividerTop:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1468
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1470
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mIncrementVirtualButtonPressed:Z

    if-eqz v12, :cond_3

    .line 1472
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v13, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1473
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mBottomSelectionDividerBottom:I

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getRight()I

    move-result v15

    .line 1474
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getBottom()I

    move-result v16

    .line 1473
    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1475
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1480
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorIndices:[I

    .line 1481
    .local v7, "selectorIndices":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v12, v7

    if-ge v4, v12, :cond_6

    .line 1482
    aget v6, v7, v4

    .line 1483
    .local v6, "selectorIndex":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v12, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1489
    .local v5, "scrollSelectorValue":Ljava/lang/String;
    const/4 v12, 0x1

    if-eq v4, v12, :cond_4

    .line 1490
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const-string/jumbo v13, "#d5d5d5"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1491
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0701b7

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1492
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1501
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorElementHeight:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    .line 1481
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1494
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mTextColor:I

    if-nez v12, :cond_5

    .line 1495
    const-string/jumbo v12, "#515151"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mTextColor:I

    .line 1497
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mTextColor:I

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1498
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0701b6

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1499
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 1505
    .end local v5    # "scrollSelectorValue":Ljava/lang/String;
    .end local v6    # "selectorIndex":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_0

    .line 1507
    move-object/from16 v0, p0

    iget v9, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mTopSelectionDividerTop:I

    .line 1508
    .local v9, "topOfTopDivider":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectionDividerHeight:I

    add-int v3, v9, v12

    .line 1509
    .local v3, "bottomOfTopDivider":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getRight()I

    move-result v14

    invoke-virtual {v12, v13, v9, v14, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1510
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1513
    move-object/from16 v0, p0

    iget v2, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 1514
    .local v2, "bottomOfBottomDivider":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectionDividerHeight:I

    sub-int v8, v2, v12

    .line 1515
    .local v8, "topOfBottomDivider":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getRight()I

    move-result v14

    invoke-virtual {v12, v13, v8, v14, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1516
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1522
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1523
    const-class v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1524
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1525
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinValue:I

    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1526
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1527
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 816
    iget-boolean v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 864
    :goto_0
    return v1

    .line 819
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 820
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 864
    goto :goto_0

    .line 822
    :pswitch_0
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->removeAllCallbacks()V

    .line 824
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mLastDownEventY:F

    iput v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mLastDownOrMoveEventY:F

    .line 826
    iput-boolean v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mIngonreMoveEvents:Z

    .line 827
    iput-boolean v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mShowSoftInputOnTap:Z

    .line 829
    iget v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 830
    iget v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mScrollState:I

    if-nez v3, :cond_2

    .line 831
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mPressedStateHelper:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 841
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 842
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mFlingScroller:Lcom/iflytek/viafly/ui/customtimepicker/Scroller;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/customtimepicker/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4

    .line 843
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mFlingScroller:Lcom/iflytek/viafly/ui/customtimepicker/Scroller;

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/ui/customtimepicker/Scroller;->forceFinished(Z)V

    .line 844
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mAdjustScroller:Lcom/iflytek/viafly/ui/customtimepicker/Scroller;

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/ui/customtimepicker/Scroller;->forceFinished(Z)V

    .line 845
    invoke-direct {p0, v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 834
    :cond_3
    iget v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 835
    iget v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mScrollState:I

    if-nez v3, :cond_2

    .line 836
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mPressedStateHelper:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_1

    .line 846
    :cond_4
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mAdjustScroller:Lcom/iflytek/viafly/ui/customtimepicker/Scroller;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/customtimepicker/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 847
    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mFlingScroller:Lcom/iflytek/viafly/ui/customtimepicker/Scroller;

    invoke-virtual {v2, v1}, Lcom/iflytek/viafly/ui/customtimepicker/Scroller;->forceFinished(Z)V

    .line 848
    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mAdjustScroller:Lcom/iflytek/viafly/ui/customtimepicker/Scroller;

    invoke-virtual {v2, v1}, Lcom/iflytek/viafly/ui/customtimepicker/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 849
    :cond_5
    iget v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 850
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->hideSoftInput()V

    .line 852
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v4, v3

    .line 851
    invoke-direct {p0, v2, v4, v5}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_0

    .line 853
    :cond_6
    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mLastDownEventY:F

    iget v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 854
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->hideSoftInput()V

    .line 856
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 855
    invoke-direct {p0, v1, v2, v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_0

    .line 858
    :cond_7
    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mShowSoftInputOnTap:Z

    .line 859
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    goto/16 :goto_0

    .line 820
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 741
    iget-boolean v8, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v8, :cond_1

    .line 742
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getMeasuredWidth()I

    move-result v7

    .line 746
    .local v7, "msrdWdth":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getMeasuredHeight()I

    move-result v6

    .line 749
    .local v6, "msrdHght":I
    iget-object v8, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 750
    .local v3, "inptTxtMsrdWdth":I
    iget-object v8, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 751
    .local v2, "inptTxtMsrdHght":I
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 752
    .local v1, "inptTxtLeft":I
    sub-int v8, v6, v2

    div-int/lit8 v5, v8, 0x2

    .line 753
    .local v5, "inptTxtTop":I
    add-int v4, v1, v3

    .line 754
    .local v4, "inptTxtRight":I
    add-int v0, v5, v2

    .line 755
    .local v0, "inptTxtBottom":I
    iget-object v8, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v8, v1, v5, v4, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 757
    if-eqz p1, :cond_0

    .line 759
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->initializeSelectorWheel()V

    .line 760
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->initializeFadingEdges()V

    .line 761
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mTopSelectionDividerTop:I

    .line 763
    iget v8, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mTopSelectionDividerTop:I

    iget v9, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectionDividerHeight:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectionDividersDistance:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mBottomSelectionDividerBottom:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 770
    iget-boolean v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v4, :cond_0

    .line 771
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 784
    :goto_0
    return-void

    .line 775
    :cond_0
    iget v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->makeMeasureSpec(II)I

    move-result v2

    .line 776
    .local v2, "newWidthMeasureSpec":I
    iget v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 777
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 779
    iget v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 781
    .local v3, "widthSize":I
    iget v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 783
    .local v0, "heightSize":I
    invoke-virtual {p0, v3, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 869
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v10, :cond_2

    :cond_0
    move v8, v9

    .line 937
    :cond_1
    :goto_0
    return v8

    .line 872
    :cond_2
    iget-object v10, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_3

    .line 873
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 875
    :cond_3
    iget-object v10, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 876
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    and-int/lit16 v0, v10, 0xff

    .line 877
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 897
    :pswitch_0
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->removeBeginSoftInputCommand()V

    .line 898
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 899
    iget-object v10, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mPressedStateHelper:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;

    invoke-virtual {v10}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->cancel()V

    .line 900
    iget-object v7, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 901
    .local v7, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v10, 0x3e8

    iget v11, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v11, v11

    invoke-virtual {v7, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 902
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    float-to-int v5, v10

    .line 903
    .local v5, "initialVelocity":I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinimumFlingVelocity:I

    if-le v10, v11, :cond_6

    .line 904
    invoke-direct {p0, v5}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->fling(I)V

    .line 905
    invoke-direct {p0, v12}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->onScrollStateChange(I)V

    .line 933
    :goto_1
    iget-object v9, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 934
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 879
    .end local v5    # "initialVelocity":I
    .end local v7    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_1
    iget-boolean v10, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mIngonreMoveEvents:Z

    if-nez v10, :cond_1

    .line 882
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 883
    .local v1, "currentMoveY":F
    iget v10, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mScrollState:I

    if-eq v10, v8, :cond_5

    .line 884
    iget v9, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mLastDownEventY:F

    sub-float v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v2, v9

    .line 885
    .local v2, "deltaDownY":I
    iget v9, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mTouchSlop:I

    if-le v2, v9, :cond_4

    .line 886
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->removeAllCallbacks()V

    .line 887
    invoke-direct {p0, v8}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->onScrollStateChange(I)V

    .line 894
    .end local v2    # "deltaDownY":I
    :cond_4
    :goto_2
    iput v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mLastDownOrMoveEventY:F

    goto :goto_0

    .line 890
    :cond_5
    iget v10, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v10, v1, v10

    float-to-int v3, v10

    .line 891
    .local v3, "deltaMoveY":I
    invoke-virtual {p0, v9, v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->scrollBy(II)V

    .line 892
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->invalidate()V

    goto :goto_2

    .line 907
    .end local v1    # "currentMoveY":F
    .end local v3    # "deltaMoveY":I
    .restart local v5    # "initialVelocity":I
    .restart local v7    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v4, v10

    .line 908
    .local v4, "eventY":I
    int-to-float v10, v4

    iget v11, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 911
    .restart local v3    # "deltaMoveY":I
    iget v10, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mTouchSlop:I

    if-gt v3, v10, :cond_a

    .line 912
    iget-boolean v10, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mShowSoftInputOnTap:Z

    if-eqz v10, :cond_8

    .line 913
    iput-boolean v9, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mShowSoftInputOnTap:Z

    .line 914
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->showSoftInput()V

    .line 931
    :cond_7
    :goto_3
    invoke-direct {p0, v9}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_1

    .line 916
    :cond_8
    iget v10, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorElementHeight:I

    div-int v10, v4, v10

    add-int/lit8 v6, v10, -0x1

    .line 918
    .local v6, "selectorIndexOffset":I
    if-lez v6, :cond_9

    .line 919
    invoke-direct {p0, v8}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->changeValueByOne(Z)V

    .line 920
    iget-object v10, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mPressedStateHelper:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;

    invoke-virtual {v10, v8}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_3

    .line 922
    :cond_9
    if-gez v6, :cond_7

    .line 923
    invoke-direct {p0, v9}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->changeValueByOne(Z)V

    .line 924
    iget-object v10, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mPressedStateHelper:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;

    invoke-virtual {v10, v12}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_3

    .line 929
    .end local v6    # "selectorIndexOffset":I
    :cond_a
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_3

    .line 877
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x1

    .line 1092
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorIndices:[I

    .line 1093
    .local v0, "selectorIndices":[I
    iget-boolean v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_1

    if-lez p2, :cond_1

    aget v1, v0, v3

    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_1

    .line 1095
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mCurrentScrollOffset:I

    .line 1120
    :cond_0
    :goto_0
    return-void

    .line 1098
    :cond_1
    iget-boolean v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-gez p2, :cond_2

    aget v1, v0, v3

    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_2

    .line 1100
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1103
    :cond_2
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mCurrentScrollOffset:I

    .line 1104
    :cond_3
    :goto_1
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_4

    .line 1105
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mCurrentScrollOffset:I

    .line 1106
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->decrementSelectorIndices([I)V

    .line 1107
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setValueInternal(IZ)V

    .line 1108
    iget-boolean v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    aget v1, v0, v3

    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_3

    .line 1109
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 1112
    :cond_4
    :goto_2
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 1113
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mCurrentScrollOffset:I

    .line 1114
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->incrementSelectorIndices([I)V

    .line 1115
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setValueInternal(IZ)V

    .line 1116
    iget-boolean v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_4

    .line 1117
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_2
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1435
    :goto_0
    return-void

    .line 1424
    :cond_0
    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1425
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1433
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1434
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1424
    :cond_2
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1076
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1077
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1080
    :cond_0
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_1

    .line 1081
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1084
    :cond_1
    if-nez p1, :cond_2

    .line 1085
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mTextColor:I

    .line 1086
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->invalidate()V

    .line 1088
    :cond_2
    return-void
.end method

.method public setFormatter(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$Formatter;

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mFormatter:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1163
    :goto_0
    return-void

    .line 1160
    :cond_0
    iput-object p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mFormatter:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$Formatter;

    .line 1161
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->initializeSelectorWheelIndices()V

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 3
    .param p1, "maxValue"    # I

    .prologue
    .line 1384
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 1400
    :goto_0
    return-void

    .line 1387
    :cond_0
    if-gez p1, :cond_1

    .line 1388
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1390
    :cond_1
    iput p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxValue:I

    .line 1391
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mValue:I

    if-ge v1, v2, :cond_2

    .line 1392
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxValue:I

    iput v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mValue:I

    .line 1394
    :cond_2
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1395
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1396
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1398
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->tryComputeMaxWidth()V

    .line 1399
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1394
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .param p1, "minValue"    # I

    .prologue
    .line 1346
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 1362
    :goto_0
    return-void

    .line 1349
    :cond_0
    if-gez p1, :cond_1

    .line 1350
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1352
    :cond_1
    iput p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinValue:I

    .line 1353
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinValue:I

    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mValue:I

    if-le v1, v2, :cond_2

    .line 1354
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinValue:I

    iput v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mValue:I

    .line 1356
    :cond_2
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1357
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1358
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1360
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->tryComputeMaxWidth()V

    .line 1361
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1356
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 1
    .param p1, "intervalMillis"    # J

    .prologue
    .line 1314
    iput-wide p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mLongPressUpdateInterval:J

    .line 1315
    return-void
.end method

.method public setOnScrollListener(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$OnScrollListener;

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mOnScrollListener:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$OnScrollListener;

    .line 1143
    return-void
.end method

.method public setOnValueChangedListener(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$OnValueChangeListener;

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mOnValueChangeListener:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$OnValueChangeListener;

    .line 1134
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1194
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setValueInternal(IZ)V

    .line 1195
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 3
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 1297
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1298
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_1

    .line 1299
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->mWrapSelectorWheel:Z

    .line 1301
    :cond_1
    return-void

    .line 1297
    .end local v0    # "wrappingAllowed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
