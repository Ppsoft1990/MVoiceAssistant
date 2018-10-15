.class Lab;
.super Laa;
.source "DrawableWrapperEclair.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lab$a;
    }
.end annotation


# direct methods
.method constructor <init>(Laa$a;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "state"    # Laa$a;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Laa;-><init>(Laa$a;Landroid/content/res/Resources;)V

    .line 37
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Laa;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 33
    return-void
.end method


# virtual methods
.method a()Laa$a;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lab$a;

    iget-object v1, p0, Lab;->b:Laa$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lab$a;-><init>(Laa$a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method protected a(Landroid/graphics/drawable/Drawable$ConstantState;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/Drawable$ConstantState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 46
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
