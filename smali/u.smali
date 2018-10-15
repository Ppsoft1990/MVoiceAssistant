.class Lu;
.super Ljava/lang/Object;
.source "DrawableCompatBase.java"


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 53
    instance-of v0, p0, Laa;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Laa;

    invoke-direct {v0, p0}, Laa;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p0, v0

    .line 56
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object p0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 41
    instance-of v0, p0, Lz;

    if-eqz v0, :cond_0

    .line 42
    check-cast p0, Lz;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {p0, p1}, Lz;->a(Landroid/content/res/ColorStateList;)V

    .line 44
    :cond_0
    return-void
.end method
