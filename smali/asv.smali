.class public Lasv;
.super Lasq;
.source "PluginLabelItem.java"


# instance fields
.field private l:J

.field private m:Z

.field private n:Lcom/iflytek/base/skin/customView/XTextView;

.field private o:Lcom/iflytek/base/skin/customView/XRelativeLayout;

.field private p:Lcom/iflytek/base/skin/customView/XTextView;

.field private q:Lcom/iflytek/base/skin/customView/XImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isInstalledPluginLabel"    # Z

    .prologue
    .line 65
    invoke-direct {p0}, Lasq;-><init>()V

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lasv;->l:J

    .line 66
    iput-object p1, p0, Lasv;->k:Landroid/content/Context;

    .line 67
    iput-boolean p2, p0, Lasv;->m:Z

    .line 68
    invoke-virtual {p0, p1}, Lasv;->a(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method static synthetic a(Lasv;J)J
    .locals 1
    .param p0, "x0"    # Lasv;
    .param p1, "x1"    # J

    .prologue
    .line 46
    iput-wide p1, p0, Lasv;->l:J

    return-wide p1
.end method

.method static synthetic a(Lasv;)Lcom/iflytek/base/skin/customView/XTextView;
    .locals 1
    .param p0, "x0"    # Lasv;

    .prologue
    .line 46
    iget-object v0, p0, Lasv;->p:Lcom/iflytek/base/skin/customView/XTextView;

    return-object v0
.end method

.method static synthetic b(Lasv;)J
    .locals 2
    .param p0, "x0"    # Lasv;

    .prologue
    .line 46
    iget-wide v0, p0, Lasv;->l:J

    return-wide v0
.end method

.method private b(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v13, 0xf

    const/4 v11, -0x1

    const/4 v12, -0x2

    .line 236
    new-instance v7, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-direct {v7, p1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 237
    .local v7, "root":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    new-instance v1, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-direct {v1, p1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 238
    .local v1, "contentView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 239
    .local v0, "contentParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v7, v1, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v8

    const-string/jumbo v9, "90"

    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinHeight(Ljava/lang/String;)V

    .line 241
    const-string/jumbo v8, "image.mainpage_list_mid_help"

    sget-object v9, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v8, v9}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 242
    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v8

    const-string/jumbo v9, "16"

    sget-object v10, Lcom/iflytek/base/skin/space/SpaceType;->TOP:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual {v8, v9, v10}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinMargin(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 244
    new-instance v8, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v8, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lasv;->n:Lcom/iflytek/base/skin/customView/XTextView;

    .line 245
    iget-object v8, p0, Lasv;->n:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v9, "plugin_label_text_style"

    sget-object v10, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v8, v9, v10}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 247
    iget-object v8, p0, Lasv;->n:Lcom/iflytek/base/skin/customView/XTextView;

    const v9, 0x7f0c02cd

    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/XTextView;->setText(I)V

    .line 248
    iget-object v8, p0, Lasv;->n:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 249
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 251
    .local v4, "param":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 252
    iget-object v8, p0, Lasv;->n:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v8, v4}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    iget-object v8, p0, Lasv;->n:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v8}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v8

    const-string/jumbo v9, "30"

    sget-object v10, Lcom/iflytek/base/skin/space/SpaceType;->LEFT:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual {v8, v9, v10}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargin(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 255
    new-instance v8, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-direct {v8, p1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lasv;->o:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 256
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 258
    .local v6, "paramforLayout":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xb

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 259
    invoke-virtual {v6, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 260
    iget-object v8, p0, Lasv;->o:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v1, v8, v6}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    iget-object v8, p0, Lasv;->o:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v8}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v2

    .line 262
    .local v2, "helper":Lcom/iflytek/base/skin/customView/SpaceViewHelper;
    const-string/jumbo v8, "150"

    invoke-virtual {v2, v8}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinWidth(Ljava/lang/String;)V

    .line 263
    const-string/jumbo v8, "62"

    invoke-virtual {v2, v8}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinHeight(Ljava/lang/String;)V

    .line 264
    const-string/jumbo v8, "20"

    sget-object v9, Lcom/iflytek/base/skin/space/SpaceType;->RIGHT:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual {v2, v8, v9}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargin(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 266
    new-instance v8, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v8, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lasv;->p:Lcom/iflytek/base/skin/customView/XTextView;

    .line 268
    iget-object v8, p0, Lasv;->p:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v9, 0x0

    iget-object v10, p0, Lasv;->k:Landroid/content/Context;

    const/16 v11, 0x1c

    .line 269
    invoke-static {v10, v11}, Lazk;->a(Landroid/content/Context;I)I

    move-result v10

    int-to-float v10, v10

    .line 268
    invoke-virtual {v8, v9, v10}, Lcom/iflytek/base/skin/customView/XTextView;->setTextSize(IF)V

    .line 270
    iget-object v8, p0, Lasv;->p:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v9, "#37ba91"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 271
    iget-object v8, p0, Lasv;->p:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v9, "image.btn_menu_install_nor"

    sget-object v10, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v8, v9, v10}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 273
    iget-object v8, p0, Lasv;->p:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 274
    iget-object v8, p0, Lasv;->p:Lcom/iflytek/base/skin/customView/XTextView;

    const v9, 0x7f0c02cf

    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/XTextView;->setText(I)V

    .line 276
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 278
    .local v5, "paramforBtnText":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 279
    iget-object v8, p0, Lasv;->o:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iget-object v9, p0, Lasv;->p:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v8, v9, v5}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iget-object v8, p0, Lasv;->p:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v8}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v3

    .line 281
    .local v3, "helperBtn":Lcom/iflytek/base/skin/customView/SpaceViewHelper;
    const-string/jumbo v8, "140"

    invoke-virtual {v3, v8}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinWidth(Ljava/lang/String;)V

    .line 282
    const-string/jumbo v8, "56"

    invoke-virtual {v3, v8}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinHeight(Ljava/lang/String;)V

    .line 284
    return-object v7
.end method

.method static synthetic c(Lasv;)V
    .locals 0
    .param p0, "x0"    # Lasv;

    .prologue
    .line 46
    invoke-direct {p0}, Lasv;->n()V

    return-void
.end method

.method static synthetic d(Lasv;)V
    .locals 0
    .param p0, "x0"    # Lasv;

    .prologue
    .line 46
    invoke-direct {p0}, Lasv;->j()V

    return-void
.end method

.method static synthetic e(Lasv;)V
    .locals 0
    .param p0, "x0"    # Lasv;

    .prologue
    .line 46
    invoke-direct {p0}, Lasv;->k()V

    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lasv;->k:Landroid/content/Context;

    new-instance v1, Lasv$4;

    invoke-direct {v1, p0}, Lasv$4;-><init>(Lasv;)V

    invoke-static {v0, v1}, Lpg;->a(Landroid/content/Context;Lpg$a;)V

    .line 155
    return-void
.end method

.method private k()V
    .locals 5

    .prologue
    .line 158
    iget-object v2, p0, Lasv;->k:Landroid/content/Context;

    .line 159
    invoke-static {v2}, Lasr;->a(Landroid/content/Context;)Lasr;

    move-result-object v0

    .line 161
    .local v0, "manager":Lasr;
    invoke-virtual {v0}, Lasr;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    invoke-direct {p0}, Lasv;->l()V

    .line 180
    :goto_0
    return-void

    .line 165
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v1, "uninstalledPluginList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lase;>;"
    iget-object v2, p0, Lasv;->k:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lasb;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 168
    invoke-static {v1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    iget-object v2, p0, Lasv;->k:Landroid/content/Context;

    const v3, 0x7f0c02cb

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 171
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v2, p0, Lasv;->k:Landroid/content/Context;

    invoke-static {v2}, Lhl;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    invoke-virtual {v0, v1}, Lasr;->a(Ljava/util/List;)V

    goto :goto_0

    .line 176
    :cond_2
    iget-object v2, p0, Lasv;->k:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lasr;->a(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 183
    iget-object v1, p0, Lasv;->k:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 184
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 185
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_ACTIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget-object v1, p0, Lasv;->k:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 187
    iget-object v1, p0, Lasv;->k:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 189
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private m()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 288
    iget-object v2, p0, Lasv;->q:Lcom/iflytek/base/skin/customView/XImageView;

    if-nez v2, :cond_0

    .line 289
    new-instance v2, Lcom/iflytek/base/skin/customView/XImageView;

    iget-object v3, p0, Lasv;->k:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lasv;->q:Lcom/iflytek/base/skin/customView/XImageView;

    .line 290
    iget-object v2, p0, Lasv;->q:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v3, "image.home_message_indicator"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 292
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 294
    .local v0, "param":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 295
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 296
    iget-object v2, p0, Lasv;->o:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iget-object v3, p0, Lasv;->q:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v2, v3, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    .end local v0    # "param":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lasv;->q:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 300
    iget-object v2, p0, Lasv;->p:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 301
    .local v1, "paramforBtnText":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 302
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 303
    iget-object v2, p0, Lasv;->p:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    .line 307
    iget-object v1, p0, Lasv;->q:Lcom/iflytek/base/skin/customView/XImageView;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lasv;->q:Lcom/iflytek/base/skin/customView/XImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 310
    iget-object v1, p0, Lasv;->p:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 311
    .local v0, "paramforBtnText":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 312
    iget-object v1, p0, Lasv;->p:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    .end local v0    # "paramforBtnText":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lasv;->b(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lasv;->a:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 74
    iget-object v0, p0, Lasv;->o:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    new-instance v1, Lasv$1;

    invoke-direct {v1, p0}, Lasv$1;-><init>(Lasv;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 97
    iget-boolean v0, p0, Lasv;->m:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lasv;->n:Lcom/iflytek/base/skin/customView/XTextView;

    const v1, 0x7f0c02cd

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(I)V

    .line 99
    iget-object v0, p0, Lasv;->p:Lcom/iflytek/base/skin/customView/XTextView;

    const v1, 0x7f0c02cf

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(I)V

    .line 100
    iget-object v0, p0, Lasv;->o:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    new-instance v1, Lasv$2;

    invoke-direct {v1, p0}, Lasv$2;-><init>(Lasv;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :goto_0
    invoke-virtual {p0}, Lasv;->i()V

    .line 141
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lasv;->n:Lcom/iflytek/base/skin/customView/XTextView;

    const v1, 0x7f0c02e1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(I)V

    .line 126
    iget-object v0, p0, Lasv;->p:Lcom/iflytek/base/skin/customView/XTextView;

    const v1, 0x7f0c02d3

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(I)V

    .line 127
    iget-object v0, p0, Lasv;->o:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    new-instance v1, Lasv$3;

    invoke-direct {v1, p0}, Lasv$3;-><init>(Lasv;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public d()I
    .locals 2

    .prologue
    .line 207
    invoke-static {}, Lasu;->a()Lasu;

    move-result-object v0

    invoke-virtual {p0}, Lasv;->h()Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lasu;->a(Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;)I

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public g()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public h()Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;->plugin_label:Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    return-object v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lasv;->m:Z

    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Laso;->a()Laso;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Laso;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0}, Lasv;->m()V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-direct {p0}, Lasv;->n()V

    goto :goto_0
.end method
