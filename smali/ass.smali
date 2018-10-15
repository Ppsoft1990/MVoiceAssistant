.class public Lass;
.super Lasq;
.source "PluginItem.java"


# instance fields
.field private l:I

.field private m:Lari;

.field private n:Landroid/os/Handler;

.field private o:Lase;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;Lase;Lari;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;
    .param p2, "plugin"    # Lase;
    .param p3, "pluginInstallController"    # Lari;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lasq;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lass;->l:I

    .line 44
    iput-object p2, p0, Lass;->o:Lase;

    .line 45
    iget-object v0, p0, Lass;->o:Lase;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lass;->o:Lase;

    invoke-virtual {v0}, Lase;->b()I

    move-result v0

    iput v0, p0, Lass;->l:I

    .line 48
    :cond_0
    iput-object p3, p0, Lass;->m:Lari;

    .line 49
    iput-object p4, p0, Lass;->n:Landroid/os/Handler;

    .line 51
    const/4 v0, 0x3

    iget v1, p0, Lass;->l:I

    if-ne v0, v1, :cond_1

    .line 52
    iget-object v0, p0, Lass;->k:Landroid/content/Context;

    const v1, 0x7f0c02de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lass;->b(Ljava/lang/String;)V

    .line 54
    :cond_1
    invoke-virtual {p0}, Lass;->h()V

    .line 55
    return-void
.end method

.method static synthetic a(Lass;)V
    .locals 0
    .param p0, "x0"    # Lass;

    .prologue
    .line 33
    invoke-direct {p0}, Lass;->m()V

    return-void
.end method

.method static synthetic b(Lass;)Z
    .locals 1
    .param p0, "x0"    # Lass;

    .prologue
    .line 33
    invoke-direct {p0}, Lass;->k()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lass;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lass;

    .prologue
    .line 33
    iget-object v0, p0, Lass;->n:Landroid/os/Handler;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lass;->o:Lase;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lass;->o:Lase;

    invoke-virtual {v0}, Lase;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lass;->a(Ljava/lang/String;)V

    .line 98
    :cond_0
    invoke-static {}, Lasl;->a()Lasl;

    move-result-object v0

    iget v1, p0, Lass;->l:I

    .line 99
    invoke-virtual {v0, v1}, Lasl;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lass;->b(Z)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lass;->b(Z)V

    goto :goto_0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lass;->a:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lass;->a:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {p0}, Lass;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lass;->d:Lcom/iflytek/base/skin/customView/XImageView;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lass;->k:Landroid/content/Context;

    invoke-static {v0}, Lasm;->a(Landroid/content/Context;)Lasm;

    move-result-object v0

    iget-object v1, p0, Lass;->d:Lcom/iflytek/base/skin/customView/XImageView;

    .line 117
    invoke-virtual {p0}, Lass;->e()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lass;->l:I

    invoke-virtual {v0, v1, v2, v3}, Lasm;->a(Lcom/iflytek/base/skin/customView/XImageView;Ljava/lang/String;I)V

    .line 119
    :cond_1
    iget-object v0, p0, Lass;->e:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lass;->e:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {p0}, Lass;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_2
    return-void
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lass;->l:I

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 204
    invoke-static {}, Lasl;->a()Lasl;

    move-result-object v0

    iget v1, p0, Lass;->l:I

    invoke-virtual {v0, v1}, Lasl;->b(I)V

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lass;->b(Z)V

    .line 206
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 209
    iget v0, p0, Lass;->l:I

    sparse-switch v0, :sswitch_data_0

    .line 220
    :goto_0
    return-void

    .line 211
    :sswitch_0
    iget-object v0, p0, Lass;->k:Landroid/content/Context;

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_100036"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :sswitch_1
    iget-object v0, p0, Lass;->k:Landroid/content/Context;

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_100045"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public c()V
    .locals 6

    .prologue
    .line 127
    iget-object v1, p0, Lass;->o:Lase;

    if-eqz v1, :cond_0

    iget v1, p0, Lass;->l:I

    .line 128
    invoke-static {v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->getPluginIdWithType(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 129
    iget v1, p0, Lass;->l:I

    iget-object v2, p0, Lass;->o:Lase;

    invoke-virtual {v2}, Lase;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->registerPluginTypeWithId(ILjava/lang/String;)Z

    .line 130
    iget v1, p0, Lass;->l:I

    iget-object v2, p0, Lass;->o:Lase;

    invoke-virtual {v2}, Lase;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->registerPluginTypeWithPackage(ILjava/lang/String;)Z

    .line 132
    :cond_0
    iget v1, p0, Lass;->l:I

    invoke-static {v1}, Lasb;->d(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    invoke-direct {p0}, Lass;->l()V

    .line 136
    :cond_1
    iget v1, p0, Lass;->l:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 138
    iget-object v1, p0, Lass;->k:Landroid/content/Context;

    invoke-static {v1}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v1

    const-string/jumbo v2, "LX_100113"

    invoke-virtual {v1, v2}, Lwz;->a(Ljava/lang/String;)V

    .line 148
    :cond_2
    :goto_0
    new-instance v0, Lass$1;

    invoke-direct {v0, p0}, Lass$1;-><init>(Lass;)V

    .line 175
    .local v0, "listener":Lasi$a;
    new-instance v2, Lasi;

    iget-object v1, p0, Lass;->k:Landroid/content/Context;

    invoke-direct {v2, v1, v0}, Lasi;-><init>(Landroid/content/Context;Lasi$a;)V

    iget-object v1, p0, Lass;->k:Landroid/content/Context;

    check-cast v1, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;

    iget v3, p0, Lass;->l:I

    sget-object v4, Lasc;->a:Lasc;

    sget-object v5, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->plugin_item:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    invoke-virtual {v2, v1, v3, v4, v5}, Lasi;->a(Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;ILasc;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    .line 178
    return-void

    .line 139
    .end local v0    # "listener":Lasi$a;
    :cond_3
    iget v1, p0, Lass;->l:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_4

    .line 141
    iget-object v1, p0, Lass;->k:Landroid/content/Context;

    invoke-static {v1}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v1

    const-string/jumbo v2, "LX_100112"

    invoke-virtual {v1, v2}, Lwz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_4
    iget v1, p0, Lass;->l:I

    const/16 v2, 0x12d

    if-ne v1, v2, :cond_2

    .line 144
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxj;->a(Landroid/content/Context;)Lxj;

    move-result-object v1

    const-string/jumbo v2, "plugin"

    invoke-virtual {v1, v2}, Lxj;->a(Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v1

    const-string/jumbo v2, "LX_100133"

    invoke-virtual {v1, v2}, Lwz;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 229
    invoke-static {}, Lasu;->a()Lasu;

    move-result-object v0

    iget v1, p0, Lass;->l:I

    invoke-virtual {v0, v1}, Lasu;->a(I)I

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lass;->o:Lase;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lass;->o:Lase;

    invoke-virtual {v1}, Lase;->e()Ljava/lang/String;

    move-result-object v0

    .line 238
    :cond_0
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 243
    iget-object v2, p0, Lass;->o:Lase;

    if-eqz v2, :cond_0

    .line 244
    iget-object v2, p0, Lass;->o:Lase;

    invoke-virtual {v2}, Lase;->f()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    .end local v1    # "text":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 250
    :cond_0
    const/4 v0, 0x0

    .line 251
    .local v0, "res":I
    iget v2, p0, Lass;->l:I

    packed-switch v2, :pswitch_data_0

    .line 268
    :pswitch_0
    const v0, 0x7f0c02c8

    .line 271
    :goto_1
    invoke-virtual {p0, v0}, Lass;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 253
    :pswitch_1
    const v0, 0x7f0c0061

    .line 254
    goto :goto_1

    .line 256
    :pswitch_2
    const v0, 0x7f0c00ec

    .line 257
    goto :goto_1

    .line 259
    :pswitch_3
    const v0, 0x7f0c0136

    .line 260
    goto :goto_1

    .line 262
    :pswitch_4
    const v0, 0x7f0c02ca

    .line 263
    goto :goto_1

    .line 265
    :pswitch_5
    const v0, 0x7f0c02d4

    .line 266
    goto :goto_1

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public g()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lass;->m:Lari;

    .line 277
    iput-object v0, p0, Lass;->n:Landroid/os/Handler;

    .line 278
    return-void
.end method

.method public h()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    iget-object v1, p0, Lass;->m:Lari;

    iget v2, p0, Lass;->l:I

    invoke-virtual {v1, v2}, Lari;->b(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    move-result-object v0

    .line 65
    .local v0, "status":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;
    sget-object v1, Lass$2;->a:[I

    invoke-virtual {v0}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 88
    :goto_0
    invoke-direct {p0}, Lass;->j()V

    .line 89
    return-void

    .line 68
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lass;->a(Z)V

    .line 69
    invoke-virtual {p0, v3}, Lass;->b(I)V

    .line 70
    invoke-virtual {p0, v3}, Lass;->b(Z)V

    goto :goto_0

    .line 73
    :pswitch_1
    const v1, 0x7f0c02c5

    invoke-virtual {p0, v1}, Lass;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lass;->c(Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lass;->i()V

    goto :goto_0

    .line 77
    :pswitch_2
    const v1, 0x7f0c02ce

    invoke-virtual {p0, v1}, Lass;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lass;->c(Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lass;->i()V

    goto :goto_0

    .line 81
    :pswitch_3
    const v1, 0x7f0c02d2

    invoke-virtual {p0, v1}, Lass;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lass;->c(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, v3}, Lass;->b(I)V

    .line 83
    invoke-virtual {p0, v3}, Lass;->b(Z)V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
