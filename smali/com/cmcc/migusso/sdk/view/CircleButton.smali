.class public Lcom/cmcc/migusso/sdk/view/CircleButton;
.super Landroid/widget/Button;
.source "CircleButton.java"


# static fields
.field private static a:[I

.field private static b:[I

.field private static c:[I


# instance fields
.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-array v0, v2, [I

    sput-object v0, Lcom/cmcc/migusso/sdk/view/CircleButton;->a:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cmcc/migusso/sdk/view/CircleButton;->b:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/cmcc/migusso/sdk/view/CircleButton;->c:[I

    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const v1, -0x303031

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput v3, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->d:I

    const v0, -0xffff01

    iput v0, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->e:I

    iput v1, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->f:I

    iput v1, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->g:I

    iput v2, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->h:I

    iput v2, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->i:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->j:I

    iput-boolean v3, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->k:Z

    :try_start_0
    iput p2, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->e:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->d:I

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/view/CircleButton;->a()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v1, -0x1

    const v4, -0x777778

    const/4 v3, 0x0

    const v2, -0x303031

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->d:I

    const v0, -0xffff01

    iput v0, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->e:I

    iput v2, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->f:I

    iput v2, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->g:I

    iput v1, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->h:I

    iput v1, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->i:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->j:I

    iput-boolean v3, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->k:Z

    const-string/jumbo v0, "SsoCircleButton"

    invoke-static {p1, v0}, Lcom/cmcc/util/ResourceUtil;->getStyleableArray(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string/jumbo v1, "SsoCircleButton_sso_backGroundColor"

    invoke-static {p1, v1}, Lcom/cmcc/util/ResourceUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->e:I

    const-string/jumbo v1, "SsoCircleButton_sso_pressedColor"

    invoke-static {p1, v1}, Lcom/cmcc/util/ResourceUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->f:I

    const-string/jumbo v1, "SsoCircleButton_sso_notEnableColor"

    invoke-static {p1, v1}, Lcom/cmcc/util/ResourceUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->g:I

    const-string/jumbo v1, "SsoCircleButton_sso_only_stroke"

    invoke-static {p1, v1}, Lcom/cmcc/util/ResourceUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->k:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->d:I

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/view/CircleButton;->a()V

    return-void
.end method

.method private a()V
    .locals 9

    const/4 v3, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setGravity(I)V

    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setPadding(IIII)V

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->k:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->d:I

    int-to-float v1, v1

    aput v1, v0, v5

    iget v1, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->d:I

    int-to-float v1, v1

    aput v1, v0, v6

    iget v1, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->d:I

    int-to-float v1, v1

    aput v1, v0, v7

    iget v1, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->d:I

    int-to-float v1, v1

    aput v1, v0, v8

    const/4 v1, 0x4

    iget v2, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->d:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->d:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->d:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->d:I

    int-to-float v2, v2

    aput v2, v0, v1

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v2, v0, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    iget v4, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->f:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Lcom/cmcc/migusso/sdk/view/CircleButton;->b:[I

    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    iget v4, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->g:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Lcom/cmcc/migusso/sdk/view/CircleButton;->c:[I

    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    iget v3, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->e:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Lcom/cmcc/migusso/sdk/view/CircleButton;->a:[I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v8, [[I

    sget-object v2, Lcom/cmcc/migusso/sdk/view/CircleButton;->b:[I

    aput-object v2, v1, v5

    sget-object v2, Lcom/cmcc/migusso/sdk/view/CircleButton;->c:[I

    aput-object v2, v1, v6

    sget-object v2, Lcom/cmcc/migusso/sdk/view/CircleButton;->a:[I

    aput-object v2, v1, v7

    new-array v2, v8, [I

    iget v3, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->i:I

    aput v3, v2, v5

    iget v3, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->j:I

    aput v3, v2, v6

    iget v3, p0, Lcom/cmcc/migusso/sdk/view/CircleButton;->h:I

    aput v3, v2, v7

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method
