.class public final Lo/ge;
.super Landroid/app/Dialog;
.source "SendSmsRemindDialog.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/CheckBox;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/cmcc/migusso/sdk/common/BoolCallBack;

.field private h:Z

.field private i:I

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cmcc/migusso/sdk/common/BoolCallBack;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ge;->h:Z

    iput-object p1, p0, Lo/ge;->a:Landroid/content/Context;

    iput-object p2, p0, Lo/ge;->g:Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    iget-object v0, p0, Lo/ge;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lo/ge;->a:Landroid/content/Context;

    const-string/jumbo v2, "sso_color_maintheme"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lo/ge;->i:I

    iget-object v0, p0, Lo/ge;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lo/ge;->a:Landroid/content/Context;

    const-string/jumbo v2, "is_checked"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/ge;->j:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lo/ge;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lo/ge;->a:Landroid/content/Context;

    const-string/jumbo v2, "bg_checkbox"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/ge;->k:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic a(Lo/ge;)Lcom/cmcc/migusso/sdk/common/BoolCallBack;
    .locals 1

    iget-object v0, p0, Lo/ge;->g:Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "smsremind"

    const-string/jumbo v1, ""

    invoke-static {p0, v0, v1}, Lcom/cmcc/migusso/ssoutil/SpUtils;->get4Sp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lo/ge;Z)Z
    .locals 0

    iput-boolean p1, p0, Lo/ge;->h:Z

    return p1
.end method

.method static synthetic b(Lo/ge;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lo/ge;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic c(Lo/ge;)I
    .locals 1

    iget v0, p0, Lo/ge;->i:I

    return v0
.end method

.method static synthetic d(Lo/ge;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lo/ge;->b:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic e(Lo/ge;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lo/ge;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic f(Lo/ge;)Z
    .locals 1

    iget-boolean v0, p0, Lo/ge;->h:Z

    return v0
.end method

.method static synthetic g(Lo/ge;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lo/ge;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lo/ge;->requestWindowFeature(I)Z

    iget-object v0, p0, Lo/ge;->a:Landroid/content/Context;

    const-string/jumbo v1, "sso_dialog_union"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/ge;->setContentView(I)V

    invoke-virtual {p0}, Lo/ge;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lo/ge;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0, v5}, Lo/ge;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v3}, Lo/ge;->setCancelable(Z)V

    iget-object v0, p0, Lo/ge;->a:Landroid/content/Context;

    const-string/jumbo v1, "tv_main_error_message"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/ge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ge;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lo/ge;->a:Landroid/content/Context;

    const-string/jumbo v1, "tv_secondary_error_message"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/ge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ge;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lo/ge;->a:Landroid/content/Context;

    const-string/jumbo v1, "ckb_never_remind"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/ge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lo/ge;->b:Landroid/widget/CheckBox;

    iget-object v0, p0, Lo/ge;->a:Landroid/content/Context;

    const-string/jumbo v1, "tv_main_choice"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/ge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ge;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lo/ge;->a:Landroid/content/Context;

    const-string/jumbo v1, "tv_secondary_choice"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/ge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ge;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lo/ge;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lo/ge;->a:Landroid/content/Context;

    const-string/jumbo v2, "str_login_send_sms_confirm"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lo/ge;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lo/ge;->a:Landroid/content/Context;

    const-string/jumbo v2, "str_login_sms_hint"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lo/ge;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lo/ge;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lo/ge;->b:Landroid/widget/CheckBox;

    iget-object v2, p0, Lo/ge;->b:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getPaddingLeft()I

    move-result v2

    const/high16 v3, 0x41700000    # 15.0f

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v2

    iget-object v2, p0, Lo/ge;->b:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lo/ge;->b:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lo/ge;->b:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/CheckBox;->setPadding(IIII)V

    :cond_0
    iget-object v0, p0, Lo/ge;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lo/ge;->b:Landroid/widget/CheckBox;

    new-instance v1, Lo/gg;

    invoke-direct {v1, p0}, Lo/gg;-><init>(Lo/ge;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lo/ge;->e:Landroid/widget/TextView;

    new-instance v1, Lo/gh;

    invoke-direct {v1, p0}, Lo/gh;-><init>(Lo/ge;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lo/ge;->f:Landroid/widget/TextView;

    new-instance v1, Lo/gi;

    invoke-direct {v1, p0}, Lo/gi;-><init>(Lo/ge;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lo/gf;

    invoke-direct {v0, p0}, Lo/gf;-><init>(Lo/ge;)V

    invoke-virtual {p0, v0}, Lo/ge;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
