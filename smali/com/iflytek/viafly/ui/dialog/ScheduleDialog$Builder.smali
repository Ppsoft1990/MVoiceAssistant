.class public Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
.super Ljava/lang/Object;
.source "ScheduleDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;
    }
.end annotation


# instance fields
.field private leftButton:Lcom/iflytek/base/skin/customView/XTextView;

.field private mContentView:Landroid/view/View;

.field private mContentViewHeight:I

.field private mContext:Landroid/content/Context;

.field private mDescription:Ljava/lang/String;

.field private mDialog:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

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

.field private mRightButtonStatus:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

.field private mRightButtonText:Ljava/lang/String;

.field private mSingleButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mSingleButtonStatus:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

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

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-boolean v2, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mIsTitleSingleLine:Z

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContentViewHeight:I

    .line 179
    iput-boolean v2, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mIsSingleButton:Z

    .line 180
    sget-object v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->CANCLE:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mSingleButtonStatus:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    .line 184
    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mIsSingleNeedDismiss:Z

    .line 189
    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mIsLeftNeedDismiss:Z

    .line 193
    sget-object v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->CANCLE:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mRightButtonStatus:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    .line 195
    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mIsRightNeedDismiss:Z

    .line 197
    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mIsCanceledOnTouchOutside:Z

    .line 204
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    .line 205
    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mSingleButtonOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mIsSingleNeedDismiss:Z

    return v0
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mLeftButtonOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mIsLeftNeedDismiss:Z

    return v0
.end method

.method static synthetic access$500(Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mRightButtonOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mIsRightNeedDismiss:Z

    return v0
.end method

.method private setXButtonBackground(Lcom/iflytek/base/skin/customView/XTextView;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;)V
    .locals 2
    .param p1, "button"    # Lcom/iflytek/base/skin/customView/XTextView;
    .param p2, "buttonBgStatus"    # Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    .prologue
    .line 577
    sget-object v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$1;->$SwitchMap$com$iflytek$viafly$ui$dialog$ScheduleDialog$Builder$ButtonStatus:[I

    invoke-virtual {p2}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 594
    const-string/jumbo v0, "statelist.dialog_btn_cancel_status"

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {p1, v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 598
    :goto_0
    return-void

    .line 579
    :pswitch_0
    const-string/jumbo v0, "statelist.dialog_remind_button_state"

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {p1, v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    .line 584
    :pswitch_1
    const-string/jumbo v0, "statelist.dialog_remind_button_state"

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {p1, v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    .line 589
    :pswitch_2
    const-string/jumbo v0, "statelist.dialog_btn_warn_status"

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {p1, v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    .line 577
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public create()Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;
    .locals 24

    .prologue
    .line 374
    new-instance v8, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;-><init>(Landroid/content/Context;)V

    .line 375
    .local v8, "dialog":Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;
    new-instance v13, Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 376
    .local v13, "rootView":Lcom/iflytek/base/skin/customView/XLinearLayout;
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f020315

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, -0x1

    const/16 v17, -0x2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v9, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 385
    .local v9, "layoutParam":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v16, Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->titleView:Lcom/iflytek/base/skin/customView/XTextView;

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mTitle:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->titleView:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->titleView:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    const-string/jumbo v17, "style_shedule_dialog_title"

    sget-object v18, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual/range {v16 .. v18}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->titleView:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    const/16 v17, 0x13

    invoke-virtual/range {v16 .. v17}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->titleView:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mIsTitleSingleLine:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/iflytek/base/skin/customView/XTextView;->setSingleLine(Z)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->titleView:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->titleView:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-wide/high16 v18, 0x4038000000000000L    # 24.0

    invoke-static/range {v17 .. v19}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-wide/high16 v20, 0x4038000000000000L    # 24.0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-wide/high16 v20, 0x4038000000000000L    # 24.0

    invoke-static/range {v19 .. v21}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v19

    const/16 v20, 0x0

    invoke-virtual/range {v16 .. v20}, Lcom/iflytek/base/skin/customView/XTextView;->setPadding(IIII)V

    .line 396
    :cond_0
    new-instance v6, Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 397
    .local v6, "desAndButtons":Lcom/iflytek/base/skin/customView/XLinearLayout;
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 398
    new-instance v16, Landroid/view/ViewGroup$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x2

    invoke-direct/range {v16 .. v18}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    new-instance v5, Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 401
    .local v5, "contentView":Lcom/iflytek/base/skin/customView/XLinearLayout;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 402
    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setGravity(I)V

    .line 403
    new-instance v16, Landroid/view/ViewGroup$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x2

    invoke-direct/range {v16 .. v18}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    invoke-virtual {v6, v5}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-wide/high16 v18, 0x4038000000000000L    # 24.0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-wide/high16 v18, 0x4038000000000000L    # 24.0

    invoke-static/range {v17 .. v19}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-wide/high16 v20, 0x4038000000000000L    # 24.0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-wide/high16 v20, 0x4038000000000000L    # 24.0

    invoke-static/range {v19 .. v21}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v19

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setPadding(IIII)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContentView:Landroid/view/View;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContentView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 429
    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 430
    .local v4, "buttonContainer":Lcom/iflytek/base/skin/customView/XLinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mLeftButtonText:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mRightButtonText:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 431
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mSingleButtonText:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 432
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 433
    :cond_2
    new-instance v4, Lcom/iflytek/base/skin/customView/XLinearLayout;

    .end local v4    # "buttonContainer":Lcom/iflytek/base/skin/customView/XLinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 434
    .restart local v4    # "buttonContainer":Lcom/iflytek/base/skin/customView/XLinearLayout;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 435
    new-instance v16, Landroid/view/ViewGroup$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x2

    invoke-direct/range {v16 .. v18}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mSingleButtonText:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 439
    new-instance v16, Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mSingleButtonText:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    const/16 v17, 0x11

    invoke-virtual/range {v16 .. v17}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    const-string/jumbo v17, "style_shedule_dialog_button_confrim"

    sget-object v18, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual/range {v16 .. v18}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 443
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, -0x1

    const/16 v17, -0x2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 444
    .local v14, "singleButtonLp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-wide/high16 v18, 0x4020000000000000L    # 8.0

    invoke-static/range {v17 .. v19}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-wide/high16 v20, 0x4020000000000000L    # 8.0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-wide/high16 v20, 0x4020000000000000L    # 8.0

    invoke-static/range {v19 .. v21}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-wide/high16 v22, 0x4020000000000000L    # 8.0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v20

    invoke-virtual/range {v16 .. v20}, Lcom/iflytek/base/skin/customView/XTextView;->setPadding(IIII)V

    .line 445
    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v0, v16

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-wide/high16 v18, 0x4030000000000000L    # 16.0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-wide/high16 v20, 0x4030000000000000L    # 16.0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-wide/high16 v20, 0x4030000000000000L    # 16.0

    invoke-static/range {v19 .. v21}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v19

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v14}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    const-string/jumbo v17, "statelist.dialog_remind_button_state"

    sget-object v18, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual/range {v16 .. v18}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    new-instance v17, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$1;-><init>(Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;)V

    invoke-virtual/range {v16 .. v17}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mIsSingleButton:Z

    move/from16 v16, v0

    if-eqz v16, :cond_c

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 472
    .end local v14    # "singleButtonLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mLeftButtonText:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 473
    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setGravity(I)V

    .line 474
    new-instance v16, Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mLeftButtonText:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    const/16 v17, 0x11

    invoke-virtual/range {v16 .. v17}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    const-string/jumbo v17, "style_shedule_dialog_button_cancel"

    sget-object v18, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual/range {v16 .. v18}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 478
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, -0x2

    const/16 v17, -0x2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v10, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 481
    .local v10, "leftButtonLp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-wide/high16 v18, 0x4020000000000000L    # 8.0

    invoke-static/range {v17 .. v19}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-wide/high16 v20, 0x4020000000000000L    # 8.0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-wide/high16 v20, 0x4020000000000000L    # 8.0

    invoke-static/range {v19 .. v21}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-wide/high16 v22, 0x4020000000000000L    # 8.0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v20

    invoke-virtual/range {v16 .. v20}, Lcom/iflytek/base/skin/customView/XTextView;->setPadding(IIII)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v10}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    const-string/jumbo v17, "statelist.dialog_remind_button_state"

    sget-object v18, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual/range {v16 .. v18}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    new-instance v17, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$2;-><init>(Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;)V

    invoke-virtual/range {v16 .. v17}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mIsSingleButton:Z

    move/from16 v16, v0

    if-eqz v16, :cond_d

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 508
    .end local v10    # "leftButtonLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mRightButtonText:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_6

    .line 509
    new-instance v16, Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mRightButtonText:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mRightButtonStatus:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    move-object/from16 v16, v0

    sget-object v17, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    const-string/jumbo v17, "style_shedule_dialog_button_confrim"

    sget-object v18, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual/range {v16 .. v18}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 517
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    const/16 v17, 0x11

    invoke-virtual/range {v16 .. v17}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 518
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, -0x2

    const/16 v17, -0x2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v12, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 519
    .local v12, "rightButtonLp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-wide/high16 v18, 0x4030000000000000L    # 16.0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-wide/high16 v20, 0x4030000000000000L    # 16.0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-wide/high16 v20, 0x4030000000000000L    # 16.0

    invoke-static/range {v19 .. v21}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v19

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-wide/high16 v18, 0x4020000000000000L    # 8.0

    invoke-static/range {v17 .. v19}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-wide/high16 v20, 0x4020000000000000L    # 8.0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-wide/high16 v20, 0x4020000000000000L    # 8.0

    invoke-static/range {v19 .. v21}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-wide/high16 v22, 0x4020000000000000L    # 8.0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v20

    invoke-virtual/range {v16 .. v20}, Lcom/iflytek/base/skin/customView/XTextView;->setPadding(IIII)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v12}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    const-string/jumbo v17, "statelist.dialog_remind_button_state"

    sget-object v18, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual/range {v16 .. v18}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    new-instance v17, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$3;-><init>(Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;)V

    invoke-virtual/range {v16 .. v17}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mIsSingleButton:Z

    move/from16 v16, v0

    if-eqz v16, :cond_f

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 547
    .end local v12    # "rightButtonLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    :goto_4
    invoke-virtual {v6, v4}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 549
    :cond_7
    invoke-virtual {v13, v6}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 551
    invoke-virtual {v8, v13, v9}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->setCancelable(Z)V

    .line 553
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mIsCanceledOnTouchOutside:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->setCanceledOnTouchOutside(Z)V

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 558
    :cond_8
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    .line 560
    invoke-virtual {v8}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    .line 561
    .local v15, "window":Landroid/view/Window;
    if-eqz v15, :cond_9

    .line 562
    invoke-virtual {v15}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 563
    .local v11, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v16, 0x33

    move/from16 v0, v16

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 568
    .end local v11    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_9
    return-object v8

    .line 416
    .end local v4    # "buttonContainer":Lcom/iflytek/base/skin/customView/XLinearLayout;
    .end local v15    # "window":Landroid/view/Window;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mDescription:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 417
    new-instance v7, Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 418
    .local v7, "descriptionView":Lcom/iflytek/base/skin/customView/XTextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mDescription:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mTitle:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 421
    const-string/jumbo v16, "style_shedule_dialog_notitle_des"

    sget-object v17, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 425
    :goto_5
    invoke-virtual {v5, v7}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 423
    :cond_b
    const-string/jumbo v16, "style_shedule_dialog_des"

    sget-object v17, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_5

    .line 467
    .end local v7    # "descriptionView":Lcom/iflytek/base/skin/customView/XTextView;
    .restart local v4    # "buttonContainer":Lcom/iflytek/base/skin/customView/XLinearLayout;
    .restart local v14    # "singleButtonLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 503
    .end local v14    # "singleButtonLp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v10    # "leftButtonLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 513
    .end local v10    # "leftButtonLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mRightButtonStatus:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    move-object/from16 v16, v0

    sget-object v17, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->WARN:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    const-string/jumbo v17, "style_shedule_dialog_button_delete"

    sget-object v18, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual/range {v16 .. v18}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto/16 :goto_3

    .line 544
    .restart local v12    # "rightButtonLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->dismiss()V

    .line 659
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLeftButton()Lcom/iflytek/base/skin/customView/XTextView;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    return-object v0
.end method

.method public getRightButton()Lcom/iflytek/base/skin/customView/XTextView;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    return-object v0
.end method

.method public getSingleButton()Lcom/iflytek/base/skin/customView/XTextView;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    return-object v0
.end method

.method public getTitleView()Lcom/iflytek/base/skin/customView/XTextView;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->titleView:Lcom/iflytek/base/skin/customView/XTextView;

    return-object v0
.end method

.method public isDialogShowing()Z
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->isShowing()Z

    move-result v0

    .line 669
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 362
    return-object p0
.end method

.method public setContentView(Landroid/view/View;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContentView:Landroid/view/View;

    .line 248
    return-object p0
.end method

.method public setContentView(Landroid/view/View;I)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "height"    # I

    .prologue
    .line 258
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContentView:Landroid/view/View;

    .line 259
    iput p2, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContentViewHeight:I

    .line 260
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    .locals 0
    .param p1, "des"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mDescription:Ljava/lang/String;

    .line 238
    return-object p0
.end method

.method public setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    .locals 0
    .param p1, "isCanceledOnTouchOutside"    # Z

    .prologue
    .line 369
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mIsCanceledOnTouchOutside:Z

    .line 370
    return-object p0
.end method

.method public setIsNeedDismiss(ZZ)V
    .locals 0
    .param p1, "isLeftDismiss"    # Z
    .param p2, "isRightDismiss"    # Z

    .prologue
    .line 702
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mIsLeftNeedDismiss:Z

    .line 703
    iput-boolean p2, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mIsRightNeedDismiss:Z

    .line 704
    return-void
.end method

.method public setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    .locals 0
    .param p1, "btnText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mLeftButtonText:Ljava/lang/String;

    .line 311
    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mLeftButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 312
    return-object p0
.end method

.method public setLeftButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    .locals 0
    .param p1, "btnText"    # Ljava/lang/String;
    .param p2, "btnBg"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mLeftButtonText:Ljava/lang/String;

    .line 324
    iput-object p3, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mLeftButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 325
    return-object p0
.end method

.method public setRightButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    .locals 0
    .param p1, "btnText"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mRightButtonText:Ljava/lang/String;

    .line 337
    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mRightButtonStatus:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    .line 338
    iput-object p3, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mRightButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 339
    return-object p0
.end method

.method public setRightButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    .locals 1
    .param p1, "btnText"    # Ljava/lang/String;
    .param p2, "btnBg"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mRightButtonText:Ljava/lang/String;

    .line 351
    sget-object v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mRightButtonStatus:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    .line 352
    iput-object p3, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mRightButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 353
    return-object p0
.end method

.method public setRightButtonStatus(Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mRightButtonStatus:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    .line 301
    return-void
.end method

.method public setSingleButton(ZLjava/lang/String;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    .locals 0
    .param p1, "isSingle"    # Z
    .param p2, "btnText"    # Ljava/lang/String;
    .param p3, "status"    # Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;
    .param p4, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 271
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mIsSingleButton:Z

    .line 272
    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mSingleButtonText:Ljava/lang/String;

    .line 273
    iput-object p3, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mSingleButtonStatus:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    .line 274
    iput-object p4, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mSingleButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 275
    return-object p0
.end method

.method public setSingleButtonStatus(Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mSingleButtonStatus:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    .line 293
    return-void
.end method

.method public setTitle(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mTitle:Ljava/lang/String;

    .line 218
    return-object p0
.end method

.method public setTitleSingleLine(Z)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    .locals 0
    .param p1, "isSingleLine"    # Z

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mIsTitleSingleLine:Z

    .line 228
    return-object p0
.end method

.method public show()Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    if-nez v0, :cond_0

    .line 602
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->create()Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 605
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->show()V

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    return-object v0
.end method

.method public show(III)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;
    .locals 6
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 630
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    if-nez v1, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->create()Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    .line 634
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 635
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 636
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 638
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-nez p1, :cond_1

    .line 639
    const/16 p1, 0x11

    .line 641
    :cond_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 642
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lhl;->d(Landroid/content/Context;)I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 643
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 644
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 646
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->show()V

    .line 649
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    return-object v1
.end method

.method public show(Landroid/view/View;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;
    .locals 1
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 612
    invoke-virtual {p0, p1, v0, v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->show(Landroid/view/View;II)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    move-result-object v0

    return-object v0
.end method

.method public show(Landroid/view/View;II)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;
    .locals 6
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 616
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 618
    .local v1, "locationOfViewOnScreen":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 620
    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lhl;->e(Landroid/content/Context;)I

    move-result v2

    .line 622
    .local v2, "screenHeight":I
    const/16 v0, 0x53

    .line 623
    .local v0, "gravity":I
    const/4 v5, 0x0

    aget v5, v1, v5

    add-int v3, v5, p2

    .line 624
    .local v3, "x":I
    const/4 v5, 0x1

    aget v5, v1, v5

    sub-int v5, v2, v5

    add-int v4, v5, p3

    .line 626
    .local v4, "y":I
    invoke-virtual {p0, v0, v3, v4}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    move-result-object v5

    return-object v5
.end method

.method public switchSingleButton(Z)V
    .locals 4
    .param p1, "isSingle"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 711
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->mIsSingleButton:Z

    .line 712
    if-eqz p1, :cond_3

    .line 713
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 715
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "statelist.dialog_btn_confirm_status"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_1

    .line 720
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_2

    .line 723
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 736
    :cond_2
    :goto_0
    return-void

    .line 726
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_4

    .line 727
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->singleButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 729
    :cond_4
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_5

    .line 730
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->leftButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 732
    :cond_5
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_2

    .line 733
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->rightButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    goto :goto_0
.end method
