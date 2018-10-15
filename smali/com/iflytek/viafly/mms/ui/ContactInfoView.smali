.class public Lcom/iflytek/viafly/mms/ui/ContactInfoView;
.super Lcom/iflytek/base/skin/customView/XLinearLayout;
.source "ContactInfoView.java"


# instance fields
.field private a:Lcom/iflytek/base/skin/customView/XImageView;

.field private b:Lcom/iflytek/base/skin/customView/XTextView;

.field private c:Lcom/iflytek/base/skin/customView/XRelativeLayout;

.field private d:Lcom/iflytek/base/skin/customView/XTextView;

.field private e:Lcom/iflytek/base/contacts/entities/ContactItem;

.field private f:Lcom/iflytek/base/skin/customView/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/base/contacts/entities/ContactItem;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "item"    # Lcom/iflytek/base/contacts/entities/ContactItem;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 49
    iput-object p3, p0, Lcom/iflytek/viafly/mms/ui/ContactInfoView;->e:Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 50
    if-eqz p3, :cond_0

    .line 51
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactInfoView;->d:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {p3}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactInfoView;->f:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {p3}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    if-eqz p2, :cond_1

    .line 54
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactInfoView;->a:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactInfoView;->c:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactInfoView;->b:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactInfoView;->b:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p2}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactInfoView;->c:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactInfoView;->b:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getContactItem()Lcom/iflytek/base/contacts/entities/ContactItem;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactInfoView;->e:Lcom/iflytek/base/contacts/entities/ContactItem;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-super {p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->onFinishInflate()V

    .line 39
    const v0, 0x7f0b036c

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/ContactInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactInfoView;->a:Lcom/iflytek/base/skin/customView/XImageView;

    .line 40
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactInfoView;->a:Lcom/iflytek/base/skin/customView/XImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 41
    const v0, 0x7f0b036e

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/ContactInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactInfoView;->b:Lcom/iflytek/base/skin/customView/XTextView;

    .line 42
    const v0, 0x7f0b036d

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/ContactInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactInfoView;->c:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 43
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactInfoView;->c:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const/16 v1, 0x21

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setPadding(IIII)V

    .line 44
    const v0, 0x7f0b036f

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/ContactInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactInfoView;->d:Lcom/iflytek/base/skin/customView/XTextView;

    .line 45
    const v0, 0x7f0b037d

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/ContactInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactInfoView;->f:Lcom/iflytek/base/skin/customView/XTextView;

    .line 46
    return-void
.end method
