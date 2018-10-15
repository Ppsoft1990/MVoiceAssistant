.class public Laej;
.super Ljava/lang/Object;
.source "QuestionMessageItemDelegate.java"

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
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 27
    const v0, 0x7f030069

    return v0
.end method

.method public a(Lady;Laee;I)V
    .locals 5
    .param p1, "viewHolder"    # Lady;
    .param p2, "message"    # Laee;
    .param p3, "position"    # I

    .prologue
    .line 38
    instance-of v3, p2, Laei;

    if-eqz v3, :cond_0

    move-object v1, p2

    .line 39
    check-cast v1, Laei;

    .line 41
    .local v1, "rightMessage":Laei;
    invoke-virtual {p1}, Lady;->b()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b02ee

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 42
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {p1}, Lady;->b()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0321

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 43
    .local v0, "contentLayout":Landroid/widget/LinearLayout;
    iget-object v3, v1, Laei;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const-string/jumbo v3, "QuestionMessageItemDelegate"

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 45
    new-instance v3, Laej$1;

    invoke-direct {v3, p0, v1}, Laej$1;-><init>(Laej;Laei;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    .end local v0    # "contentLayout":Landroid/widget/LinearLayout;
    .end local v1    # "rightMessage":Laei;
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lady;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 22
    check-cast p2, Laee;

    invoke-virtual {p0, p1, p2, p3}, Laej;->a(Lady;Laee;I)V

    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 58
    return-void
.end method

.method public a(Laee;)Z
    .locals 1
    .param p1, "item"    # Laee;

    .prologue
    .line 32
    instance-of v0, p1, Laei;

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 22
    check-cast p1, Laee;

    invoke-virtual {p0, p1}, Laej;->a(Laee;)Z

    move-result v0

    return v0
.end method
