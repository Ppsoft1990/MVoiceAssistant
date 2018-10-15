.class public Lcom/iflytek/viafly/homepage/HomeMainScrollView;
.super Landroid/widget/ScrollView;
.source "HomeMainScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/HomeMainScrollView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/viafly/homepage/HomeMainScrollView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "oldx"    # I
    .param p4, "oldy"    # I

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 31
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/HomeMainScrollView;->a:Lcom/iflytek/viafly/homepage/HomeMainScrollView$a;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/HomeMainScrollView;->a:Lcom/iflytek/viafly/homepage/HomeMainScrollView$a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iflytek/viafly/homepage/HomeMainScrollView$a;->a(IIII)V

    .line 34
    :cond_0
    return-void
.end method

.method public setScrollListener(Lcom/iflytek/viafly/homepage/HomeMainScrollView$a;)V
    .locals 0
    .param p1, "mScrollListener"    # Lcom/iflytek/viafly/homepage/HomeMainScrollView$a;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/HomeMainScrollView;->a:Lcom/iflytek/viafly/homepage/HomeMainScrollView$a;

    .line 26
    return-void
.end method
