.class Lw;
.super Ljava/lang/Object;
.source "DrawableCompatHoneycomb.java"


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 33
    instance-of v0, p0, Lac;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lac;

    invoke-direct {v0, p0}, Lac;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p0, v0

    .line 36
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object p0
.end method
