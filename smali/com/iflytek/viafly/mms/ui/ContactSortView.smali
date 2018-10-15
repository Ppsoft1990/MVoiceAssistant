.class public Lcom/iflytek/viafly/mms/ui/ContactSortView;
.super Lcom/iflytek/base/skin/customView/XLinearLayout;
.source "ContactSortView.java"


# instance fields
.field private a:Lcom/iflytek/base/skin/customView/XImageView;

.field private b:Lcom/iflytek/base/skin/customView/XTextView;

.field private c:Lcom/iflytek/base/skin/customView/XRelativeLayout;

.field private d:Lcom/iflytek/base/skin/customView/XImageView;

.field private e:Lcom/iflytek/base/skin/customView/XTextView;

.field private f:Lcom/iflytek/base/contacts/entities/ContactItem;

.field private g:Lcom/iflytek/base/skin/customView/XTextView;

.field private h:Lcom/iflytek/base/skin/customView/XTextView;

.field private i:Lcom/iflytek/base/skin/customView/XCheckBox;

.field private j:Landroid/content/res/ColorStateList;

.field private k:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/base/contacts/entities/ContactItem;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "item"    # Lcom/iflytek/base/contacts/entities/ContactItem;

    .prologue
    const/16 v5, 0x8

    const/4 v8, 0x0

    .line 82
    iput-object p3, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->f:Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 83
    if-eqz p3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->e:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {p3}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->g:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {p3}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    if-eqz p2, :cond_1

    .line 87
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->a:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v3, v5}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 88
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->c:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v3, v8}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setVisibility(I)V

    .line 89
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->b:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v3, v8}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 90
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->b:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v3, p2}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :goto_0
    invoke-static {p1}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v3

    .line 97
    invoke-virtual {p3}, Lcom/iflytek/base/contacts/entities/ContactItem;->h()J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/iflytek/base/contacts/entities/ContactItem;->b()J

    move-result-wide v6

    .line 96
    invoke-virtual {v3, v4, v5, v6, v7}, Lhe;->a(JJ)[B

    move-result-object v2

    .line 98
    .local v2, "photoData":[B
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 99
    array-length v3, v2

    invoke-static {v2, v8, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 100
    .local v1, "photoBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 101
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->d:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v3, v0}, Lcom/iflytek/base/skin/customView/XImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "photoBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "photoData":[B
    :cond_0
    return-void

    .line 93
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->c:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v3, v5}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setVisibility(I)V

    .line 94
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->b:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v3, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final getCheckBox()Lcom/iflytek/base/skin/customView/XCheckBox;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->i:Lcom/iflytek/base/skin/customView/XCheckBox;

    return-object v0
.end method

.method public getContactItem()Lcom/iflytek/base/contacts/entities/ContactItem;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->f:Lcom/iflytek/base/contacts/entities/ContactItem;

    return-object v0
.end method

.method protected getNameTextView()Lcom/iflytek/base/skin/customView/XTextView;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->e:Lcom/iflytek/base/skin/customView/XTextView;

    return-object v0
.end method

.method protected getNumTextView()Lcom/iflytek/base/skin/customView/XTextView;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->g:Lcom/iflytek/base/skin/customView/XTextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 60
    invoke-super {p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->onFinishInflate()V

    .line 61
    const v0, 0x7f0b036c

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/ContactSortView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->a:Lcom/iflytek/base/skin/customView/XImageView;

    .line 62
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->a:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 63
    const v0, 0x7f0b036e

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/ContactSortView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->b:Lcom/iflytek/base/skin/customView/XTextView;

    .line 64
    const v0, 0x7f0b036d

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/ContactSortView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->c:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 65
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->c:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const/16 v1, 0x21

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setPadding(IIII)V

    .line 66
    const v0, 0x7f0b0370

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/ContactSortView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XCheckBox;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->i:Lcom/iflytek/base/skin/customView/XCheckBox;

    .line 67
    const v0, 0x7f0b037e

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/ContactSortView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->d:Lcom/iflytek/base/skin/customView/XImageView;

    .line 68
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->d:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 69
    const v0, 0x7f0b036f

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/ContactSortView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->e:Lcom/iflytek/base/skin/customView/XTextView;

    .line 70
    const v0, 0x7f0b037d

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/ContactSortView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->g:Lcom/iflytek/base/skin/customView/XTextView;

    .line 71
    const v0, 0x7f0b037f

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/ContactSortView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->h:Lcom/iflytek/base/skin/customView/XTextView;

    .line 73
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/ContactSortView;->getNameTextView()Lcom/iflytek/base/skin/customView/XTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->j:Landroid/content/res/ColorStateList;

    .line 74
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/ContactSortView;->getNameTextView()Lcom/iflytek/base/skin/customView/XTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->k:Landroid/content/res/ColorStateList;

    .line 75
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/ContactSortView;->getNameTextView()Lcom/iflytek/base/skin/customView/XTextView;

    move-result-object v0

    const-string/jumbo v1, "#bababa"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 143
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/ContactSortView;->getNumTextView()Lcom/iflytek/base/skin/customView/XTextView;

    move-result-object v0

    const-string/jumbo v1, "#d0d0d0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 148
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/ContactSortView;->getCheckBox()Lcom/iflytek/base/skin/customView/XCheckBox;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/XCheckBox;->setVisibility(I)V

    .line 150
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/ContactSortView;->getNameTextView()Lcom/iflytek/base/skin/customView/XTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 146
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/ContactSortView;->getNumTextView()Lcom/iflytek/base/skin/customView/XTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 148
    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public setNumTypeView(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->h:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->h:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactSortView;->h:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    goto :goto_0
.end method
