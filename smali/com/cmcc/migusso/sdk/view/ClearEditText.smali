.class public Lcom/cmcc/migusso/sdk/view/ClearEditText;
.super Landroid/widget/EditText;
.source "ClearEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcc/migusso/sdk/view/ClearEditText$a;
    }
.end annotation


# instance fields
.field public a:Lcom/cmcc/migusso/sdk/view/ClearEditText$a;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    const/high16 v4, 0x40c00000    # 6.0f

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->e:Z

    iput-boolean v3, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->f:Z

    iput-boolean v3, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->g:Z

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->i:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->i:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->i:Landroid/content/Context;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->i:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setPadding(IIII)V

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setGravity(I)V

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setTextColor(I)V

    const v0, -0x5b5b5c

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setHintTextColor(I)V

    :try_start_0
    iput p2, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->h:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->a()V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v4, 0x40c00000    # 6.0f

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v3, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->e:Z

    iput-boolean v3, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->f:Z

    iput-boolean v3, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->g:Z

    const-string/jumbo v0, "SsoClearEditText"

    invoke-static {p1, v0}, Lcom/cmcc/util/ResourceUtil;->getStyleableArray(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string/jumbo v1, "SsoClearEditText_sso_underlineColor"

    invoke-static {p1, v1}, Lcom/cmcc/util/ResourceUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const v2, -0x777778

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->h:I

    const-string/jumbo v1, "SsoClearEditText_sso_show_userIcon"

    invoke-static {p1, v1}, Lcom/cmcc/util/ResourceUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->e:Z

    const-string/jumbo v1, "SsoClearEditText_sso_login_page"

    invoke-static {p1, v1}, Lcom/cmcc/util/ResourceUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->g:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->i:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setSingleLine(Z)V

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->i:Landroid/content/Context;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->i:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->i:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->i:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setPadding(IIII)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setGravity(I)V

    :goto_0
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setTextColor(I)V

    const v0, -0x5b5b5c

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setHintTextColor(I)V

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->a()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->i:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->i:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->i:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setPadding(IIII)V

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setGravity(I)V

    goto :goto_0
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

    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->b:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->i:Landroid/content/Context;

    const-string/jumbo v1, "clear_edt"

    invoke-static {v0, v1}, Lcom/cmcc/migusso/ssoutil/ResUtil;->getDrawableFromAsserts(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->b:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->e:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->i:Landroid/content/Context;

    const-string/jumbo v1, "usericon_nomal"

    invoke-static {v0, v1}, Lcom/cmcc/migusso/ssoutil/ResUtil;->getDrawableFromAsserts(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->c:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->i:Landroid/content/Context;

    const-string/jumbo v1, "usericon_nomal"

    invoke-static {v0, v1}, Lcom/cmcc/migusso/ssoutil/ResUtil;->getDrawableFromAsserts(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->d:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->i:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->i:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->d:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->i:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->i:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->d:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->h:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->c:Landroid/graphics/drawable/Drawable;

    const v1, -0x5b5b5c

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->i:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->i:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-direct {p0, v3}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->a(Z)V

    invoke-virtual {p0, p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->b:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-boolean v2, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->f:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->d:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {p0, v2, v1, v0, v1}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->i:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->h:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getScrollX()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getScrollY()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->i:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getScrollX()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getScrollY()I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->i:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    const v0, -0x19191a

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->a:Lcom/cmcc/migusso/sdk/view/ClearEditText$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->a:Lcom/cmcc/migusso/sdk/view/ClearEditText$a;

    invoke-interface {v1, p2}, Lcom/cmcc/migusso/sdk/view/ClearEditText$a;->a(Z)V

    :cond_0
    iput-boolean p2, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->f:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->a(Z)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->a(Z)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->f:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->a(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getTotalPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
