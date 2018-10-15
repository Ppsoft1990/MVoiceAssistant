.class public Laed;
.super Ljava/lang/Object;
.source "AnswerMessageItemDelegate.java"

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
    const v0, 0x7f030063

    return v0
.end method

.method public a(Lady;Laee;I)V
    .locals 10
    .param p1, "viewHolder"    # Lady;
    .param p2, "message"    # Laee;
    .param p3, "position"    # I

    .prologue
    .line 35
    instance-of v7, p2, Laec;

    if-eqz v7, :cond_0

    move-object v2, p2

    .line 36
    check-cast v2, Laec;

    .line 38
    .local v2, "leftMessage":Laec;
    invoke-virtual {p1}, Lady;->b()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0b02ef

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 41
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {p1}, Lady;->a()Landroid/content/Context;

    move-result-object v7

    const-wide/high16 v8, 0x402c000000000000L    # 14.0

    invoke-static {v7, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    .line 43
    .local v3, "leftPadding":I
    if-nez p3, :cond_1

    invoke-virtual {p1}, Lady;->a()Landroid/content/Context;

    move-result-object v7

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    invoke-static {v7, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v6

    .line 45
    .local v6, "topPadding":I
    :goto_0
    invoke-virtual {p1}, Lady;->a()Landroid/content/Context;

    move-result-object v7

    const-wide/high16 v8, 0x4041000000000000L    # 34.0

    invoke-static {v7, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    .line 46
    .local v4, "rightPadding":I
    const/4 v7, 0x0

    invoke-virtual {v1, v3, v6, v4, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 48
    invoke-virtual {p1}, Lady;->b()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0b02e3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/view/CircleImageView;

    .line 49
    .local v0, "imageView":Lcom/iflytek/viafly/ui/view/CircleImageView;
    invoke-virtual {v2}, Laec;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/iflytek/viafly/ui/view/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-virtual {p1}, Lady;->b()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0b02ee

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 52
    .local v5, "textView":Landroid/widget/TextView;
    iget-object v7, v2, Laec;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .end local v0    # "imageView":Lcom/iflytek/viafly/ui/view/CircleImageView;
    .end local v1    # "layout":Landroid/widget/LinearLayout;
    .end local v2    # "leftMessage":Laec;
    .end local v3    # "leftPadding":I
    .end local v4    # "rightPadding":I
    .end local v5    # "textView":Landroid/widget/TextView;
    .end local v6    # "topPadding":I
    :cond_0
    return-void

    .line 43
    .restart local v1    # "layout":Landroid/widget/LinearLayout;
    .restart local v2    # "leftMessage":Laec;
    .restart local v3    # "leftPadding":I
    :cond_1
    invoke-virtual {p1}, Lady;->a()Landroid/content/Context;

    move-result-object v7

    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    invoke-static {v7, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v6

    goto :goto_0
.end method

.method public bridge synthetic a(Lady;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 19
    check-cast p2, Laee;

    invoke-virtual {p0, p1, p2, p3}, Laed;->a(Lady;Laee;I)V

    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 60
    return-void
.end method

.method public a(Laee;)Z
    .locals 1
    .param p1, "item"    # Laee;

    .prologue
    .line 29
    instance-of v0, p1, Laec;

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 19
    check-cast p1, Laee;

    invoke-virtual {p0, p1}, Laed;->a(Laee;)Z

    move-result v0

    return v0
.end method
