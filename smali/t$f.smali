.class Lt$f;
.super Lt$e;
.source "DrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Lt$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 198
    invoke-static {p1}, Lx;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
