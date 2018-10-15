.class Lab$a;
.super Laa$a;
.source "DrawableWrapperEclair.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Laa$a;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "orig"    # Laa$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Laa$a;-><init>(Laa$a;Landroid/content/res/Resources;)V

    .line 53
    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 57
    new-instance v0, Lab;

    invoke-direct {v0, p0, p1}, Lab;-><init>(Laa$a;Landroid/content/res/Resources;)V

    return-object v0
.end method
