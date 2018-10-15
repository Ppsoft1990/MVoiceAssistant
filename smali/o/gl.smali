.class public final Lo/gl;
.super Landroid/app/Dialog;
.source "SmsBlackListDialog.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lo/gl;->a:Landroid/content/Context;

    iput-object p2, p0, Lo/gl;->b:Ljava/lang/String;

    iget-object v0, p0, Lo/gl;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/gl;->c:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/gl;->c:Z

    goto :goto_0
.end method

.method static synthetic a(Lo/gl;)Z
    .locals 1

    iget-boolean v0, p0, Lo/gl;->c:Z

    return v0
.end method

.method static synthetic b(Lo/gl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/gl;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lo/gl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lo/gl;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lo/gl;->requestWindowFeature(I)Z

    iget-object v0, p0, Lo/gl;->a:Landroid/content/Context;

    const-string/jumbo v1, "sso_dialog_union"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gl;->setContentView(I)V

    invoke-virtual {p0}, Lo/gl;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lo/gl;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0, v4}, Lo/gl;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v3}, Lo/gl;->setCancelable(Z)V

    iget-object v0, p0, Lo/gl;->a:Landroid/content/Context;

    const-string/jumbo v1, "tv_main_error_message"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/gl;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lo/gl;->a:Landroid/content/Context;

    const-string/jumbo v1, "tv_secondary_error_message"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/gl;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lo/gl;->a:Landroid/content/Context;

    const-string/jumbo v1, "tv_secondary_choice"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/gl;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lo/gl;->a:Landroid/content/Context;

    const-string/jumbo v1, "tv_main_choice"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/gl;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lo/gl;->a:Landroid/content/Context;

    const-string/jumbo v1, "view_vertical_divider"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/gl;->h:Landroid/view/View;

    iget-object v0, p0, Lo/gl;->d:Landroid/widget/TextView;

    const-string/jumbo v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u5931\u8d25\uff01\u5f53\u524d\u53f7\u7801\u5df2\u88ab\u9650\u5236\u63a5\u6536\u54aa\u5495\u77ed\u4fe1\u3002"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lo/gl;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lo/gl;->a:Landroid/content/Context;

    const-string/jumbo v2, "sso_color_maintheme"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v0, p0, Lo/gl;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/gl;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lo/gl;->h:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lo/gl;->f:Landroid/widget/TextView;

    const-string/jumbo v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lo/gl;->f:Landroid/widget/TextView;

    new-instance v1, Lo/gm;

    invoke-direct {v1, p0}, Lo/gm;-><init>(Lo/gl;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lo/gl;->g:Landroid/widget/TextView;

    new-instance v1, Lo/gn;

    invoke-direct {v1, p0}, Lo/gn;-><init>(Lo/gl;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lo/gl;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lo/gl;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lo/gl;->f:Landroid/widget/TextView;

    const-string/jumbo v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lo/gl;->g:Landroid/widget/TextView;

    const-string/jumbo v1, "\u89e3\u9664\u9650\u5236"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lo/gl;->e:Landroid/widget/TextView;

    const-string/jumbo v1, "\u60a8\u53ef\u7f16\u8f91\u77ed\u4fe1\"YC\"\u53d1\u9001\u81f3%s\u89e3\u9664\u9650\u5236\u3002"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lo/gl;->b:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
