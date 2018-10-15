.class Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# static fields
.field private static final UNDEFINED:I = -0x80000000

.field private static final VIRTUAL_VIEW_ID_DECREMENT:I = 0x3

.field private static final VIRTUAL_VIEW_ID_INCREMENT:I = 0x1

.field private static final VIRTUAL_VIEW_ID_INPUT:I = 0x2


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)V
    .locals 1
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .prologue
    .line 2253
    iput-object p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2262
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2264
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2266
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method private createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 2592
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2593
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-class v1, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2594
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2595
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 2597
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2598
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2600
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2601
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2602
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v0, v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2605
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2606
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2607
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2628
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, v3, :cond_2

    .line 2629
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2631
    :cond_2
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, v3, :cond_3

    .line 2632
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2634
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2635
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getWrapSelectorWheel()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getMaxValue()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 2636
    :cond_4
    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2638
    :cond_5
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getWrapSelectorWheel()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getMinValue()I

    move-result v2

    if-le v1, v2, :cond_7

    .line 2639
    :cond_6
    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2643
    :cond_7
    return-object v0
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    const/4 v5, 0x1

    .line 2558
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 2559
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-class v4, Landroid/widget/Button;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2560
    iget-object v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2561
    iget-object v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v2, v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2562
    iget-object v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2563
    invoke-virtual {v2, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 2564
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2565
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2566
    iget-object v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->isEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2567
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2568
    .local v0, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2570
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2571
    move-object v1, v0

    .line 2572
    .local v1, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2573
    .local v3, "locationOnScreen":[I
    iget-object v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v4, v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getLocationOnScreen([I)V

    .line 2574
    const/4 v4, 0x0

    aget v4, v3, v4

    aget v5, v3, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2575
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2577
    iget v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v4, p1, :cond_0

    .line 2578
    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2580
    :cond_0
    iget v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v4, p1, :cond_1

    .line 2581
    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2583
    :cond_1
    iget-object v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2584
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2587
    :cond_2
    return-object v2
.end method

.method private createAccessibiltyNodeInfoForInputText()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 2545
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1700(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2546
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2547
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, v2, :cond_0

    .line 2548
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2550
    :cond_0
    iget v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, v2, :cond_1

    .line 2551
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2553
    :cond_1
    return-object v0
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .locals 2
    .param p1, "searchedLowerCase"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2512
    .local p3, "outResult":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    packed-switch p2, :pswitch_data_0

    .line 2542
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2514
    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2515
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2516
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2517
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2535
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2536
    .restart local v0    # "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2537
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2538
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2512
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2655
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1800(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 2656
    .local v0, "value":I
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1900(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2657
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v1, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$2000(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;I)I

    move-result v0

    .line 2659
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$2100(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 2660
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$600(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v1, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$2200(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;I)Ljava/lang/String;

    move-result-object v1

    .line 2663
    :goto_0
    return-object v1

    .line 2660
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .line 2661
    invoke-static {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$600(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$2100(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)I

    move-result v2

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    goto :goto_0

    .line 2663
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2667
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1800(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 2668
    .local v0, "value":I
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1900(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2669
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v1, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$2000(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;I)I

    move-result v0

    .line 2671
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$800(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 2672
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$600(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v1, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$2200(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;I)Ljava/lang/String;

    move-result-object v1

    .line 2675
    :goto_0
    return-object v1

    .line 2672
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .line 2673
    invoke-static {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$600(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$2100(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)I

    move-result v2

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    goto :goto_0

    .line 2675
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasVirtualDecrementButton()Z
    .locals 2

    .prologue
    .line 2647
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasVirtualIncrementButton()Z
    .locals 2

    .prologue
    .line 2651
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 2499
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2500
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2501
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2502
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2503
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2504
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2505
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2506
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2508
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    .line 2488
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2489
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2490
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1700(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2491
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1700(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2492
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2493
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2495
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8
    .param p1, "virtualViewId"    # I

    .prologue
    .line 2270
    packed-switch p1, :pswitch_data_0

    .line 2287
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2272
    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .line 2273
    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getBottom()I

    move-result v4

    iget-object v5, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v5}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 2272
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0

    .line 2275
    :pswitch_2
    const/4 v1, 0x3

    .line 2276
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getScrollX()I

    move-result v3

    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getScrollY()I

    move-result v4

    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .line 2277
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getScrollX()I

    move-result v0

    iget-object v5, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v5}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v6}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v0

    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .line 2278
    invoke-static {v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1200(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)I

    move-result v0

    iget-object v6, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v6}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1600(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)I

    move-result v6

    add-int/2addr v6, v0

    move-object v0, p0

    .line 2275
    invoke-direct/range {v0 .. v6}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0

    .line 2280
    :pswitch_3
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0

    .line 2282
    :pswitch_4
    const/4 v1, 0x1

    .line 2283
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getScrollX()I

    move-result v3

    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .line 2284
    invoke-static {v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1000(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)I

    move-result v0

    iget-object v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1600(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)I

    move-result v4

    sub-int v4, v0, v4

    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .line 2285
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getScrollX()I

    move-result v0

    iget-object v5, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v5}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v6}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v0

    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getScrollY()I

    move-result v0

    iget-object v6, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v6}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getBottom()I

    move-result v6

    iget-object v7, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v7}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v6, v0

    move-object v0, p0

    .line 2282
    invoke-direct/range {v0 .. v6}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto/16 :goto_0

    .line 2270
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "searched"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2293
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2294
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2316
    :goto_0
    return-object v0

    .line 2296
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2297
    .local v1, "searchedLowerCase":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2298
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    packed-switch p2, :pswitch_data_0

    .line 2316
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 2300
    :pswitch_1
    const/4 v2, 0x3

    invoke-direct {p0, v1, v2, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2302
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2304
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    goto :goto_0

    .line 2311
    :pswitch_2
    invoke-direct {p0, v1, p2, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    goto :goto_0

    .line 2298
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/high16 v5, 0x10000

    const v4, 0x8000

    const/high16 v3, -0x80000000

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2321
    packed-switch p1, :pswitch_data_0

    .line 2464
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    :cond_0
    :goto_1
    :sswitch_0
    return v0

    .line 2323
    :pswitch_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 2325
    :sswitch_1
    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_0

    .line 2326
    iput p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2328
    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move v0, v1

    .line 2329
    goto :goto_1

    .line 2333
    :sswitch_2
    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_0

    .line 2334
    iput v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2336
    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move v0, v1

    .line 2337
    goto :goto_1

    .line 2342
    :sswitch_3
    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .line 2343
    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getValue()I

    move-result v2

    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getMaxValue()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2344
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v2, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$100(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;Z)V

    move v0, v1

    .line 2345
    goto :goto_1

    .line 2349
    :sswitch_4
    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .line 2350
    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getValue()I

    move-result v2

    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getMinValue()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 2351
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v2, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$100(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;Z)V

    move v0, v1

    .line 2352
    goto :goto_1

    .line 2358
    :pswitch_2
    sparse-switch p2, :sswitch_data_1

    goto :goto_1

    .line 2372
    :sswitch_5
    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2373
    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1400(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)V

    move v0, v1

    .line 2374
    goto/16 :goto_1

    .line 2379
    :sswitch_6
    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_0

    .line 2380
    iput p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2381
    invoke-virtual {p0, p1, v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    move v0, v1

    .line 2384
    goto/16 :goto_1

    .line 2388
    :sswitch_7
    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_0

    .line 2389
    iput v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2390
    invoke-virtual {p0, p1, v5}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    move v0, v1

    .line 2393
    goto/16 :goto_1

    .line 2403
    :pswitch_3
    sparse-switch p2, :sswitch_data_2

    goto/16 :goto_1

    .line 2405
    :sswitch_8
    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2406
    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v2, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$100(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;Z)V

    .line 2407
    invoke-virtual {p0, p1, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    move v0, v1

    .line 2409
    goto/16 :goto_1

    .line 2413
    :sswitch_9
    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_0

    .line 2414
    iput p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2415
    invoke-virtual {p0, p1, v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2417
    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1000(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v5}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getBottom()I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->invalidate(IIII)V

    move v0, v1

    .line 2418
    goto/16 :goto_1

    .line 2422
    :sswitch_a
    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_0

    .line 2423
    iput v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2424
    invoke-virtual {p0, p1, v5}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2426
    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1000(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v5}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getBottom()I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->invalidate(IIII)V

    move v0, v1

    .line 2427
    goto/16 :goto_1

    .line 2433
    :pswitch_4
    sparse-switch p2, :sswitch_data_3

    goto/16 :goto_1

    .line 2435
    :sswitch_b
    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2436
    if-ne p1, v1, :cond_3

    move v0, v1

    .line 2437
    .local v0, "increment":Z
    :cond_3
    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v2, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$100(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;Z)V

    .line 2438
    invoke-virtual {p0, p1, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    move v0, v1

    .line 2440
    goto/16 :goto_1

    .line 2444
    .end local v0    # "increment":Z
    :sswitch_c
    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_0

    .line 2445
    iput p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2446
    invoke-virtual {p0, p1, v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2448
    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1200(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->invalidate(IIII)V

    move v0, v1

    .line 2449
    goto/16 :goto_1

    .line 2453
    :sswitch_d
    iget v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_0

    .line 2454
    iput v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2455
    invoke-virtual {p0, p1, v5}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2457
    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1200(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->invalidate(IIII)V

    move v0, v1

    .line 2458
    goto/16 :goto_1

    .line 2321
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 2323
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0x80 -> :sswitch_2
        0x1000 -> :sswitch_3
        0x2000 -> :sswitch_4
    .end sparse-switch

    .line 2358
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x10 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
    .end sparse-switch

    .line 2403
    :sswitch_data_2
    .sparse-switch
        0x10 -> :sswitch_8
        0x40 -> :sswitch_9
        0x80 -> :sswitch_a
    .end sparse-switch

    .line 2433
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_b
        0x40 -> :sswitch_c
        0x80 -> :sswitch_d
    .end sparse-switch
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    .line 2468
    packed-switch p1, :pswitch_data_0

    .line 2485
    :cond_0
    :goto_0
    return-void

    .line 2470
    :pswitch_0
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2472
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2471
    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 2476
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(I)V

    goto :goto_0

    .line 2479
    :pswitch_2
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2481
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2480
    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 2468
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
