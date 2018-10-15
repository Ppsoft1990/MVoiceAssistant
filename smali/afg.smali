.class public Lafg;
.super Ljava/lang/Object;
.source "JokeMessageItemDelegate.java"

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
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 25
    const v0, 0x7f030060

    return v0
.end method

.method public a(Lady;Laee;I)V
    .locals 7
    .param p1, "viewHolder"    # Lady;
    .param p2, "message"    # Laee;
    .param p3, "position"    # I

    .prologue
    .line 36
    instance-of v6, p2, Laff;

    if-eqz v6, :cond_0

    move-object v1, p2

    .line 37
    check-cast v1, Laff;

    .line 39
    .local v1, "jockMessage":Laff;
    invoke-virtual {p1}, Lady;->b()Landroid/view/View;

    move-result-object v5

    .line 41
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f0b02e3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/view/CircleImageView;

    .line 42
    .local v0, "imageView":Lcom/iflytek/viafly/ui/view/CircleImageView;
    invoke-virtual {v1}, Laff;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/iflytek/viafly/ui/view/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    const v6, 0x7f0b02e4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 45
    .local v4, "textView":Landroid/widget/TextView;
    iget-object v6, v1, Laff;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v6, 0x7f0b0306

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 50
    .local v2, "moreLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Laff;->b()Ljava/lang/Runnable;

    move-result-object v3

    .line 52
    .local v3, "runnable":Ljava/lang/Runnable;
    if-nez v3, :cond_1

    .line 64
    .end local v0    # "imageView":Lcom/iflytek/viafly/ui/view/CircleImageView;
    .end local v1    # "jockMessage":Laff;
    .end local v2    # "moreLayout":Landroid/widget/LinearLayout;
    .end local v3    # "runnable":Ljava/lang/Runnable;
    .end local v4    # "textView":Landroid/widget/TextView;
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 56
    .restart local v0    # "imageView":Lcom/iflytek/viafly/ui/view/CircleImageView;
    .restart local v1    # "jockMessage":Laff;
    .restart local v2    # "moreLayout":Landroid/widget/LinearLayout;
    .restart local v3    # "runnable":Ljava/lang/Runnable;
    .restart local v4    # "textView":Landroid/widget/TextView;
    .restart local v5    # "view":Landroid/view/View;
    :cond_1
    new-instance v6, Lafg$1;

    invoke-direct {v6, p0, v2, v3}, Lafg$1;-><init>(Lafg;Landroid/widget/LinearLayout;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lady;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 20
    check-cast p2, Laee;

    invoke-virtual {p0, p1, p2, p3}, Lafg;->a(Lady;Laee;I)V

    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 69
    return-void
.end method

.method public a(Laee;)Z
    .locals 1
    .param p1, "item"    # Laee;

    .prologue
    .line 30
    instance-of v0, p1, Laff;

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 20
    check-cast p1, Laee;

    invoke-virtual {p0, p1}, Lafg;->a(Laee;)Z

    move-result v0

    return v0
.end method
