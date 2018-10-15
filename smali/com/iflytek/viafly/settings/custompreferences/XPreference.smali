.class public abstract Lcom/iflytek/viafly/settings/custompreferences/XPreference;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/viafly/settings/ui/Item;


# instance fields
.field public mEnabled:Z

.field public mSummary:Lcom/iflytek/base/skin/customView/XTextView;

.field protected mSummaryAddition:Lcom/iflytek/base/skin/customView/XTextView;

.field public mTitle:Lcom/iflytek/base/skin/customView/XTextView;

.field private mView:Lcom/iflytek/base/skin/customView/XRelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mEnabled:Z

    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mView:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSummaryAddition()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mSummaryAddition:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mView:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mEnabled:Z

    return v0
.end method

.method public abstract onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mView:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mView:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mEnabled:Z

    return-void
.end method

.method public setSummary(I)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(I)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setSummaryAddition(I)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mSummaryAddition:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mSummaryAddition:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(I)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mSummaryAddition:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setSummaryAddition(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mSummaryAddition:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mSummaryAddition:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mSummaryAddition:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setSummaryColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setSummaryGone()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setSummaryStryle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitleColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTitleGone()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setTitleStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    :cond_0
    return-void
.end method
