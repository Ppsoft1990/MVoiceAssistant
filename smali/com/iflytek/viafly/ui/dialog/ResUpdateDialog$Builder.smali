.class public Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;
.super Ljava/lang/Object;
.source "ResUpdateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field bodyProgressView:Landroid/view/View;

.field bodyTextDesView:Landroid/view/View;

.field bottomSingleButtonView:Landroid/view/View;

.field bottomTwoButtonView:Landroid/view/View;

.field private isSingleButton:Z

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mResType:I

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
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resType"    # I

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 37
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 38
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    .line 40
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->isSingleButton:Z

    .line 43
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->titleView:Landroid/view/View;

    .line 44
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyProgressView:Landroid/view/View;

    .line 45
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomSingleButtonView:Landroid/view/View;

    .line 46
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyTextDesView:Landroid/view/View;

    .line 47
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomTwoButtonView:Landroid/view/View;

    .line 52
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mContext:Landroid/content/Context;

    .line 53
    iput p2, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mResType:I

    .line 54
    return-void
.end method


# virtual methods
.method public checkVersionUI()Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 231
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->titleView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0068

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->setTilte(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyProgressView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomSingleButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyTextDesView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomTwoButtonView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 236
    return-object p0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;->dismiss()V

    .line 162
    :cond_0
    return-void
.end method

.method public initialCreate()Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 57
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    .line 58
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 60
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    const-string/jumbo v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 62
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;->CustomTitleView:Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->titleView:Landroid/view/View;

    .line 63
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->titleView:Landroid/view/View;

    check-cast v3, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->setTilte(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->WaitingBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyProgressView:Landroid/view/View;

    .line 66
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;->CustomSingleButtonBottomView:Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomSingleButtonView:Landroid/view/View;

    .line 67
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomSingleButtonView:Landroid/view/View;

    check-cast v3, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->neutralButtonText:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->neutralButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->MessageBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyTextDesView:Landroid/view/View;

    .line 70
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyTextDesView:Landroid/view/View;

    check-cast v3, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->message:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->setMessage(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;->CustomTwoButtonBottomView:Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomTwoButtonView:Landroid/view/View;

    .line 73
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyProgressView:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomSingleButtonView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyTextDesView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomTwoButtonView:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->titleView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyProgressView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyTextDesView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomSingleButtonView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomTwoButtonView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;

    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;-><init>(Landroid/content/Context;)V

    .line 85
    .local v0, "dialog":Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 86
    .local v1, "layoutParam":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v1}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    invoke-virtual {v0, v9}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;->setCancelable(Z)V

    .line 88
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v3, :cond_0

    .line 89
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 91
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 96
    :cond_1
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 97
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lhl;->d(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 98
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 100
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;

    .line 102
    return-object v0
.end method

.method public isDialogShowing()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;->isShowing()Z

    move-result v0

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 221
    return-object p0
.end method

.method public setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 226
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->message:Ljava/lang/CharSequence;

    .line 186
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyTextDesView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyTextDesView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->setMessage(Ljava/lang/CharSequence;)V

    .line 189
    :cond_0
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->negativeButtonText:Ljava/lang/CharSequence;

    .line 203
    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->negativeButtonListener:Landroid/view/View$OnClickListener;

    .line 204
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomTwoButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomTwoButtonView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 207
    :cond_0
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->neutralButtonText:Ljava/lang/CharSequence;

    .line 212
    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->neutralButtonListener:Landroid/view/View$OnClickListener;

    .line 213
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomSingleButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomSingleButtonView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 216
    :cond_0
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->postiveButtonText:Ljava/lang/CharSequence;

    .line 194
    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->postiveButtonListener:Landroid/view/View$OnClickListener;

    .line 195
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomTwoButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomTwoButtonView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 198
    :cond_0
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->title:Ljava/lang/CharSequence;

    .line 178
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->titleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->titleView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->setTilte(Ljava/lang/CharSequence;)V

    .line 181
    :cond_0
    return-object p0
.end method

.method public show()Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->initialCreate()Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    const/16 v0, 0x51

    invoke-virtual {p0, v0, v1, v1}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;

    return-object v0
.end method

.method public show(III)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;
    .locals 2
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 135
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;

    if-nez v1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->initialCreate()Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 142
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-nez p1, :cond_1

    .line 143
    const/16 p1, 0x33

    .line 145
    :cond_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 146
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 147
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 149
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;->show()V

    .line 152
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;

    return-object v1
.end method

.method public show(Landroid/view/View;)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;
    .locals 1
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, p1, v0, v0}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->show(Landroid/view/View;II)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;

    move-result-object v0

    return-object v0
.end method

.method public show(Landroid/view/View;II)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;
    .locals 6
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 121
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 123
    .local v1, "locationOfViewOnScreen":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 125
    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lhl;->e(Landroid/content/Context;)I

    move-result v2

    .line 127
    .local v2, "screenHeight":I
    const/16 v0, 0x53

    .line 128
    .local v0, "gravity":I
    const/4 v5, 0x0

    aget v5, v1, v5

    add-int v3, v5, p2

    .line 129
    .local v3, "x":I
    const/4 v5, 0x1

    aget v5, v1, v5

    sub-int v5, v2, v5

    add-int v4, v5, p3

    .line 131
    .local v4, "y":I
    invoke-virtual {p0, v0, v3, v4}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;

    move-result-object v5

    return-object v5
.end method

.method public showDownLoadUI()Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 279
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyProgressView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomSingleButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyTextDesView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomTwoButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 283
    return-object p0
.end method

.method public showErrorUI(I)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 303
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyProgressView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomSingleButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyTextDesView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomTwoButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->titleView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mContext:Landroid/content/Context;

    const v2, 0x7f0c00a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->setTilte(Ljava/lang/CharSequence;)V

    .line 309
    const/16 v0, 0x384

    if-ne p1, v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyTextDesView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mContext:Landroid/content/Context;

    const v2, 0x7f0c02e9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->setMessage(Ljava/lang/CharSequence;)V

    .line 317
    :cond_0
    :goto_0
    return-object p0

    .line 311
    :cond_1
    const v0, 0xc3c09

    if-ne p1, v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyTextDesView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0300

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 313
    :cond_2
    const v0, 0xc3c0a

    if-ne p1, v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyTextDesView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0308

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showErrorUI(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;
    .locals 3
    .param p1, "errorContent"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 288
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyProgressView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomSingleButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyTextDesView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomTwoButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->titleView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mContext:Landroid/content/Context;

    const v2, 0x7f0c00a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->setTilte(Ljava/lang/CharSequence;)V

    .line 294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyTextDesView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->setMessage(Ljava/lang/CharSequence;)V

    .line 298
    :cond_0
    return-object p0
.end method

.method public showUnZipProgressUI()Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 241
    iget v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mResType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 242
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->titleView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mContext:Landroid/content/Context;

    const v2, 0x7f0c03c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->setTilte(Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyProgressView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomSingleButtonView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyTextDesView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomTwoButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 251
    return-object p0

    .line 243
    :cond_1
    iget v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mResType:I

    if-ne v0, v3, :cond_0

    .line 244
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->titleView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mContext:Landroid/content/Context;

    const v2, 0x7f0c006d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->setTilte(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showUnZipResultUI(Z)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;
    .locals 4
    .param p1, "isSucceed"    # Z

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x8

    .line 256
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyProgressView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomTwoButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bottomSingleButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyTextDesView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    if-eqz p1, :cond_1

    .line 262
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->titleView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01cc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->setTilte(Ljava/lang/CharSequence;)V

    .line 264
    iget v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mResType:I

    if-ne v3, v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyTextDesView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mContext:Landroid/content/Context;

    const v2, 0x7f0c006b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->setMessage(Ljava/lang/CharSequence;)V

    .line 274
    :goto_0
    return-object p0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyTextDesView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01cb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->titleView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->setTilte(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->bodyTextDesView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01c9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
