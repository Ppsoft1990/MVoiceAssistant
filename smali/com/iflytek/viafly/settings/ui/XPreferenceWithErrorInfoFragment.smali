.class public abstract Lcom/iflytek/viafly/settings/ui/XPreferenceWithErrorInfoFragment;
.super Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;


# instance fields
.field private mProgressBar:Lcom/iflytek/base/skin/customView/XProgressBar;

.field private mTextView:Lcom/iflytek/base/skin/customView/XTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/viafly/settings/ui/XPreferenceWithErrorInfoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceWithErrorInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v2, v1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceWithErrorInfoFragment;->mTextView:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v2, Lcom/iflytek/base/skin/customView/XProgressBar;

    invoke-direct {v2, v1}, Lcom/iflytek/base/skin/customView/XProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceWithErrorInfoFragment;->mProgressBar:Lcom/iflytek/base/skin/customView/XProgressBar;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceWithErrorInfoFragment;->mTextView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceWithErrorInfoFragment;->mProgressBar:Lcom/iflytek/base/skin/customView/XProgressBar;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->onDestroyView()V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceWithErrorInfoFragment;->mTextView:Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceWithErrorInfoFragment;->mProgressBar:Lcom/iflytek/base/skin/customView/XProgressBar;

    return-void
.end method

.method public showErrorView(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceWithErrorInfoFragment;->hideListView()V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceWithErrorInfoFragment;->mProgressBar:Lcom/iflytek/base/skin/customView/XProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceWithErrorInfoFragment;->mTextView:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceWithErrorInfoFragment;->mTextView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showListView()V
    .locals 2

    const/16 v1, 0x8

    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragment;->showListView()V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceWithErrorInfoFragment;->mProgressBar:Lcom/iflytek/base/skin/customView/XProgressBar;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceWithErrorInfoFragment;->mTextView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    return-void
.end method

.method public showProgressBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceWithErrorInfoFragment;->hideListView()V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceWithErrorInfoFragment;->mProgressBar:Lcom/iflytek/base/skin/customView/XProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceWithErrorInfoFragment;->mTextView:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    return-void
.end method
