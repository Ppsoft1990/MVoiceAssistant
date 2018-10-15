.class public Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;
.super Ljava/lang/Object;
.source "AutoCheckVersionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bodyView:Landroid/view/View;

.field private bottomView:Landroid/view/View;

.field private checkBoxTips:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private message:Ljava/lang/CharSequence;

.field private negativeButtonListener:Landroid/view/View$OnClickListener;

.field private negativeButtonText:Ljava/lang/CharSequence;

.field private postiveButtonListener:Landroid/view/View$OnClickListener;

.field private postiveButtonText:Ljava/lang/CharSequence;

.field private rootView:Landroid/widget/LinearLayout;

.field private title:Ljava/lang/CharSequence;

.field private titleView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->checkBoxTips:Ljava/lang/CharSequence;

    .line 34
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 35
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    .line 37
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;

    .line 39
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->titleView:Landroid/view/View;

    .line 40
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->bodyView:Landroid/view/View;

    .line 41
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->bottomView:Landroid/view/View;

    .line 44
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;->dismiss()V

    .line 145
    :cond_0
    return-void
.end method

.method public getSelectedState()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->bodyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->bodyView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->getSelectedState()Z

    move-result v0

    .line 187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialCreate()Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x2

    const/4 v8, -0x1

    .line 48
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    .line 49
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    const-string/jumbo v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 53
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;->CustomTitleView:Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->titleView:Landroid/view/View;

    .line 54
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->titleView:Landroid/view/View;

    check-cast v3, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->setTilte(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->MessageWithCheckboxDialogBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->bodyView:Landroid/view/View;

    .line 57
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->bodyView:Landroid/view/View;

    check-cast v3, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->message:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->setMessage(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->bodyView:Landroid/view/View;

    check-cast v3, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->checkBoxTips:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->setCheckBoxTips(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->bodyView:Landroid/view/View;

    check-cast v3, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mContext:Landroid/content/Context;

    const-wide v6, 0x406ce00000000000L    # 231.0

    invoke-static {v5, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v5

    invoke-direct {v4, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;->CustomTwoButtonBottomView:Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->bottomView:Landroid/view/View;

    .line 62
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->bottomView:Landroid/view/View;

    check-cast v3, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->negativeButtonText:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->negativeButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->bottomView:Landroid/view/View;

    check-cast v3, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->postiveButtonText:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->postiveButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->titleView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 66
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->bodyView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->bottomView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;

    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;-><init>(Landroid/content/Context;)V

    .line 70
    .local v0, "dialog":Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 71
    .local v1, "layoutParam":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v1}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    invoke-virtual {v0, v10}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;->setCancelable(Z)V

    .line 74
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 79
    :cond_0
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 80
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lhl;->d(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 81
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 83
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;

    .line 85
    return-object v0
.end method

.method public isDialogShowing()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;->isShowing()Z

    move-result v0

    .line 156
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCheckboxTips(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;
    .locals 1
    .param p1, "tips"    # Ljava/lang/CharSequence;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->checkBoxTips:Ljava/lang/CharSequence;

    .line 177
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->bodyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->bodyView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->setCheckBoxTips(Ljava/lang/CharSequence;)V

    .line 180
    :cond_0
    return-object p0
.end method

.method public setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 210
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->message:Ljava/lang/CharSequence;

    .line 169
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->bodyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->bodyView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->setMessage(Ljava/lang/CharSequence;)V

    .line 172
    :cond_0
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->negativeButtonText:Ljava/lang/CharSequence;

    .line 201
    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->negativeButtonListener:Landroid/view/View$OnClickListener;

    .line 202
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->bottomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->bottomView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 205
    :cond_0
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->postiveButtonText:Ljava/lang/CharSequence;

    .line 192
    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->postiveButtonListener:Landroid/view/View$OnClickListener;

    .line 193
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->bottomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->bottomView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 196
    :cond_0
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->title:Ljava/lang/CharSequence;

    .line 161
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->titleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->titleView:Landroid/view/View;

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->setTilte(Ljava/lang/CharSequence;)V

    .line 164
    :cond_0
    return-object p0
.end method

.method public show()Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->initialCreate()Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    const/16 v0, 0x51

    invoke-virtual {p0, v0, v1, v1}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;

    return-object v0
.end method

.method public show(III)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;
    .locals 2
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 118
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;

    if-nez v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->initialCreate()Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 123
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 125
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-nez p1, :cond_1

    .line 126
    const/16 p1, 0x33

    .line 128
    :cond_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 129
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 130
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 132
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;->show()V

    .line 135
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;

    return-object v1
.end method

.method public show(Landroid/view/View;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;
    .locals 1
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, p1, v0, v0}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->show(Landroid/view/View;II)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;

    move-result-object v0

    return-object v0
.end method

.method public show(Landroid/view/View;II)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;
    .locals 6
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 104
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 106
    .local v1, "locationOfViewOnScreen":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 108
    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lhl;->e(Landroid/content/Context;)I

    move-result v2

    .line 110
    .local v2, "screenHeight":I
    const/16 v0, 0x53

    .line 111
    .local v0, "gravity":I
    const/4 v5, 0x0

    aget v5, v1, v5

    add-int v3, v5, p2

    .line 112
    .local v3, "x":I
    const/4 v5, 0x1

    aget v5, v1, v5

    sub-int v5, v2, v5

    add-int v4, v5, p3

    .line 114
    .local v4, "y":I
    invoke-virtual {p0, v0, v3, v4}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;

    move-result-object v5

    return-object v5
.end method
