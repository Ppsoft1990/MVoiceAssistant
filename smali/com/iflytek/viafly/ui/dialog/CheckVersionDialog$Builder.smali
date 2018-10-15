.class public Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;
.super Ljava/lang/Object;
.source "CheckVersionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field bodyProgressView:Landroid/view/View;

.field bodyResultView:Landroid/view/View;

.field bottomSingleButtonView:Landroid/view/View;

.field bottomTwoButtonView:Landroid/view/View;

.field private isSingleButton:Z

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private message:Ljava/lang/CharSequence;

.field private negativeButtonListener:Landroid/view/View$OnClickListener;

.field private negativeButtonText:Ljava/lang/CharSequence;

.field private neutralButtonListener:Landroid/view/View$OnClickListener;

.field private neutralButtonText:Ljava/lang/CharSequence;

.field private postiveButtonListener:Landroid/view/View$OnClickListener;

.field private postiveButtonText:Ljava/lang/CharSequence;

.field private rootView:Landroid/widget/LinearLayout;

.field private title:Ljava/lang/CharSequence;

.field titleView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 36
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 37
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    .line 39
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->isSingleButton:Z

    .line 42
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->titleView:Landroid/view/View;

    .line 43
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bodyProgressView:Landroid/view/View;

    .line 44
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bottomSingleButtonView:Landroid/view/View;

    .line 45
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bodyResultView:Landroid/view/View;

    .line 46
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bottomTwoButtonView:Landroid/view/View;

    .line 48
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;->dismiss()V

    .line 157
    :cond_0
    return-void
.end method

.method public initialCreate()Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, -0x2

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 52
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    .line 53
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 55
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    const-string/jumbo v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 57
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;->CustomTitleView:Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->titleView:Landroid/view/View;

    .line 58
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->titleView:Landroid/view/View;

    check-cast v3, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->setTilte(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->WaitingBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bodyProgressView:Landroid/view/View;

    .line 61
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;->CustomSingleButtonBottomView:Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bottomSingleButtonView:Landroid/view/View;

    .line 62
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bottomSingleButtonView:Landroid/view/View;

    check-cast v3, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->neutralButtonText:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->neutralButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->MessageBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bodyResultView:Landroid/view/View;

    .line 65
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bodyResultView:Landroid/view/View;

    check-cast v3, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;

    invoke-virtual {v3, v9}, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mContext:Landroid/content/Context;

    const-wide v6, 0x406ce00000000000L    # 231.0

    invoke-static {v5, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v5

    invoke-direct {v4, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;->CustomTwoButtonBottomView:Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bottomTwoButtonView:Landroid/view/View;

    .line 68
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bodyProgressView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bottomSingleButtonView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bodyResultView:Landroid/view/View;

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bottomTwoButtonView:Landroid/view/View;

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->titleView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bodyProgressView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bodyResultView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bottomSingleButtonView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bottomTwoButtonView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;

    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, "dialog":Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81
    .local v1, "layoutParam":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v1}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-virtual {v0, v11}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;->setCancelable(Z)V

    .line 83
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 86
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 91
    :cond_1
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 92
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lhl;->d(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 93
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 95
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;

    .line 97
    return-object v0
.end method

.method public isDialogShowing()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;->isShowing()Z

    move-result v0

    .line 168
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 216
    return-object p0
.end method

.method public setCheckedUI()Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bodyProgressView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bottomSingleButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bodyResultView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bottomTwoButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    return-object p0
.end method

.method public setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 221
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->message:Ljava/lang/CharSequence;

    .line 181
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bodyResultView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bodyResultView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->setMessage(Ljava/lang/CharSequence;)V

    .line 184
    :cond_0
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->negativeButtonText:Ljava/lang/CharSequence;

    .line 198
    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->negativeButtonListener:Landroid/view/View$OnClickListener;

    .line 199
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bottomTwoButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bottomTwoButtonView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 202
    :cond_0
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->neutralButtonText:Ljava/lang/CharSequence;

    .line 207
    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->neutralButtonListener:Landroid/view/View$OnClickListener;

    .line 208
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bottomSingleButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bottomSingleButtonView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 211
    :cond_0
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->postiveButtonText:Ljava/lang/CharSequence;

    .line 189
    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->postiveButtonListener:Landroid/view/View$OnClickListener;

    .line 190
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bottomTwoButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->bottomTwoButtonView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 193
    :cond_0
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->title:Ljava/lang/CharSequence;

    .line 173
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->titleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->titleView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->setTilte(Ljava/lang/CharSequence;)V

    .line 176
    :cond_0
    return-object p0
.end method

.method public show()Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->initialCreate()Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    const/16 v0, 0x51

    invoke-virtual {p0, v0, v1, v1}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;

    return-object v0
.end method

.method public show(III)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;
    .locals 2
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 130
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;

    if-nez v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->initialCreate()Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 137
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-nez p1, :cond_1

    .line 138
    const/16 p1, 0x33

    .line 140
    :cond_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 141
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 142
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 144
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;->show()V

    .line 147
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;

    return-object v1
.end method

.method public show(Landroid/view/View;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;
    .locals 1
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, p1, v0, v0}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->show(Landroid/view/View;II)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;

    move-result-object v0

    return-object v0
.end method

.method public show(Landroid/view/View;II)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;
    .locals 6
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 116
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 118
    .local v1, "locationOfViewOnScreen":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 120
    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lhl;->e(Landroid/content/Context;)I

    move-result v2

    .line 122
    .local v2, "screenHeight":I
    const/16 v0, 0x53

    .line 123
    .local v0, "gravity":I
    const/4 v5, 0x0

    aget v5, v1, v5

    add-int v3, v5, p2

    .line 124
    .local v3, "x":I
    const/4 v5, 0x1

    aget v5, v1, v5

    sub-int v5, v2, v5

    add-int v4, v5, p3

    .line 126
    .local v4, "y":I
    invoke-virtual {p0, v0, v3, v4}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;

    move-result-object v5

    return-object v5
.end method
