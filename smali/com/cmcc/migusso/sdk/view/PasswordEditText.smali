.class public Lcom/cmcc/migusso/sdk/view/PasswordEditText;
.super Landroid/widget/EditText;
.source "PasswordEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->a:Z

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->b:Z

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->j:Z

    iput-boolean v1, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->c:Z

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->k:Z

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->setSingleLine(Z)V

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->setGravity(I)V

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->setTextColor(I)V

    const v0, -0x5b5b5c

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->setHintTextColor(I)V

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :try_start_0
    iput p2, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->l:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->a()V

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
    .locals 1

    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v3, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->a:Z

    iput-boolean v3, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->b:Z

    iput-boolean v3, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->j:Z

    iput-boolean v4, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->c:Z

    iput-boolean v3, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->k:Z

    const-string/jumbo v0, "PasswordEditText"

    invoke-static {p1, v0}, Lcom/cmcc/util/ResourceUtil;->getStyleableArray(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string/jumbo v1, "PasswordEditText_sso_underline_color"

    invoke-static {p1, v1}, Lcom/cmcc/util/ResourceUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const v2, -0x777778

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->l:I

    const-string/jumbo v1, "PasswordEditText_sso_show_left_icon"

    invoke-static {p1, v1}, Lcom/cmcc/util/ResourceUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->j:Z

    const-string/jumbo v1, "PasswordEditText_sso_in_login"

    invoke-static {p1, v1}, Lcom/cmcc/util/ResourceUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->k:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v4}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->setSingleLine(Z)V

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->setTextColor(I)V

    const v0, -0x5b5b5c

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->setHintTextColor(I)V

    new-array v0, v4, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->a()V

    return-void
.end method

.method private static a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {p0}, Lt;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Lt;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-object v0
.end method

.method private a()V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x41a00000    # 20.0f

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    const-string/jumbo v1, "clear_edt"

    invoke-static {v0, v1}, Lcom/cmcc/migusso/ssoutil/ResUtil;->getDrawableFromAsserts(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->d:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    const-string/jumbo v1, "visiable"

    invoke-static {v0, v1}, Lcom/cmcc/migusso/ssoutil/ResUtil;->getDrawableFromAsserts(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->e:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    const-string/jumbo v1, "unvisiable"

    invoke-static {v0, v1}, Lcom/cmcc/migusso/ssoutil/ResUtil;->getDrawableFromAsserts(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->f:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->e:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->f:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->j:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->g:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    const-string/jumbo v1, "pwd_normal"

    invoke-static {v0, v1}, Lcom/cmcc/migusso/ssoutil/ResUtil;->getDrawableFromAsserts(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->g:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->h:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    const-string/jumbo v1, "pwd_normal"

    invoke-static {v0, v1}, Lcom/cmcc/migusso/ssoutil/ResUtil;->getDrawableFromAsserts(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->h:Landroid/graphics/drawable/Drawable;

    :cond_4
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->g:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->h:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->g:Landroid/graphics/drawable/Drawable;

    const v1, -0x5b5b5c

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->h:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->l:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    :cond_5
    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->b:Z

    iget-boolean v1, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->a:Z

    invoke-virtual {p0, v0, v1}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->a(ZZ)V

    invoke-virtual {p0, p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0, p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public final a(ZZ)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->e:Landroid/graphics/drawable/Drawable;

    move-object v1, v0

    :goto_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->h:Landroid/graphics/drawable/Drawable;

    :goto_1
    iget-boolean v2, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->c:Z

    if-nez v2, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    invoke-virtual {p0, v0, v3, v1, v3}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->f:Landroid/graphics/drawable/Drawable;

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0, v3, v3, v3}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v9, 0x3f800000    # 1.0f

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->l:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v4, v6}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v6, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->d:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v7, v3, 0x2

    sub-int v7, v0, v7

    mul-int/lit8 v8, v4, 0x3

    sub-int/2addr v7, v8

    sub-int/2addr v0, v3

    mul-int/lit8 v3, v4, 0x3

    sub-int/2addr v0, v3

    add-int/2addr v2, v1

    invoke-virtual {v6, v7, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getScrollX()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getScrollY()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getScrollX()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getScrollY()I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    invoke-static {v4, v9}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    const v0, -0x19191a

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean p2, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->a:Z

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->b:Z

    invoke-virtual {p0, v0, p2}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->a(ZZ)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->i:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->i:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->i:Z

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onMeasure(II)V

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->setPadding(IIII)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->a:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->i:Z

    :goto_0
    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->b:Z

    iget-boolean v1, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->a:Z

    invoke-virtual {p0, v0, v1}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->a(ZZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->i:Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v3, 0x2

    aget-object v0, v0, v3

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getTotalPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->b:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->b:Z

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->b:Z

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_2
    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->b:Z

    iget-boolean v3, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->a:Z

    invoke-virtual {p0, v0, v3}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->a(ZZ)V

    :cond_0
    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->i:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getTotalPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v4, v5}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getTotalPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->m:Landroid/content/Context;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_5

    :goto_3
    if-eqz v1, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3
.end method
