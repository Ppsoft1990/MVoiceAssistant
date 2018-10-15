.class public abstract Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;
.super Lcom/iflytek/yd/ui/BaseFragment;
.source "XBaseFragmentForSetting.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private context:Landroid/content/Context;

.field private mListView:Lcom/iflytek/base/skin/customView/XListView;

.field private mTipView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

.field private mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;

.field private mXPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/iflytek/yd/ui/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public add(ILcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "xPreference"    # Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;

    .prologue
    .line 178
    if-eqz p2, :cond_0

    .line 179
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;->add(ILcom/iflytek/viafly/settings/ui/Item;)V

    .line 181
    :cond_0
    return-void
.end method

.method public add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V
    .locals 1
    .param p1, "xPreference"    # Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;->add(Lcom/iflytek/viafly/settings/ui/Item;)Z

    .line 153
    :cond_0
    return-void
.end method

.method public addDiverView(I)V
    .locals 3
    .param p1, "hight"    # I

    .prologue
    .line 172
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;-><init>(Landroid/content/Context;)V

    .line 173
    .local v0, "mdiverView":Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->context:Landroid/content/Context;

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->setHeight(Landroid/content/Context;F)V

    .line 174
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 175
    return-void
.end method

.method protected getItemAtPosition(I)Lcom/iflytek/viafly/settings/custompreferences/XPreference;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;

    return-object v0
.end method

.method protected final getListAdapter()Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;

    return-object v0
.end method

.method protected final getListView()Lcom/iflytek/base/skin/customView/XListView;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    return-object v0
.end method

.method protected final hideListView()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XListView;->setVisibility(I)V

    .line 129
    return-void
.end method

.method public abstract loadData(Landroid/content/Context;)V
.end method

.method protected final notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;->notifyDataSetChanged()V

    .line 145
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/iflytek/yd/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->context:Landroid/content/Context;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mXPreferences:Ljava/util/List;

    .line 42
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mXPreferences:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;

    .line 45
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->loadData(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 53
    .local v0, "context":Landroid/content/Context;
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/yd/ui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v1

    .line 56
    .local v1, "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    new-instance v2, Lcom/iflytek/base/skin/customView/XListView;

    invoke-direct {v2, v0}, Lcom/iflytek/base/skin/customView/XListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    .line 58
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XListView;->setScrollBarStyle(I)V

    .line 59
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v2, v4}, Lcom/iflytek/base/skin/customView/XListView;->setScrollingCacheEnabled(Z)V

    .line 60
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v2, p0}, Lcom/iflytek/base/skin/customView/XListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 61
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v2, v4}, Lcom/iflytek/base/skin/customView/XListView;->setDividerHeight(I)V

    .line 62
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v2, v4}, Lcom/iflytek/base/skin/customView/XListView;->setCacheColorHint(I)V

    .line 64
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v2, v4}, Lcom/iflytek/base/skin/customView/XListView;->setFadingEdgeLength(I)V

    .line 65
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v2, v4}, Lcom/iflytek/base/skin/customView/XListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 66
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->addContentView(Landroid/view/View;)V

    .line 71
    const-string/jumbo v2, "#f6f6f6"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setBackgroundColor(I)V

    .line 73
    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-super {p0}, Lcom/iflytek/yd/ui/BaseFragment;->onDestroyView()V

    .line 105
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XListView;->removeAllViewsInLayout()V

    .line 107
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;->clear()V

    .line 112
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mXPreferences:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mXPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mXPreferences:Ljava/util/List;

    .line 119
    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x2

    .line 78
    invoke-super {p0, p1, p2}, Lcom/iflytek/yd/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 81
    const-string/jumbo v2, ""

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->setTitleText(Ljava/lang/CharSequence;)V

    .line 82
    const-string/jumbo v2, "style_settings_title_new"

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->setTitleStyle(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v2, "statelist.fluepage_title_back_btn_states"

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->setBackBtnResource(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const v3, 0x7f0200d6

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 88
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 89
    .local v1, "titleView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 90
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 92
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 96
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/16 v6, 0x60

    invoke-static {v5, v6}, Lazk;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    .end local v1    # "titleView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method protected remove(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 190
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mXPreferences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 191
    .local v0, "size":I
    if-ge p1, v0, :cond_0

    .line 192
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;

    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;->remove(I)Lcom/iflytek/viafly/settings/ui/Item;

    .line 194
    :cond_0
    return-void
.end method

.method public remove(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V
    .locals 1
    .param p1, "xPreference"    # Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;

    .prologue
    .line 184
    if-eqz p1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;->remove(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    return-void
.end method

.method public setTipText(Ljava/lang/String;)V
    .locals 3
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mTipView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mTipView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    .line 162
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mTipView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->context:Landroid/content/Context;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->setHeight(Landroid/content/Context;F)V

    .line 163
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mTipView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->setTitleSize(F)V

    .line 164
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mTipView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    const-string/jumbo v1, "#405061"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->setTitleColor(I)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mTipView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->setText(Ljava/lang/String;)V

    .line 167
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mTipView:Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->add(ILcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 168
    return-void
.end method

.method protected showListView()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XListView;->setVisibility(I)V

    .line 125
    return-void
.end method
