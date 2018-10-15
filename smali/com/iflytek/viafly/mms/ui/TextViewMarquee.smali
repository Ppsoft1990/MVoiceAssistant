.class public Lcom/iflytek/viafly/mms/ui/TextViewMarquee;
.super Lcom/iflytek/base/skin/customView/XTextView;
.source "TextViewMarquee.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/TextViewMarquee;->setFocusable(Z)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/TextViewMarquee;->setFocusableInTouchMode(Z)V

    .line 28
    return-void
.end method


# virtual methods
.method public isFocused()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 33
    if-eqz p1, :cond_0

    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/base/skin/customView/XTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 37
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "focused"    # Z

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 44
    invoke-super {p0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->onWindowFocusChanged(Z)V

    .line 46
    :cond_0
    return-void
.end method
