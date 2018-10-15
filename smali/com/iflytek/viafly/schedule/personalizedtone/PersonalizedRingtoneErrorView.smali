.class public Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;
.super Lcom/iflytek/base/skin/customView/XLinearLayout;
.source "PersonalizedRingtoneErrorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/base/skin/customView/XTextView;

.field private b:I

.field private c:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$a;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reqeustSendListener"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$a;

    .prologue
    const/16 v9, 0x11

    const/4 v8, -0x2

    .line 23
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;->c:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$a;

    .line 25
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;->setOrientation(I)V

    .line 26
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinHeight(Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {v0, p1}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    .line 29
    .local v0, "imgView":Lcom/iflytek/base/skin/customView/XImageView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 30
    .local v2, "paramImgView":Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 31
    invoke-virtual {p0, v0, v2}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    const-string/jumbo v5, "image.ic_nonetwork_b"

    sget-object v6, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v5, v6}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 33
    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XImageView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v5

    const-string/jumbo v6, "156"

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinWidth(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XImageView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v5

    const-string/jumbo v6, "116"

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinHeight(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XImageView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v5

    const-string/jumbo v6, "140"

    sget-object v7, Lcom/iflytek/base/skin/space/SpaceType;->TOP:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargin(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 38
    new-instance v5, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v5, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;->a:Lcom/iflytek/base/skin/customView/XTextView;

    .line 39
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;->a:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v6, "\u7f51\u7edc\u65e0\u8fde\u63a5\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 41
    .local v3, "paramTip":Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 42
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;->a:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {p0, v5, v3}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;->a:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v5}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v5

    const-string/jumbo v6, "40"

    sget-object v7, Lcom/iflytek/base/skin/space/SpaceType;->TOP:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargin(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 44
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;->a:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v6, "style_refresh_tip"

    sget-object v7, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 46
    new-instance v4, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v4, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 47
    .local v4, "refreshBtn":Lcom/iflytek/base/skin/customView/XTextView;
    const-string/jumbo v5, "\u5237\u65b0"

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49
    .local v1, "paramBtn":Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 50
    invoke-virtual {p0, v4, v1}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-virtual {v4}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v5

    const-string/jumbo v6, "140"

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinWidth(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v4}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v5

    const-string/jumbo v6, "56"

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinHeight(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v4, v9}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 54
    invoke-virtual {v4}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v5

    const-string/jumbo v6, "70"

    sget-object v7, Lcom/iflytek/base/skin/space/SpaceType;->TOP:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargin(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 55
    const-string/jumbo v5, "statelist.ic_mainpage_refresh_btn_state"

    sget-object v6, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 56
    const-string/jumbo v5, "style_item_content_input"

    sget-object v6, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 58
    new-instance v5, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$1;

    invoke-direct {v5, p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$1;-><init>(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;)V

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;->c:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$a;

    return-object v0
.end method


# virtual methods
.method public setErrorCode(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 69
    const-string/jumbo v1, "PersonalizedRingtoneErrorView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "currentErrorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " new errorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput p1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;->b:I

    .line 72
    const-string/jumbo v0, "\u7f51\u7edc\u65e0\u8fde\u63a5\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    .line 73
    .local v0, "tip":Ljava/lang/String;
    const v1, 0xc3ba6

    if-eq v1, p1, :cond_0

    .line 74
    const-string/jumbo v0, "\u6570\u636e\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;->a:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method
