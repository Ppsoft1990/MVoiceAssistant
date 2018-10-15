.class Lv;
.super Ljava/lang/Object;
.source "DrawableCompatEclair.java"


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 26
    instance-of v0, p0, Lab;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lab;

    invoke-direct {v0, p0}, Lab;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p0, v0

    .line 29
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object p0
.end method
