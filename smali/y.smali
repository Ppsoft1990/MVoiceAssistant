.class Ly;
.super Ljava/lang/Object;
.source "DrawableCompatLollipop.java"


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 57
    instance-of v0, p0, Lae;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lae;

    invoke-direct {v0, p0}, Lae;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p0, v0

    .line 60
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object p0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 50
    return-void
.end method
