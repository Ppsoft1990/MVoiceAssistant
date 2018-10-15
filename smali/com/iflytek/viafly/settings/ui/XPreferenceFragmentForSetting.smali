.class public abstract Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;
.super Lcom/iflytek/yd/ui/BaseFragment;
.source "XPreferenceFragmentForSetting.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mListView:Lcom/iflytek/base/skin/customView/XListView;

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
    .line 25
    invoke-direct {p0}, Lcom/iflytek/yd/ui/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected add(ILcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "xPreference"    # Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;->add(ILcom/iflytek/viafly/settings/ui/Item;)V

    .line 171
    return-void
.end method

.method protected add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V
    .locals 1
    .param p1, "xPreference"    # Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;->add(Lcom/iflytek/viafly/settings/ui/Item;)Z

    .line 148
    return-void
.end method

.method protected addAfterFixedItem(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V
    .locals 3
    .param p1, "oldPreference"    # Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;
    .param p2, "newPreference"    # Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;

    .prologue
    .line 151
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    const/4 v1, -0x1

    .line 155
    .local v1, "position":I
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXPreferences:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXPreferences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 157
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXPreferences:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_3

    .line 158
    move v1, v0

    .line 163
    .end local v0    # "i":I
    :cond_2
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 164
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2, p2}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->add(ILcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    goto :goto_0

    .line 156
    .restart local v0    # "i":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected getItemAtPosition(I)Lcom/iflytek/viafly/settings/custompreferences/XPreference;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;

    return-object v0
.end method

.method protected final getListAdapter()Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;

    return-object v0
.end method

.method protected final getListView()Lcom/iflytek/base/skin/customView/XListView;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    return-object v0
.end method

.method protected final hideListView()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XListView;->setVisibility(I)V

    .line 126
    return-void
.end method

.method protected abstract loadData(Landroid/content/Context;)V
.end method

.method protected final notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;->notifyDataSetChanged()V

    .line 142
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/iflytek/yd/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 37
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXPreferences:Ljava/util/List;

    .line 38
    new-instance v1, Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXPreferences:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;

    .line 41
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->loadData(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

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

    .line 47
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 49
    .local v0, "context":Landroid/content/Context;
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/yd/ui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v1

    .line 52
    .local v1, "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    new-instance v2, Lcom/iflytek/base/skin/customView/XListView;

    invoke-direct {v2, v0}, Lcom/iflytek/base/skin/customView/XListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    .line 54
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XListView;->setScrollBarStyle(I)V

    .line 55
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v2, v4}, Lcom/iflytek/base/skin/customView/XListView;->setScrollingCacheEnabled(Z)V

    .line 56
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v2, p0}, Lcom/iflytek/base/skin/customView/XListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 57
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v2, v4}, Lcom/iflytek/base/skin/customView/XListView;->setDividerHeight(I)V

    .line 58
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v2, v4}, Lcom/iflytek/base/skin/customView/XListView;->setCacheColorHint(I)V

    .line 60
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v2, v4}, Lcom/iflytek/base/skin/customView/XListView;->setFadingEdgeLength(I)V

    .line 61
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v2, v4}, Lcom/iflytek/base/skin/customView/XListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 62
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->addContentView(Landroid/view/View;)V

    .line 67
    const-string/jumbo v2, "#f2f2f2"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setBackgroundColor(I)V

    .line 69
    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-super {p0}, Lcom/iflytek/yd/ui/BaseFragment;->onDestroyView()V

    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XListView;->removeAllViewsInLayout()V

    .line 103
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;->clear()V

    .line 108
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXPreferences:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXPreferences:Ljava/util/List;

    .line 115
    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x2

    .line 74
    invoke-super {p0, p1, p2}, Lcom/iflytek/yd/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    const-string/jumbo v2, "\u8bbe\u7f6e"

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->setTitleText(Ljava/lang/CharSequence;)V

    .line 78
    const-string/jumbo v2, "style_settings_title_new"

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->setTitleStyle(Ljava/lang/String;)V

    .line 79
    const-string/jumbo v2, "statelist.fluepage_title_back_btn_states"

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->setBackBtnResource(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const v3, 0x7f0200d6

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 84
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    .local v1, "titleView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 86
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 87
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 88
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 92
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/16 v6, 0x60

    invoke-static {v5, v6}, Lazk;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    .end local v1    # "titleView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method protected remove(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 178
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXPreferences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 179
    .local v0, "size":I
    if-ge p1, v0, :cond_0

    .line 180
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;

    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;->remove(I)Lcom/iflytek/viafly/settings/ui/Item;

    .line 182
    :cond_0
    return-void
.end method

.method protected remove(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V
    .locals 1
    .param p1, "xPreference"    # Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;->remove(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method protected setChildrenBackground()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 185
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXPreferences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 186
    .local v1, "size":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXPreferences:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;

    const-string/jumbo v3, "statelist.setting_list_item_states"

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->setItemBackground(Ljava/lang/String;)V

    .line 202
    :cond_0
    return-void

    .line 189
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 190
    if-ne v0, v4, :cond_2

    .line 191
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXPreferences:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;

    const-string/jumbo v3, "statelist.setting_list_item_top_states"

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->setItemBackground(Ljava/lang/String;)V

    .line 189
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_2
    add-int/lit8 v2, v1, -0x1

    if-ne v0, v2, :cond_3

    .line 194
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXPreferences:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;

    const-string/jumbo v3, "statelist.setting_list_item_bottom_states"

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->setItemBackground(Ljava/lang/String;)V

    goto :goto_1

    .line 197
    :cond_3
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXPreferences:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;

    const-string/jumbo v3, "statelist.setting_list_item_middle_states"

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->setItemBackground(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected setGroupMinHeight(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 206
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXPreferences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 207
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mXPreferences:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;

    int-to-float v3, p1

    invoke-virtual {v2, v0, v3}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->setLayoutMinHeight(Landroid/content/Context;F)V

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_0
    return-void
.end method

.method protected showListView()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XListView;->setVisibility(I)V

    .line 122
    return-void
.end method
