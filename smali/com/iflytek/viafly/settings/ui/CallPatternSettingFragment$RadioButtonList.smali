.class public Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;
.super Ljava/lang/Object;
.source "CallPatternSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RadioButtonList"
.end annotation


# instance fields
.field private mBindKey:Ljava/lang/String;

.field private mContactFormatItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

.field private mRadioButtonParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mRootView:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private mSummaryItems:[Ljava/lang/String;

.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;Lcom/iflytek/base/skin/customView/XLinearLayout;Landroid/widget/LinearLayout$LayoutParams;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;
    .param p2, "pRootView"    # Lcom/iflytek/base/skin/customView/XLinearLayout;
    .param p3, "pParams"    # Landroid/widget/LinearLayout$LayoutParams;
    .param p4, "pSummaryItems"    # [Ljava/lang/String;
    .param p5, "pBindKey"    # Ljava/lang/String;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mRootView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 347
    iput-object p3, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mRadioButtonParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 348
    iput-object p5, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mBindKey:Ljava/lang/String;

    .line 349
    iput-object p4, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mSummaryItems:[Ljava/lang/String;

    .line 350
    return-void
.end method

.method static synthetic access$800(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;
    .param p1, "x1"    # I

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->onItemClick(I)V

    return-void
.end method

.method private onItemClick(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 365
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mContactFormatItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 366
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mContactFormatItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mContactFormatItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setChecked(Z)V

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->saveValue(Ljava/lang/Integer;)V

    .line 370
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mContactFormatItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setChecked(Z)V

    .line 371
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mSummaryItems:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->access$700(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;Ljava/lang/String;)V

    .line 373
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method protected defaultIndex()I
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method protected final getValue()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 357
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mBindKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public loadData(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 378
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mSummaryItems:[Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mSummaryItems:[Ljava/lang/String;

    array-length v6, v6

    if-nez v6, :cond_1

    .line 434
    :cond_0
    return-void

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->defaultIndex()I

    move-result v0

    .line 384
    .local v0, "defaultIndex":I
    if-ltz v0, :cond_2

    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mSummaryItems:[Ljava/lang/String;

    array-length v6, v6

    if-lt v0, v6, :cond_3

    .line 385
    :cond_2
    const/4 v0, 0x0

    .line 388
    :cond_3
    const/4 v3, 0x0

    .line 389
    .local v3, "selectedIndex":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->getValue()Ljava/lang/Integer;

    move-result-object v4

    .line 390
    .local v4, "selectedValue":Ljava/lang/Integer;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mSummaryItems:[Ljava/lang/String;

    array-length v7, v7

    if-lt v6, v7, :cond_5

    .line 391
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 392
    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->saveValue(Ljava/lang/Integer;)V

    .line 394
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 396
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    iget-object v7, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mSummaryItems:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-static {v6, v7}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->access$700(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;Ljava/lang/String;)V

    .line 398
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mSummaryItems:[Ljava/lang/String;

    array-length v6, v6

    new-array v6, v6, [Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    iput-object v6, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mContactFormatItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    .line 400
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mSummaryItems:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_0

    .line 401
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mContactFormatItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    new-instance v7, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    invoke-direct {v7, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;-><init>(Landroid/content/Context;)V

    aput-object v7, v6, v1

    .line 402
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mContactFormatItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mSummaryItems:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setTitle(Ljava/lang/String;)V

    .line 403
    if-ne v1, v3, :cond_7

    .line 404
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mContactFormatItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    aget-object v6, v6, v1

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setChecked(Z)V

    .line 419
    :goto_1
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mSummaryItems:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_6

    if-ltz v1, :cond_6

    .line 420
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mContactFormatItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    aget-object v6, v6, v1

    invoke-virtual {v6, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setBottomLine(Landroid/content/Context;)V

    .line 422
    :cond_6
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mContactFormatItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    invoke-virtual {v7}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-wide v8, 0x404b800000000000L    # 55.0

    invoke-static {v7, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setMinHeight(I)V

    .line 424
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mContactFormatItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->getView()Landroid/view/View;

    move-result-object v5

    .line 425
    .local v5, "tmpView":Landroid/view/View;
    move v2, v1

    .line 426
    .local v2, "index":I
    new-instance v6, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList$1;

    invoke-direct {v6, p0, v2}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList$1;-><init>(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mRootView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    iget-object v7, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mRadioButtonParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6, v5, v7}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    .end local v2    # "index":I
    .end local v5    # "tmpView":Landroid/view/View;
    :cond_7
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mContactFormatItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    aget-object v6, v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setChecked(Z)V

    goto :goto_1
.end method

.method protected final saveValue(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 361
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->mBindKey:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;I)V

    .line 362
    return-void
.end method
