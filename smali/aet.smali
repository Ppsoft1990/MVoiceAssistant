.class public Laet;
.super Ljava/lang/Object;
.source "CommandMessageItemDelegate.java"

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
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 20
    const v0, 0x7f030059

    return v0
.end method

.method public a(Lady;Laee;I)V
    .locals 6
    .param p1, "viewHolder"    # Lady;
    .param p2, "chatMessage"    # Laee;
    .param p3, "position"    # I

    .prologue
    .line 30
    instance-of v4, p2, Laes;

    if-eqz v4, :cond_1

    move-object v1, p2

    .line 31
    check-cast v1, Laes;

    .line 32
    .local v1, "leftMessage":Laes;
    invoke-virtual {p1}, Lady;->b()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b02eb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 33
    .local v0, "container":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Laes;->b()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 34
    .local v3, "parent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 35
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 37
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 38
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Laes;->b()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .end local v0    # "container":Landroid/widget/LinearLayout;
    .end local v1    # "leftMessage":Laes;
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "parent":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lady;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 16
    check-cast p2, Laee;

    invoke-virtual {p0, p1, p2, p3}, Laet;->a(Lady;Laee;I)V

    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 45
    return-void
.end method

.method public a(Laee;)Z
    .locals 1
    .param p1, "item"    # Laee;

    .prologue
    .line 25
    instance-of v0, p1, Laes;

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 16
    check-cast p1, Laee;

    invoke-virtual {p0, p1}, Laet;->a(Laee;)Z

    move-result v0

    return v0
.end method
