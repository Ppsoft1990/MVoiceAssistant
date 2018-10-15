.class public Laeg;
.super Ljava/lang/Object;
.source "CommonMessageItemDelegate.java"

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
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 23
    const v0, 0x7f03005a

    return v0
.end method

.method public a(Lady;Laee;I)V
    .locals 7
    .param p1, "viewHolder"    # Lady;
    .param p2, "message"    # Laee;
    .param p3, "position"    # I

    .prologue
    .line 34
    instance-of v6, p2, Laef;

    if-eqz v6, :cond_0

    move-object v0, p2

    .line 35
    check-cast v0, Laef;

    .line 37
    .local v0, "commonMessage":Laef;
    invoke-virtual {p1}, Lady;->b()Landroid/view/View;

    move-result-object v5

    .line 39
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f0b02ec

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 41
    .local v2, "layout":Landroid/widget/LinearLayout;
    const v6, 0x7f0b02ee

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 42
    .local v4, "textView":Landroid/widget/TextView;
    iget-object v6, v0, Laef;->e:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const v6, 0x7f0b02ed

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 45
    .local v1, "imageView":Landroid/widget/ImageView;
    iget v6, v0, Laef;->a:I

    if-lez v6, :cond_1

    .line 47
    iget v6, v0, Laef;->a:I

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    :goto_0
    invoke-virtual {v0}, Laef;->b()Ljava/lang/Runnable;

    move-result-object v3

    .line 54
    .local v3, "runnable":Ljava/lang/Runnable;
    if-nez v3, :cond_2

    .line 67
    .end local v0    # "commonMessage":Laef;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "layout":Landroid/widget/LinearLayout;
    .end local v3    # "runnable":Ljava/lang/Runnable;
    .end local v4    # "textView":Landroid/widget/TextView;
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 49
    .restart local v0    # "commonMessage":Laef;
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    .restart local v2    # "layout":Landroid/widget/LinearLayout;
    .restart local v4    # "textView":Landroid/widget/TextView;
    .restart local v5    # "view":Landroid/view/View;
    :cond_1
    const v6, 0x7f020115

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 58
    .restart local v3    # "runnable":Ljava/lang/Runnable;
    :cond_2
    new-instance v6, Laeg$1;

    invoke-direct {v6, p0, v2, v3}, Laeg$1;-><init>(Laeg;Landroid/widget/LinearLayout;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public bridge synthetic a(Lady;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Laee;

    invoke-virtual {p0, p1, p2, p3}, Laeg;->a(Lady;Laee;I)V

    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 72
    return-void
.end method

.method public a(Laee;)Z
    .locals 1
    .param p1, "item"    # Laee;

    .prologue
    .line 28
    instance-of v0, p1, Laef;

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 18
    check-cast p1, Laee;

    invoke-virtual {p0, p1}, Laeg;->a(Laee;)Z

    move-result v0

    return v0
.end method
