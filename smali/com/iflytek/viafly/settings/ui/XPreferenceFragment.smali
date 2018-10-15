.class public abstract Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;
.super Lcom/iflytek/yd/ui/BaseFragment;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mListView:Lcom/iflytek/base/skin/customView/XListView;

.field private mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapter;

.field private mXPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/yd/ui/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected add(ILcom/iflytek/viafly/settings/custompreferences/XBasePreference;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/settings/ui/XListAdapter;->add(ILcom/iflytek/viafly/settings/ui/Item;)V

    return-void
.end method

.method protected add(Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapter;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/settings/ui/XListAdapter;->add(Lcom/iflytek/viafly/settings/ui/Item;)Z

    return-void
.end method

.method protected addAfterFixedItem(Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;)V
    .locals 3

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXPreferences:Ljava/util/List;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXPreferences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXPreferences:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    :goto_2
    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->add(ILcom/iflytek/viafly/settings/custompreferences/XBasePreference;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method protected getItemAtPosition(I)Lcom/iflytek/viafly/settings/custompreferences/XPreference;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;

    return-object v0
.end method

.method protected final getListAdapter()Lcom/iflytek/viafly/settings/ui/XListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapter;

    return-object v0
.end method

.method protected final getListView()Lcom/iflytek/base/skin/customView/XListView;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    return-object v0
.end method

.method protected final hideListView()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XListView;->setVisibility(I)V

    return-void
.end method

.method protected abstract loadData(Landroid/content/Context;)V
.end method

.method protected final notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapter;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/XListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/iflytek/yd/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXPreferences:Ljava/util/List;

    new-instance v1, Lcom/iflytek/viafly/settings/ui/XListAdapter;

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXPreferences:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/iflytek/viafly/settings/ui/XListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapter;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->loadData(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 8

    const-wide/high16 v6, 0x401c000000000000L    # 7.0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/yd/ui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v1

    new-instance v2, Lcom/iflytek/base/skin/customView/XListView;

    invoke-direct {v2, v0}, Lcom/iflytek/base/skin/customView/XListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-static {v0, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-static {v0, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    invoke-virtual {v2, v3, v4, v0, v4}, Lcom/iflytek/base/skin/customView/XListView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    const/high16 v2, 0x2000000

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XListView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v0, v4}, Lcom/iflytek/base/skin/customView/XListView;->setScrollingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v0, v4}, Lcom/iflytek/base/skin/customView/XListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v0, v4}, Lcom/iflytek/base/skin/customView/XListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v0, v4}, Lcom/iflytek/base/skin/customView/XListView;->setFadingEdgeLength(I)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v0, v4}, Lcom/iflytek/base/skin/customView/XListView;->setVerticalFadingEdgeEnabled(Z)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapter;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->addContentView(Landroid/view/View;)V

    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/iflytek/yd/ui/BaseFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XListView;->removeAllViewsInLayout()V

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapter;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/XListAdapter;->clear()V

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapter;

    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXPreferences:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXPreferences:Ljava/util/List;

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/iflytek/yd/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string/jumbo v0, "\u8bbe\u7f6e"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->setTitleText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected remove(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapter;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/settings/ui/XListAdapter;->remove(I)Lcom/iflytek/viafly/settings/ui/Item;

    :cond_0
    return-void
.end method

.method protected remove(Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXListAdapter:Lcom/iflytek/viafly/settings/ui/XListAdapter;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/settings/ui/XListAdapter;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected setChildrenBackground()V
    .locals 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x2

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXPreferences:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;

    const-string/jumbo v1, "statelist.setting_list_item_states"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->setItemBackground(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXPreferences:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;

    const-string/jumbo v4, "statelist.setting_list_item_top_states"

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->setItemBackground(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v3, -0x1

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXPreferences:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;

    const-string/jumbo v4, "statelist.setting_list_item_bottom_states"

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->setItemBackground(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXPreferences:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;

    const-string/jumbo v4, "statelist.setting_list_item_middle_states"

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->setItemBackground(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected setGroupMinHeight(I)V
    .locals 5

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXPreferences:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;

    add-int/lit8 v4, p1, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->setLayoutMinHeight(Landroid/content/Context;F)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mXPreferences:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;

    int-to-float v4, p1

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->setLayoutMinHeight(Landroid/content/Context;F)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected showListView()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->mListView:Lcom/iflytek/base/skin/customView/XListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XListView;->setVisibility(I)V

    return-void
.end method
