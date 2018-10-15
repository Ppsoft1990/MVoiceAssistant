.class final Lcom/iflytek/base/skin/StateListDrawableFactory;
.super Landroid/view/View;
.source "StateListDrawableFactory.java"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public static getStateListDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 7
    .param p0, "normalDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "pressDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "disableDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 29
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 31
    .local v2, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    const v0, 0x101009e

    .line 32
    .local v0, "enabled":I
    const v1, 0x101009c

    .line 34
    .local v1, "focused":I
    new-array v3, v6, [I

    sget-object v4, Landroid/view/View;->ENABLED_STATE_SET:[I

    aget v4, v4, v5

    neg-int v4, v4

    aput v4, v3, v5

    invoke-virtual {v2, v3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 35
    sget-object v3, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v2, v3, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 36
    sget-object v3, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    invoke-virtual {v2, v3, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 37
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v0, v3, v5

    neg-int v4, v1

    aput v4, v3, v6

    invoke-virtual {v2, v3, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 38
    new-array v3, v6, [I

    sget-object v4, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    aget v4, v4, v5

    neg-int v4, v4

    aput v4, v3, v5

    invoke-virtual {v2, v3, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 39
    sget-object v3, Landroid/view/View;->EMPTY_STATE_SET:[I

    invoke-virtual {v2, v3, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 41
    return-object v2
.end method

.method public static getStateListDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 8
    .param p0, "enabled_and_uncheckedDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "enabled_and_checkedDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "disabled_and_uncheckedDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "disabled_and_checkedDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 49
    const v2, 0x101009e

    .line 50
    .local v2, "enabled":I
    const v1, 0x10100a0

    .line 52
    .local v1, "checked":I
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 53
    .local v0, "bg":Landroid/graphics/drawable/StateListDrawable;
    new-array v3, v7, [I

    aput v2, v3, v5

    aput v1, v3, v6

    invoke-virtual {v0, v3, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 54
    new-array v3, v7, [I

    aput v2, v3, v5

    neg-int v4, v1

    aput v4, v3, v6

    invoke-virtual {v0, v3, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 55
    new-array v3, v7, [I

    neg-int v4, v2

    aput v4, v3, v5

    aput v1, v3, v6

    invoke-virtual {v0, v3, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 56
    new-array v3, v7, [I

    neg-int v4, v2

    aput v4, v3, v5

    neg-int v4, v1

    aput v4, v3, v6

    invoke-virtual {v0, v3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 58
    return-object v0
.end method
