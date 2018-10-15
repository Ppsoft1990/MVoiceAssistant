.class public Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;
.super Lcom/iflytek/base/skin/customView/XLinearLayout;
.source "SmsPrivacySettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactNameView"
.end annotation


# instance fields
.field private mAuditionTextView:Lcom/iflytek/base/skin/customView/XTextView;

.field private mItemButton:Lcom/iflytek/base/skin/customView/XImageView;

.field private mItemDeleteLayout:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private mNameTextView:Lcom/iflytek/base/skin/customView/XTextView;

.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    .line 491
    invoke-direct {p0, p2}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 492
    invoke-direct {p0, p2}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->InitView(Landroid/content/Context;)V

    .line 493
    return-void
.end method

.method public constructor <init>(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    .line 496
    invoke-direct {p0, p2, p3}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 497
    invoke-direct {p0, p2}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->InitView(Landroid/content/Context;)V

    .line 498
    return-void
.end method

.method private InitView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 506
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 507
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300b1

    .line 508
    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 512
    .local v1, "root":Landroid/view/View;
    const v2, 0x7f0b049f

    .line 513
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->mItemDeleteLayout:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 515
    const v2, 0x7f0b04a0

    .line 516
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->mItemButton:Lcom/iflytek/base/skin/customView/XImageView;

    .line 518
    const v2, 0x7f0b049d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->mNameTextView:Lcom/iflytek/base/skin/customView/XTextView;

    .line 519
    const v2, 0x7f0b049e

    .line 520
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->mAuditionTextView:Lcom/iflytek/base/skin/customView/XTextView;

    .line 522
    return-void
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;)Lcom/iflytek/base/skin/customView/XTextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->mAuditionTextView:Lcom/iflytek/base/skin/customView/XTextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;)Lcom/iflytek/base/skin/customView/XImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->mItemButton:Lcom/iflytek/base/skin/customView/XImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;)Lcom/iflytek/base/skin/customView/XLinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->mItemDeleteLayout:Lcom/iflytek/base/skin/customView/XLinearLayout;

    return-object v0
.end method


# virtual methods
.method public final showData(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "location"    # I

    .prologue
    const v2, 0x7f0c002a

    .line 532
    if-eqz p1, :cond_0

    .line 533
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->mNameTextView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    if-nez p2, :cond_3

    .line 535
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$600(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->mAuditionTextView:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    const v2, 0x7f0c0029

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$700(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 538
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->mAuditionTextView:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 540
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->mAuditionTextView:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 542
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$700(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)I

    move-result v0

    if-ne p2, v0, :cond_4

    .line 543
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->mAuditionTextView:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 545
    :cond_4
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->mAuditionTextView:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
