.class public final Lt;
.super Ljava/lang/Object;
.source "DrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt$h;,
        Lt$g;,
        Lt$f;,
        Lt$e;,
        Lt$d;,
        Lt$c;,
        Lt$a;,
        Lt$b;
    }
.end annotation


# static fields
.field static final a:Lt$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 290
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 291
    .local v0, "version":I
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 292
    new-instance v1, Lt$h;

    invoke-direct {v1}, Lt$h;-><init>()V

    sput-object v1, Lt;->a:Lt$b;

    .line 306
    :goto_0
    return-void

    .line 293
    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 294
    new-instance v1, Lt$g;

    invoke-direct {v1}, Lt$g;-><init>()V

    sput-object v1, Lt;->a:Lt$b;

    goto :goto_0

    .line 295
    :cond_1
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 296
    new-instance v1, Lt$f;

    invoke-direct {v1}, Lt$f;-><init>()V

    sput-object v1, Lt;->a:Lt$b;

    goto :goto_0

    .line 297
    :cond_2
    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    .line 298
    new-instance v1, Lt$e;

    invoke-direct {v1}, Lt$e;-><init>()V

    sput-object v1, Lt;->a:Lt$b;

    goto :goto_0

    .line 299
    :cond_3
    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 300
    new-instance v1, Lt$d;

    invoke-direct {v1}, Lt$d;-><init>()V

    sput-object v1, Lt;->a:Lt$b;

    goto :goto_0

    .line 301
    :cond_4
    const/4 v1, 0x5

    if-lt v0, v1, :cond_5

    .line 302
    new-instance v1, Lt$c;

    invoke-direct {v1}, Lt$c;-><init>()V

    sput-object v1, Lt;->a:Lt$b;

    goto :goto_0

    .line 304
    :cond_5
    new-instance v1, Lt$a;

    invoke-direct {v1}, Lt$a;-><init>()V

    sput-object v1, Lt;->a:Lt$b;

    goto :goto_0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 468
    sget-object v0, Lt;->a:Lt$b;

    invoke-interface {v0, p0}, Lt$b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 390
    sget-object v0, Lt;->a:Lt$b;

    invoke-interface {v0, p0, p1}, Lt$b;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 391
    return-void
.end method
