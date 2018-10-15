.class public Lcom/iflytek/viafly/ui/SimpleDialog$Builder;
.super Ljava/lang/Object;
.source "SimpleDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/SimpleDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;
    }
.end annotation


# instance fields
.field private leftButton:Lcom/iflytek/base/skin/customView/XTextView;

.field private mContentView:Landroid/view/View;

.field private mContentViewHeight:I

.field private mContext:Landroid/content/Context;

.field private mDescription:Ljava/lang/String;

.field private mDialog:Lcom/iflytek/viafly/ui/SimpleDialog;

.field private mIsCanceledOnTouchOutside:Z

.field private mIsLeftNeedDismiss:Z

.field private mIsRightNeedDismiss:Z

.field private mIsSingleButton:Z

.field private mIsSingleNeedDismiss:Z

.field private mIsTitleSingleLine:Z

.field private mLeftButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mLeftButtonText:Ljava/lang/String;

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mRightButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mRightButtonStatus:Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;

.field private mRightButtonText:Ljava/lang/String;

.field private mSingleButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mSingleButtonStatus:Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;

.field private mSingleButtonText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private rightButton:Lcom/iflytek/base/skin/customView/XTextView;

.field private singleButton:Lcom/iflytek/base/skin/customView/XTextView;

.field private titleView:Lcom/iflytek/base/skin/customView/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-boolean v2, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mIsTitleSingleLine:Z

    .line 179
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mContentViewHeight:I

    .line 181
    iput-boolean v2, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mIsSingleButton:Z

    .line 182
    sget-object v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;->CANCLE:Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mSingleButtonStatus:Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;

    .line 186
    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mIsSingleNeedDismiss:Z

    .line 191
    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mIsLeftNeedDismiss:Z

    .line 195
    sget-object v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;->CANCLE:Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mRightButtonStatus:Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;

    .line 197
    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mIsRightNeedDismiss:Z

    .line 199
    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mIsCanceledOnTouchOutside:Z

    .line 206
    iput-object p1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mContext:Landroid/content/Context;

    .line 207
    return-void
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/ui/SimpleDialog$Builder;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mSingleButtonOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/ui/SimpleDialog$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mIsSingleNeedDismiss:Z

    return v0
.end method

.method static synthetic access$400(Lcom/iflytek/viafly/ui/SimpleDialog$Builder;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mLeftButtonOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/iflytek/viafly/ui/SimpleDialog$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mIsLeftNeedDismiss:Z

    return v0
.end method

.method static synthetic access$600(Lcom/iflytek/viafly/ui/SimpleDialog$Builder;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mRightButtonOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/iflytek/viafly/ui/SimpleDialog$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mIsRightNeedDismiss:Z

    return v0
.end method

.method private setXButtonBackground(Lcom/iflytek/base/skin/customView/XTextView;Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;)V
    .locals 2
    .param p1, "button"    # Lcom/iflytek/base/skin/customView/XTextView;
    .param p2, "buttonBgStatus"    # Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;

    .prologue
    .line 555
    sget-object v0, Lcom/iflytek/viafly/ui/SimpleDialog$2;->$SwitchMap$com$iflytek$viafly$ui$SimpleDialog$Builder$ButtonStatus:[I

    invoke-virtual {p2}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 572
    const-string/jumbo v0, "statelist.dialog_btn_cancel_status"

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {p1, v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 576
    :goto_0
    return-void

    .line 557
    :pswitch_0
    const-string/jumbo v0, "statelist.dialog_btn_cancel_status"

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {p1, v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    .line 562
    :pswitch_1
    const-string/jumbo v0, "statelist.dialog_btn_confirm_status"

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {p1, v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    .line 567
    :pswitch_2
    const-string/jumbo v0, "statelist.dialog_btn_warn_status"

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {p1, v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    .line 555
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public create()Lcom/iflytek/viafly/ui/SimpleDialog;
    .locals 17

    .prologue
    .line 379
    new-instance v5, Lcom/iflytek/viafly/ui/SimpleDialog;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v5, v12}, Lcom/iflytek/viafly/ui/SimpleDialog;-><init>(Landroid/content/Context;)V

    .line 380
    .local v5, "dialog":Lcom/iflytek/viafly/ui/SimpleDialog;
    new-instance v10, Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v10, v12}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 381
    .local v10, "rootView":Lcom/iflytek/base/skin/customView/XLinearLayout;
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 382
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v6, v12, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 385
    .local v6, "layoutParam":Landroid/view/ViewGroup$LayoutParams;
    new-instance v12, Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->titleView:Lcom/iflytek/base/skin/customView/XTextView;

    .line 386
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mTitle:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 387
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->titleView:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v13, "image.mainpage_list_top"

    sget-object v14, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v12, v13, v14}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->titleView:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mTitle:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->titleView:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v13, "style_contact_select_dialog_title"

    sget-object v14, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v12, v13, v14}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->titleView:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 391
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->titleView:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mIsTitleSingleLine:Z

    invoke-virtual {v12, v13}, Lcom/iflytek/base/skin/customView/XTextView;->setSingleLine(Z)V

    .line 392
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->titleView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v10, v12}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->titleView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v12}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v12

    const-string/jumbo v13, "103"

    invoke-virtual {v12, v13}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinHeight(Ljava/lang/String;)V

    .line 396
    :cond_0
    new-instance v3, Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v3, v12}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 397
    .local v3, "desAndButtons":Lcom/iflytek/base/skin/customView/XLinearLayout;
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 398
    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v12}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    const-string/jumbo v12, "image.mainpage_list_mid"

    sget-object v13, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v12, v13}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 401
    new-instance v2, Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v12}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 402
    .local v2, "contentView":Lcom/iflytek/base/skin/customView/XLinearLayout;
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 403
    const/16 v12, 0x11

    invoke-virtual {v2, v12}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setGravity(I)V

    .line 404
    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v12}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    invoke-virtual {v3, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 406
    move-object/from16 v0, p0

    iget v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mContentViewHeight:I

    const/4 v13, -0x2

    if-eq v12, v13, :cond_1

    .line 407
    move-object/from16 v0, p0

    iget v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mContentViewHeight:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_9

    .line 408
    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mContentViewHeight:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinHeight(Ljava/lang/String;)V

    .line 413
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v12

    const-string/jumbo v13, "40"

    const-string/jumbo v14, "0"

    const-string/jumbo v15, "40"

    const-string/jumbo v16, "0"

    invoke-virtual/range {v12 .. v16}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mContentView:Landroid/view/View;

    if-eqz v12, :cond_a

    .line 415
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v12}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 425
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 426
    .local v1, "buttonContainer":Lcom/iflytek/base/skin/customView/XLinearLayout;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mLeftButtonText:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mRightButtonText:Ljava/lang/String;

    .line 427
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mSingleButtonText:Ljava/lang/String;

    .line 428
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 429
    :cond_3
    new-instance v1, Lcom/iflytek/base/skin/customView/XLinearLayout;

    .end local v1    # "buttonContainer":Lcom/iflytek/base/skin/customView/XLinearLayout;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v12}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 430
    .restart local v1    # "buttonContainer":Lcom/iflytek/base/skin/customView/XLinearLayout;
    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v12}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mSingleButtonText:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 434
    new-instance v12, Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    .line 435
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mSingleButtonText:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 437
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v13, "style_dialog_cancle_text"

    sget-object v14, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v12, v13, v14}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 438
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 439
    .local v11, "singleButtonLp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 440
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v12, v11}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v12}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v12

    const-string/jumbo v13, "40"

    const-string/jumbo v14, "20"

    const-string/jumbo v15, "40"

    const-string/jumbo v16, "52"

    invoke-virtual/range {v12 .. v16}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v12}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v12

    const-string/jumbo v13, "90"

    invoke-virtual {v12, v13}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinHeight(Ljava/lang/String;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mSingleButtonStatus:Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setXButtonBackground(Lcom/iflytek/base/skin/customView/XTextView;Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v13, Lcom/iflytek/viafly/ui/SimpleDialog$Builder$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder$1;-><init>(Lcom/iflytek/viafly/ui/SimpleDialog$Builder;Lcom/iflytek/viafly/ui/SimpleDialog;)V

    invoke-virtual {v12, v13}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mIsSingleButton:Z

    if-eqz v12, :cond_b

    .line 458
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 465
    .end local v11    # "singleButtonLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mLeftButtonText:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 466
    new-instance v12, Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    .line 467
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mLeftButtonText:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 469
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v13, "style_dialog_cancle_text"

    sget-object v14, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v12, v13, v14}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 470
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v7, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 471
    .local v7, "leftButtonLp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 472
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v12, v7}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v12}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v12

    const-string/jumbo v13, "40"

    const-string/jumbo v14, "20"

    const-string/jumbo v15, "10"

    const-string/jumbo v16, "52"

    invoke-virtual/range {v12 .. v16}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v12}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v12

    const-string/jumbo v13, "90"

    invoke-virtual {v12, v13}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinHeight(Ljava/lang/String;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v13, "statelist.dialog_btn_cancel_status"

    sget-object v14, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v12, v13, v14}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v13, Lcom/iflytek/viafly/ui/SimpleDialog$Builder$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder$2;-><init>(Lcom/iflytek/viafly/ui/SimpleDialog$Builder;Lcom/iflytek/viafly/ui/SimpleDialog;)V

    invoke-virtual {v12, v13}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mIsSingleButton:Z

    if-eqz v12, :cond_c

    .line 491
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 498
    .end local v7    # "leftButtonLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mRightButtonText:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 499
    new-instance v12, Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    .line 500
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mRightButtonText:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v13, "style_dialog_cancle_text"

    sget-object v14, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v12, v13, v14}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 503
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v9, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 504
    .local v9, "rightButtonLp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 505
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v12, v9}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v12}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v12

    const-string/jumbo v13, "10"

    const-string/jumbo v14, "20"

    const-string/jumbo v15, "40"

    const-string/jumbo v16, "52"

    invoke-virtual/range {v12 .. v16}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v12}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v12

    const-string/jumbo v13, "90"

    invoke-virtual {v12, v13}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinHeight(Ljava/lang/String;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mRightButtonStatus:Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setXButtonBackground(Lcom/iflytek/base/skin/customView/XTextView;Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v13, Lcom/iflytek/viafly/ui/SimpleDialog$Builder$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder$3;-><init>(Lcom/iflytek/viafly/ui/SimpleDialog$Builder;Lcom/iflytek/viafly/ui/SimpleDialog;)V

    invoke-virtual {v12, v13}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mIsSingleButton:Z

    if-eqz v12, :cond_d

    .line 524
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 529
    .end local v9    # "rightButtonLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    :goto_4
    invoke-virtual {v3, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 531
    :cond_7
    invoke-virtual {v10, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 533
    invoke-virtual {v5, v10, v6}, Lcom/iflytek/viafly/ui/SimpleDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Lcom/iflytek/viafly/ui/SimpleDialog;->setCancelable(Z)V

    .line 535
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mIsCanceledOnTouchOutside:Z

    invoke-virtual {v5, v12}, Lcom/iflytek/viafly/ui/SimpleDialog;->setCanceledOnTouchOutside(Z)V

    .line 536
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v12, :cond_8

    .line 537
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v5, v12}, Lcom/iflytek/viafly/ui/SimpleDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 540
    :cond_8
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/SimpleDialog;

    .line 542
    invoke-virtual {v5}, Lcom/iflytek/viafly/ui/SimpleDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 543
    .local v8, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lhl;->d(Landroid/content/Context;)I

    move-result v12

    iput v12, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 544
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/SimpleDialog;

    invoke-virtual {v12}, Lcom/iflytek/viafly/ui/SimpleDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 546
    return-object v5

    .line 410
    .end local v1    # "buttonContainer":Lcom/iflytek/base/skin/customView/XLinearLayout;
    .end local v8    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_9
    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v12

    const-string/jumbo v13, "208"

    invoke-virtual {v12, v13}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinHeight(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 416
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mDescription:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 417
    new-instance v4, Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v4, v12}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 418
    .local v4, "descriptionView":Lcom/iflytek/base/skin/customView/XTextView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mDescription:Ljava/lang/String;

    invoke-virtual {v4, v12}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    const/16 v12, 0x10

    invoke-virtual {v4, v12}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 420
    const-string/jumbo v12, "style_dialog_content_text"

    sget-object v13, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v4, v12, v13}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 421
    invoke-virtual {v2, v4}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 460
    .end local v4    # "descriptionView":Lcom/iflytek/base/skin/customView/XTextView;
    .restart local v1    # "buttonContainer":Lcom/iflytek/base/skin/customView/XLinearLayout;
    .restart local v11    # "singleButtonLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 493
    .end local v11    # "singleButtonLp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v7    # "leftButtonLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 526
    .end local v7    # "leftButtonLp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v9    # "rightButtonLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/SimpleDialog;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/SimpleDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/SimpleDialog;->dismiss()V

    .line 636
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLeftButton()Lcom/iflytek/base/skin/customView/XTextView;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    return-object v0
.end method

.method public getRightButton()Lcom/iflytek/base/skin/customView/XTextView;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    return-object v0
.end method

.method public getSingleButton()Lcom/iflytek/base/skin/customView/XTextView;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    return-object v0
.end method

.method public getTitleView()Lcom/iflytek/base/skin/customView/XTextView;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->titleView:Lcom/iflytek/base/skin/customView/XTextView;

    return-object v0
.end method

.method public isDialogShowing()Z
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/SimpleDialog;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/SimpleDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/SimpleDialog;->isShowing()Z

    move-result v0

    .line 646
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 367
    return-object p0
.end method

.method public setContentView(Landroid/view/View;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mContentView:Landroid/view/View;

    .line 250
    return-object p0
.end method

.method public setContentView(Landroid/view/View;I)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "height"    # I

    .prologue
    .line 260
    iput-object p1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mContentView:Landroid/view/View;

    .line 261
    iput p2, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mContentViewHeight:I

    .line 262
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;
    .locals 0
    .param p1, "des"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mDescription:Ljava/lang/String;

    .line 240
    return-object p0
.end method

.method public setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;
    .locals 0
    .param p1, "isCanceledOnTouchOutside"    # Z

    .prologue
    .line 374
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mIsCanceledOnTouchOutside:Z

    .line 375
    return-object p0
.end method

.method public setIsNeedDismiss(ZZ)V
    .locals 0
    .param p1, "isLeftDismiss"    # Z
    .param p2, "isRightDismiss"    # Z

    .prologue
    .line 679
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mIsLeftNeedDismiss:Z

    .line 680
    iput-boolean p2, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mIsRightNeedDismiss:Z

    .line 681
    return-void
.end method

.method public setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;
    .locals 0
    .param p1, "btnText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mLeftButtonText:Ljava/lang/String;

    .line 315
    iput-object p2, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mLeftButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 316
    return-object p0
.end method

.method public setLeftButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;
    .locals 0
    .param p1, "btnText"    # Ljava/lang/String;
    .param p2, "btnBg"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mLeftButtonText:Ljava/lang/String;

    .line 328
    iput-object p3, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mLeftButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 329
    return-object p0
.end method

.method public setRightButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;
    .locals 0
    .param p1, "btnText"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mRightButtonText:Ljava/lang/String;

    .line 342
    iput-object p2, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mRightButtonStatus:Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;

    .line 343
    iput-object p3, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mRightButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 344
    return-object p0
.end method

.method public setRightButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;
    .locals 1
    .param p1, "btnText"    # Ljava/lang/String;
    .param p2, "btnBg"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mRightButtonText:Ljava/lang/String;

    .line 356
    sget-object v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mRightButtonStatus:Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;

    .line 357
    iput-object p3, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mRightButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 358
    return-object p0
.end method

.method public setRightButtonStatus(Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mRightButtonStatus:Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;

    .line 304
    return-void
.end method

.method public setSingleButton(ZLjava/lang/String;Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;
    .locals 0
    .param p1, "isSingle"    # Z
    .param p2, "btnText"    # Ljava/lang/String;
    .param p3, "status"    # Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;
    .param p4, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 274
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mIsSingleButton:Z

    .line 275
    iput-object p2, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mSingleButtonText:Ljava/lang/String;

    .line 276
    iput-object p3, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mSingleButtonStatus:Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;

    .line 277
    iput-object p4, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mSingleButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 278
    return-object p0
.end method

.method public setSingleButtonStatus(Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mSingleButtonStatus:Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;

    .line 296
    return-void
.end method

.method public setTitle(Ljava/lang/String;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mTitle:Ljava/lang/String;

    .line 220
    return-object p0
.end method

.method public setTitleSingleLine(Z)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;
    .locals 0
    .param p1, "isSingleLine"    # Z

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mIsTitleSingleLine:Z

    .line 230
    return-object p0
.end method

.method public show()Lcom/iflytek/viafly/ui/SimpleDialog;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/SimpleDialog;

    if-nez v0, :cond_0

    .line 580
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->create()Lcom/iflytek/viafly/ui/SimpleDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/SimpleDialog;

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/SimpleDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/SimpleDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/SimpleDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/SimpleDialog;->show()V

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/SimpleDialog;

    return-object v0
.end method

.method public show(III)Lcom/iflytek/viafly/ui/SimpleDialog;
    .locals 2
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 608
    iget-object v1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/SimpleDialog;

    if-nez v1, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->create()Lcom/iflytek/viafly/ui/SimpleDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/SimpleDialog;

    .line 612
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/SimpleDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/SimpleDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 613
    iget-object v1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/SimpleDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/SimpleDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 614
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 616
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-nez p1, :cond_1

    .line 617
    const/16 p1, 0x33

    .line 619
    :cond_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 620
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 621
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 623
    iget-object v1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/SimpleDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/SimpleDialog;->show()V

    .line 626
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/SimpleDialog;

    return-object v1
.end method

.method public show(Landroid/view/View;)Lcom/iflytek/viafly/ui/SimpleDialog;
    .locals 1
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 590
    invoke-virtual {p0, p1, v0, v0}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->show(Landroid/view/View;II)Lcom/iflytek/viafly/ui/SimpleDialog;

    move-result-object v0

    return-object v0
.end method

.method public show(Landroid/view/View;II)Lcom/iflytek/viafly/ui/SimpleDialog;
    .locals 6
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 594
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 596
    .local v1, "locationOfViewOnScreen":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 598
    iget-object v5, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lhl;->e(Landroid/content/Context;)I

    move-result v2

    .line 600
    .local v2, "screenHeight":I
    const/16 v0, 0x53

    .line 601
    .local v0, "gravity":I
    const/4 v5, 0x0

    aget v5, v1, v5

    add-int v3, v5, p2

    .line 602
    .local v3, "x":I
    const/4 v5, 0x1

    aget v5, v1, v5

    sub-int v5, v2, v5

    add-int v4, v5, p3

    .line 604
    .local v4, "y":I
    invoke-virtual {p0, v0, v3, v4}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/SimpleDialog;

    move-result-object v5

    return-object v5
.end method

.method public switchSingleButton(Z)V
    .locals 4
    .param p1, "isSingle"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 688
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->mIsSingleButton:Z

    .line 689
    if-eqz p1, :cond_3

    .line 690
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 692
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "statelist.dialog_btn_confirm_status"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_2

    .line 700
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 713
    :cond_2
    :goto_0
    return-void

    .line 703
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_4

    .line 704
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 706
    :cond_4
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_5

    .line 707
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 709
    :cond_5
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_2

    .line 710
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    goto :goto_0
.end method
