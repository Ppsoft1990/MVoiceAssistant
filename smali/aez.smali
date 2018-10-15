.class public Laez;
.super Ljava/lang/Object;
.source "BaikeMessageItemDelegate.java"

# interfaces
.implements Ladv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ladv",
        "<",
        "Laee;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 24
    const v0, 0x7f030057

    return v0
.end method

.method public a(Lady;Laee;I)V
    .locals 6
    .param p1, "viewHolder"    # Lady;
    .param p2, "message"    # Laee;
    .param p3, "position"    # I

    .prologue
    .line 35
    instance-of v5, p2, Laey;

    if-eqz v5, :cond_0

    move-object v0, p2

    .line 36
    check-cast v0, Laey;

    .line 38
    .local v0, "baikeMessage":Laey;
    invoke-virtual {p1}, Lady;->b()Landroid/view/View;

    move-result-object v4

    .line 40
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0b02e3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/ui/view/CircleImageView;

    .line 41
    .local v2, "imageView":Lcom/iflytek/viafly/ui/view/CircleImageView;
    invoke-virtual {v0}, Laey;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/ui/view/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    const v5, 0x7f0b02e4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 44
    .local v1, "contentView":Landroid/widget/TextView;
    iget-object v5, v0, Laey;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-static {v1}, Lazk;->a(Landroid/widget/TextView;)V

    .line 47
    const v5, 0x7f0b02e5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 48
    .local v3, "tipView":Landroid/widget/TextView;
    iget-object v5, v0, Laey;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .end local v0    # "baikeMessage":Laey;
    .end local v1    # "contentView":Landroid/widget/TextView;
    .end local v2    # "imageView":Lcom/iflytek/viafly/ui/view/CircleImageView;
    .end local v3    # "tipView":Landroid/widget/TextView;
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lady;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 19
    check-cast p2, Laee;

    invoke-virtual {p0, p1, p2, p3}, Laez;->a(Lady;Laee;I)V

    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 55
    return-void
.end method

.method public a(Laee;)Z
    .locals 1
    .param p1, "item"    # Laee;

    .prologue
    .line 29
    instance-of v0, p1, Laey;

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 19
    check-cast p1, Laee;

    invoke-virtual {p0, p1}, Laez;->a(Laee;)Z

    move-result v0

    return v0
.end method
