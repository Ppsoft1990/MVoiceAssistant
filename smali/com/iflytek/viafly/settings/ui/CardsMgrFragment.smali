.class public Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;
.super Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;
.source "CardsMgrFragment.java"


# static fields
.field private static final BTN_TEXT:Ljava/lang/String; = "\u5173\u6ce8\u7075\u7280\u5b98\u65b9\u5fae\u4fe1"

.field private static final MSG_REFREST_FROM_SETTING:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CardsMgrFragment"

.field private static final TIP_TEXT:Ljava/lang/String; = "\u60a8\u8fd8\u6709\u54ea\u4e9b\u5361\u7247\u9700\u6c42\uff0c\u8bf7\u5173\u6ce8\u7075\u7280\u5b98\u65b9\u5fae\u4fe1"

.field private static final WEIXIN_GUIDE_URL:Ljava/lang/String; = "http://s1.voicecloud.cn/resources/lxfl/index.html"


# instance fields
.field private mCardInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/settings/ui/CardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCardsListPreferenceCheckBoxs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mRefreshFromSetting:Z

.field private mShowLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->mRefreshFromSetting:Z

    .line 38
    iput v0, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->mShowLength:I

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->mCardsListPreferenceCheckBoxs:Ljava/util/List;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->mCardInfos:Ljava/util/List;

    .line 166
    new-instance v0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment$1;-><init>(Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->refreshChildren()V

    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->setSettingSelector()V

    return-void
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private addWeixinView()V
    .locals 14

    .prologue
    const/16 v13, 0x18

    const/16 v12, 0xe

    const/4 v11, 0x1

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 199
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 200
    .local v4, "mWeixinView":Landroid/widget/RelativeLayout;
    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 201
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    const/4 v6, -0x1

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const/16 v8, 0xd2

    invoke-static {v7, v8}, Lazk;->a(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 205
    .local v2, "mTipText":Landroid/widget/TextView;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 206
    .local v3, "mTipTextLp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 207
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/16 v6, 0x32

    invoke-static {v5, v6}, Lazk;->a(Landroid/content/Context;I)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 208
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 210
    const-string/jumbo v5, "\u60a8\u8fd8\u6709\u54ea\u4e9b\u5361\u7247\u9700\u6c42\uff0c\u8bf7\u5173\u6ce8\u7075\u7280\u5b98\u65b9\u5fae\u4fe1"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    const-string/jumbo v5, "#878787"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v13}, Lazk;->a(Landroid/content/Context;I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 213
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 216
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 217
    .local v0, "mOfficialBtn":Landroid/widget/TextView;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/16 v6, 0xf0

    invoke-static {v5, v6}, Lazk;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const/16 v7, 0x38

    invoke-static {v6, v7}, Lazk;->a(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 218
    .local v1, "mOfficialBtnLp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 219
    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 220
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/16 v6, 0x32

    invoke-static {v5, v6}, Lazk;->a(Landroid/content/Context;I)I

    move-result v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 221
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 223
    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 224
    const-string/jumbo v5, "\u5173\u6ce8\u7075\u7280\u5b98\u65b9\u5fae\u4fe1"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0203db

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 226
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v13}, Lazk;->a(Landroid/content/Context;I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 227
    const v5, 0x7f0203d8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 228
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 230
    new-instance v5, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment$2;

    invoke-direct {v5, p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment$2;-><init>(Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getListView()Lcom/iflytek/base/skin/customView/XListView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/iflytek/base/skin/customView/XListView;->addFooterView(Landroid/view/View;)V

    .line 250
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getListView()Lcom/iflytek/base/skin/customView/XListView;

    move-result-object v5

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getListAdapter()Lcom/iflytek/viafly/settings/ui/XListAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 251
    return-void
.end method

.method private createChildren()V
    .locals 4

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/iflytek/viafly/settings/ui/CardsMgrActivity;

    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/settings/ui/CardsMgrActivity;

    invoke-virtual {v2}, Lcom/iflytek/viafly/settings/ui/CardsMgrActivity;->getCardsInfoList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->mCardInfos:Ljava/util/List;

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->mCardInfos:Ljava/util/List;

    invoke-static {v2}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->mCardInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/ui/CardInfo;

    .line 87
    .local v0, "cardInfo":Lcom/iflytek/viafly/settings/ui/CardInfo;
    new-instance v1, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;-><init>(Landroid/content/Context;)V

    .line 88
    .local v1, "mPreferenceCheckBox":Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;
    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/CardInfo;->getCardName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;->setTitle(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/CardInfo;->isCardState()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;->setChecked(Z)V

    .line 90
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;->setEnabled(Z)V

    .line 91
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;->setItemDividerVisibility(I)V

    .line 92
    const-string/jumbo v3, "statelist.hotel_getmore_item_state"

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;->setItemBackground(Ljava/lang/String;)V

    .line 93
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->mCardsListPreferenceCheckBoxs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->add(Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;)V

    goto :goto_0

    .line 98
    .end local v0    # "cardInfo":Lcom/iflytek/viafly/settings/ui/CardInfo;
    .end local v1    # "mPreferenceCheckBox":Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;
    :cond_1
    return-void
.end method

.method private refreshChildren()V
    .locals 3

    .prologue
    .line 101
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->mCardsListPreferenceCheckBoxs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 102
    .local v1, "cardPreferenceIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;

    .line 104
    .local v0, "cardPreferenceCheckBox":Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->remove(Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;)V

    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 107
    .end local v0    # "cardPreferenceCheckBox":Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->createChildren()V

    .line 108
    return-void
.end method

.method private setSettingSelector()V
    .locals 6

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getListView()Lcom/iflytek/base/skin/customView/XListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    iget v3, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->mShowLength:I

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getListView()Lcom/iflytek/base/skin/customView/XListView;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 188
    .local v1, "visibleChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 189
    .local v0, "topSize":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getListView()Lcom/iflytek/base/skin/customView/XListView;

    move-result-object v2

    iget v3, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->mShowLength:I

    invoke-virtual {v2, v3, v0}, Lcom/iflytek/base/skin/customView/XListView;->setSelectionFromTop(II)V

    .line 190
    return-void
.end method


# virtual methods
.method protected loadData(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->createChildren()V

    .line 79
    return-void
.end method

.method protected onClickBackButton(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 195
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->onDestroy()V

    .line 134
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->mHandler:Landroid/os/Handler;

    .line 136
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 146
    const-string/jumbo v3, "CardsMgrFragment"

    const-string/jumbo v6, "----------->>> onItemClick()"

    invoke-static {v3, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0, p3}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getItemAtPosition(I)Lcom/iflytek/viafly/settings/custompreferences/XPreference;

    move-result-object v2

    .line 149
    .local v2, "xPreference":Lcom/iflytek/viafly/settings/custompreferences/XPreference;
    instance-of v3, v2, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 150
    check-cast v3, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;

    invoke-virtual {v3}, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;->isChecked()Z

    move-result v1

    .line 151
    .local v1, "isChecked":Z
    check-cast v2, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;

    .end local v2    # "xPreference":Lcom/iflytek/viafly/settings/custompreferences/XPreference;
    if-nez v1, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;->setChecked(Z)V

    .line 152
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->mCardInfos:Ljava/util/List;

    invoke-static {v3}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->mCardInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, p3, :cond_0

    .line 153
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->mCardInfos:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/settings/ui/CardInfo;

    invoke-virtual {v3}, Lcom/iflytek/viafly/settings/ui/CardInfo;->getCardId()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "cardId":Ljava/lang/String;
    invoke-static {}, Lrg;->a()Lrg;

    move-result-object v3

    if-nez v1, :cond_2

    :goto_1
    invoke-virtual {v3, v0, v4}, Lrg;->a(Ljava/lang/String;Z)V

    .line 155
    if-eqz v1, :cond_3

    .line 156
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string/jumbo v4, "\u5361\u7247\u5173\u95ed\u6210\u529f"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 164
    .end local v0    # "cardId":Ljava/lang/String;
    .end local v1    # "isChecked":Z
    :cond_0
    :goto_2
    return-void

    .restart local v1    # "isChecked":Z
    :cond_1
    move v3, v5

    .line 151
    goto :goto_0

    .restart local v0    # "cardId":Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 154
    goto :goto_1

    .line 158
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string/jumbo v4, "\u5361\u7247\u6dfb\u52a0\u6210\u529f"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 112
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->onPause()V

    .line 115
    const-string/jumbo v0, "CardsMgrFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPause || mRefreshFromSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->mRefreshFromSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getListView()Lcom/iflytek/base/skin/customView/XListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->mShowLength:I

    .line 117
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 121
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->onResume()V

    .line 123
    const-string/jumbo v0, "CardsMgrFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResume || mRefreshFromSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->mRefreshFromSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->mRefreshFromSetting:Z

    if-eqz v0, :cond_0

    .line 125
    const-string/jumbo v0, "CardsMgrFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mlistview.child = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getListView()Lcom/iflytek/base/skin/customView/XListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XListView;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 128
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 57
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getListView()Lcom/iflytek/base/skin/customView/XListView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02043b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XListView;->setBackgroundColor(I)V

    .line 59
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getListView()Lcom/iflytek/base/skin/customView/XListView;

    move-result-object v2

    invoke-virtual {v2, v5, v5, v5, v5}, Lcom/iflytek/base/skin/customView/XListView;->setPadding(IIII)V

    .line 60
    const-string/jumbo v2, "\u5361\u7247\u7ba1\u7406"

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->setTitleText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/16 v6, 0x60

    invoke-static {v5, v6}, Lazk;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 66
    .local v1, "titleView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 67
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 68
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "titleView":Landroid/widget/TextView;
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->addWeixinView()V

    .line 74
    return-void
.end method

.method protected setChildrenBackground()V
    .locals 0

    .prologue
    .line 140
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->setChildrenBackground()V

    .line 142
    return-void
.end method
