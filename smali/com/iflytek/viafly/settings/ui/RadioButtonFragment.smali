.class public abstract Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;
.super Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;
.source "RadioButtonFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;"
    }
.end annotation


# instance fields
.field private mItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    .local p0, "this":Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;, "Lcom/iflytek/viafly/settings/ui/RadioButtonFragment<TV;>;"
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract bindKey()Ljava/lang/String;
.end method

.method protected defaultIndex()I
    .locals 1

    .prologue
    .line 128
    .local p0, "this":Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;, "Lcom/iflytek/viafly/settings/ui/RadioButtonFragment<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getSummaryItems()[Ljava/lang/String;
.end method

.method protected abstract getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method protected abstract getValueItems()[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TV;"
        }
    .end annotation
.end method

.method protected loadData(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    .local p0, "this":Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;, "Lcom/iflytek/viafly/settings/ui/RadioButtonFragment<TV;>;"
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;->getSummaryItems()[Ljava/lang/String;

    move-result-object v3

    .line 26
    .local v3, "items":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-nez v6, :cond_1

    .line 79
    :cond_0
    return-void

    .line 31
    :cond_1
    new-instance v1, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    invoke-direct {v1, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;-><init>(Landroid/content/Context;)V

    .line 32
    .local v1, "emptyView":Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;
    const/high16 v6, 0x41000000    # 8.0f

    invoke-virtual {v1, p1, v6}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->setHeight(Landroid/content/Context;F)V

    .line 33
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 36
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;->defaultIndex()I

    move-result v0

    .line 37
    .local v0, "defaultIndex":I
    if-ltz v0, :cond_2

    array-length v6, v3

    if-lt v0, v6, :cond_3

    .line 38
    :cond_2
    const/4 v0, 0x0

    .line 41
    :cond_3
    const/4 v4, 0x0

    .line 42
    .local v4, "selectedIndex":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 43
    .local v5, "selectedValue":Ljava/lang/Object;, "TV;"
    if-nez v5, :cond_6

    .line 44
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;->getValueItems()[Ljava/lang/Object;

    move-result-object v6

    aget-object v5, v6, v0

    .line 45
    move v4, v0

    .line 57
    :cond_4
    :goto_0
    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;->saveValue(Ljava/lang/Object;)V

    .line 59
    array-length v6, v3

    new-array v6, v6, [Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    iput-object v6, p0, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;->mItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    .line 61
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v3

    if-ge v2, v6, :cond_0

    .line 62
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;->mItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    new-instance v7, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    invoke-direct {v7, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;-><init>(Landroid/content/Context;)V

    aput-object v7, v6, v2

    .line 63
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;->mItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    aget-object v6, v6, v2

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setTitle(Ljava/lang/String;)V

    .line 64
    if-ne v2, v4, :cond_8

    .line 65
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;->mItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    aget-object v6, v6, v2

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setChecked(Z)V

    .line 69
    :goto_2
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;->mItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    aget-object v6, v6, v2

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 70
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;->mItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    aget-object v6, v6, v2

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-wide v8, 0x404b800000000000L    # 55.0

    invoke-static {v7, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setMinHeight(I)V

    .line 72
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_5

    if-ltz v2, :cond_5

    .line 73
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;->mItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    aget-object v6, v6, v2

    invoke-virtual {v6, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setBottomLine(Landroid/content/Context;)V

    .line 61
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 48
    .end local v2    # "i":I
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    array-length v6, v3

    if-ge v2, v6, :cond_4

    .line 49
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;->getValueItems()[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 50
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;->getValueItems()[Ljava/lang/Object;

    move-result-object v6

    aget-object v5, v6, v2

    .line 51
    move v4, v2

    .line 52
    goto :goto_0

    .line 48
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 67
    :cond_8
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;->mItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    aget-object v6, v6, v2

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setChecked(Z)V

    goto :goto_2
.end method

.method protected onItemClick(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 87
    .local p0, "this":Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;, "Lcom/iflytek/viafly/settings/ui/RadioButtonFragment<TV;>;"
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 91
    .local p0, "this":Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;, "Lcom/iflytek/viafly/settings/ui/RadioButtonFragment<TV;>;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;->getItemAtPosition(I)Lcom/iflytek/viafly/settings/custompreferences/XPreference;

    move-result-object v2

    .line 92
    .local v2, "xPreference":Lcom/iflytek/viafly/settings/custompreferences/XPreference;
    const/4 v1, 0x0

    .line 93
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;->mItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 94
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;->mItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    aget-object v3, v3, v0

    if-ne v3, v2, :cond_0

    .line 95
    move v1, v0

    .line 96
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;->getValueItems()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;->saveValue(Ljava/lang/Object;)V

    .line 97
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;->mItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setChecked(Z)V

    .line 93
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;->mItems:[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setChecked(Z)V

    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;->onItemClick(I)V

    .line 103
    return-void
.end method

.method protected abstract saveValue(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method
