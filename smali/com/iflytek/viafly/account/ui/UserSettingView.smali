.class public Lcom/iflytek/viafly/account/ui/UserSettingView;
.super Landroid/widget/LinearLayout;
.source "UserSettingView.java"


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Lcom/iflytek/base/skin/customView/XImageView;

.field d:Lcom/iflytek/base/skin/customView/XImageView;

.field e:Landroid/widget/TextView;

.field f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0}, Lcom/iflytek/viafly/account/ui/UserSettingView;->a()V

    .line 36
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/ui/UserSettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030151

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    const v0, 0x7f0b077e

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/account/ui/UserSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/UserSettingView;->a:Landroid/widget/ImageView;

    .line 41
    const v0, 0x7f0b0780

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/account/ui/UserSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/UserSettingView;->c:Lcom/iflytek/base/skin/customView/XImageView;

    .line 42
    const v0, 0x7f0b0782

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/account/ui/UserSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/UserSettingView;->d:Lcom/iflytek/base/skin/customView/XImageView;

    .line 43
    const v0, 0x7f0b077f

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/account/ui/UserSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/UserSettingView;->b:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0b0781

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/account/ui/UserSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/UserSettingView;->e:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0b023b

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/account/ui/UserSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/UserSettingView;->f:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/UserSettingView;->d:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v1, "stateList.setting_subpage_list_arrow_states"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 47
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 5
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 65
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/UserSettingView;->e:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/UserSettingView;->e:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    const/4 v1, 0x1

    if-ne v1, p2, :cond_2

    .line 71
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 72
    .local v0, "style":Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 73
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/ui/UserSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x22

    .line 72
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 76
    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/UserSettingView;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 81
    .end local v0    # "style":Landroid/text/SpannableStringBuilder;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 77
    :cond_2
    const/4 v1, 0x2

    if-ne v1, p2, :cond_0

    .line 78
    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/UserSettingView;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/account/ui/UserSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/UserSettingView;->e:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/UserSettingView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/UserSettingView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
