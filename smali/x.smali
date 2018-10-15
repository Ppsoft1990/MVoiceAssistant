.class Lx;
.super Ljava/lang/Object;
.source "DrawableCompatKitKat.java"


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 36
    instance-of v0, p0, Lad;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lad;

    invoke-direct {v0, p0}, Lad;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p0, v0

    .line 39
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object p0
.end method
