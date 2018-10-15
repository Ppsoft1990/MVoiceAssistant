.class public Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;
.super Lcom/iflytek/base/skin/customView/XLinearLayout;
.source "CallPrivacyAddContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactNameSortView"
.end annotation


# instance fields
.field private mDivider:Lcom/iflytek/base/skin/customView/XImageView;

.field private mHeadView:Lcom/iflytek/base/skin/customView/XTextView;

.field private mHeadViewBg:Lcom/iflytek/base/skin/customView/XRelativeLayout;

.field private mItemCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox;

.field private mName:Ljava/lang/String;

.field private mNameTextView:Lcom/iflytek/base/skin/customView/XTextView;

.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 644
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    .line 645
    invoke-direct {p0, p2}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 646
    invoke-direct {p0, p2}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->InitView(Landroid/content/Context;)V

    .line 647
    return-void
.end method

.method public constructor <init>(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 649
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    .line 650
    invoke-direct {p0, p2, p3}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 651
    invoke-direct {p0, p2}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->InitView(Landroid/content/Context;)V

    .line 652
    return-void
.end method

.method private InitView(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 655
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 656
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030077

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 658
    .local v1, "root":Landroid/view/View;
    const v2, 0x7f0b036c

    .line 659
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->mDivider:Lcom/iflytek/base/skin/customView/XImageView;

    .line 660
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->mDivider:Lcom/iflytek/base/skin/customView/XImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 662
    const v2, 0x7f0b036e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->mHeadView:Lcom/iflytek/base/skin/customView/XTextView;

    .line 663
    const v2, 0x7f0b036d

    .line 664
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->mHeadViewBg:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 665
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->mHeadViewBg:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const/16 v3, 0x21

    invoke-virtual {v2, v3, v4, v4, v4}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setPadding(IIII)V

    .line 667
    const v2, 0x7f0b0370

    .line 668
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XCheckBox;

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->mItemCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox;

    .line 669
    const v2, 0x7f0b036f

    .line 670
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->mNameTextView:Lcom/iflytek/base/skin/customView/XTextView;

    .line 672
    return-void
.end method


# virtual methods
.method public final getCheckBox()Lcom/iflytek/base/skin/customView/XCheckBox;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->mItemCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getNameTextView()Lcom/iflytek/base/skin/customView/XTextView;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->mNameTextView:Lcom/iflytek/base/skin/customView/XTextView;

    return-object v0
.end method

.method public final showData(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/base/contacts/entities/ContactItem;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "contactItem"    # Lcom/iflytek/base/contacts/entities/ContactItem;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 687
    invoke-virtual {p3}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 689
    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->mName:Ljava/lang/String;

    .line 690
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->mNameTextView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    if-eqz p2, :cond_1

    .line 692
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->mDivider:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 693
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->mHeadViewBg:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v1, v3}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setVisibility(I)V

    .line 694
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->mHeadView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 695
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->mHeadView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, p2}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->mHeadViewBg:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setVisibility(I)V

    .line 698
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->mHeadView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public tooggleCheck()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 711
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->mItemCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 712
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->mItemCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/XCheckBox;->setChecked(Z)V

    .line 716
    :goto_0
    return v0

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->mItemCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XCheckBox;->setChecked(Z)V

    move v0, v1

    .line 716
    goto :goto_0
.end method
