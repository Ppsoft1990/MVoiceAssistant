.class public Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "InstalledPluginManagerActivity.java"


# instance fields
.field private a:Lcom/iflytek/base/skin/customView/XListView;

.field private b:Lasj;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lase;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lasg;

.field private e:Lari;

.field private f:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private g:Landroid/os/Handler;

.field private h:Larn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 265
    new-instance v0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$2;-><init>(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->g:Landroid/os/Handler;

    .line 341
    new-instance v0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$3;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$3;-><init>(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->h:Larn;

    return-void
.end method

.method private a([JJ)I
    .locals 4
    .param p1, "allInstalledTime"    # [J
    .param p2, "installedTime"    # J

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 249
    aget-wide v2, p1, v0

    cmp-long v2, v2, p2

    if-lez v2, :cond_2

    .line 250
    array-length v2, p1

    add-int/lit8 v1, v2, -0x1

    .local v1, "j":I
    :goto_1
    if-le v1, v0, :cond_0

    .line 251
    add-int/lit8 v2, v1, -0x1

    aget-wide v2, p1, v2

    aput-wide v2, p1, v1

    .line 250
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 253
    :cond_0
    aput-wide p2, p1, v0

    .line 257
    .end local v1    # "j":I
    :cond_1
    return v0

    .line 248
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Lase;)Ljava/lang/String;
    .locals 1
    .param p1, "info"    # Lase;

    .prologue
    .line 482
    const v0, 0x7f0c02e0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->setTitleBarVisible(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->setTitleBarBg()V

    .line 87
    const v0, 0x7f0c02da

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->setTitleName(I)V

    .line 88
    return-void
.end method

.method private a(I)V
    .locals 3
    .param p1, "pluginType"    # I

    .prologue
    .line 222
    new-instance v0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$1;-><init>(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;)V

    .line 239
    .local v0, "callBack":Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v1

    .line 240
    invoke-static {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->getPluginPackageWithType(I)Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-interface {v1, v2, p1, v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->installExistApkPlugin(Ljava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 242
    return-void
.end method

.method private a(Landroid/content/Context;Lase;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lase;

    .prologue
    .line 451
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    invoke-virtual {p2}, Lase;->b()I

    move-result v1

    .line 455
    .local v1, "pluginType":I
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 456
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    invoke-direct {p0, p2}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->b(Lase;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 457
    invoke-direct {p0, p2}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a(Lase;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 459
    const-string/jumbo v2, "\u53d6\u6d88"

    new-instance v3, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$4;

    invoke-direct {v3, p0, v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$4;-><init>(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 467
    const-string/jumbo v2, "\u5378\u8f7d"

    new-instance v3, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$5;

    invoke-direct {v3, p0, v1, v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$5;-><init>(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;ILcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 478
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    goto :goto_0
.end method

.method private a(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 2
    .param p1, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 418
    if-nez p1, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;Landroid/content/Context;Lase;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lase;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a(Landroid/content/Context;Lase;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;
    .param p1, "x1"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .param p1, "needShow"    # Z

    .prologue
    .line 103
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 104
    .local v0, "visibility":I
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->f:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 105
    return-void

    .line 103
    .end local v0    # "visibility":I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private b(Lase;)Ljava/lang/String;
    .locals 3
    .param p1, "info"    # Lase;

    .prologue
    .line 486
    const/4 v0, 0x0

    .line 487
    .local v0, "name":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 488
    invoke-virtual {p1}, Lase;->f()Ljava/lang/String;

    move-result-object v0

    .line 490
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    const-string/jumbo v0, "\u63d2\u4ef6"

    .line 493
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5378\u8f7d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 91
    const v0, 0x7f0b0544

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XListView;

    iput-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a:Lcom/iflytek/base/skin/customView/XListView;

    .line 93
    new-instance v0, Lasj;

    iget-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->c:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lasj;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->b:Lasj;

    .line 95
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->b:Lasj;

    iget-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lasj;->a(Landroid/os/Handler;)V

    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a:Lcom/iflytek/base/skin/customView/XListView;

    iget-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->b:Lasj;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    const v0, 0x7f0b0545

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->f:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 100
    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->c()V

    return-void
.end method

.method private b(Z)V
    .locals 2
    .param p1, "needShow"    # Z

    .prologue
    .line 107
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 108
    .local v0, "visibility":I
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a:Lcom/iflytek/base/skin/customView/XListView;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/XListView;->setVisibility(I)V

    .line 109
    return-void

    .line 107
    .end local v0    # "visibility":I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic c(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;)Lari;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->e:Lari;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->d()V

    .line 123
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->c:Ljava/util/List;

    invoke-static {v0}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->b(Z)V

    .line 125
    invoke-direct {p0, v2}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a(Z)V

    .line 132
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a(Z)V

    .line 128
    invoke-direct {p0, v2}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->b(Z)V

    .line 129
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->b:Lasj;

    iget-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lasj;->a(Ljava/util/List;)V

    .line 130
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->b:Lasj;

    invoke-virtual {v0}, Lasj;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;)Lasj;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->b:Lasj;

    return-object v0
.end method

.method private d()V
    .locals 20

    .prologue
    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->c:Ljava/util/List;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 136
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->c:Ljava/util/List;

    .line 138
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->c:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 141
    invoke-static {}, Lasa;->b()Ljava/util/List;

    move-result-object v9

    .line 144
    .local v9, "installedPluginTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lasa;->a()Ljava/util/List;

    move-result-object v8

    .line 145
    .local v8, "installedPluginList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;>;"
    invoke-static {v8}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 146
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v12, v0, [J

    .line 147
    .local v12, "pluginInstallTimes":[J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v0, v12

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v5, v0, :cond_1

    .line 148
    const-wide v16, 0x7fffffffffffffffL

    aput-wide v16, v12, v5

    .line 147
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 150
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .line 151
    .local v10, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v10, :cond_2

    .line 154
    invoke-interface {v10}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v13

    .line 155
    .local v13, "pluginType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->d:Lasg;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lasg;->a(I)Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    move-result-object v7

    .line 156
    .local v7, "info":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    invoke-interface {v10}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginCreateTime()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v12, v1, v2}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a([JJ)I

    move-result v6

    .line 157
    .local v6, "index":I
    if-eqz v7, :cond_3

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->c:Ljava/util/List;

    move-object/from16 v17, v0

    new-instance v18, Lase;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Lase;-><init>(Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 161
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->c:Ljava/util/List;

    move-object/from16 v17, v0

    new-instance v18, Lase;

    move-object/from16 v0, v18

    invoke-direct {v0, v10}, Lase;-><init>(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 167
    .end local v5    # "i":I
    .end local v6    # "index":I
    .end local v7    # "info":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    .end local v10    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .end local v12    # "pluginInstallTimes":[J
    .end local v13    # "pluginType":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->d:Lasg;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lasg;->b()Ljava/util/List;

    move-result-object v14

    .line 168
    .local v14, "totalPluginInfo":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    invoke-static {v14}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 169
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_5
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    .line 170
    .local v10, "plugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    if-eqz v10, :cond_5

    .line 173
    invoke-virtual {v10}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getType()I

    move-result v13

    .line 175
    .restart local v13    # "pluginType":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 179
    const/16 v17, 0xcd

    move/from16 v0, v17

    if-eq v13, v0, :cond_5

    .line 183
    const-string/jumbo v17, "gp_apk"

    invoke-virtual {v10}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getKind()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 184
    invoke-virtual {v10}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getPkgName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lasb;->a(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->c:Ljava/util/List;

    move-object/from16 v17, v0

    new-instance v18, Lase;

    move-object/from16 v0, v18

    invoke-direct {v0, v10}, Lase;-><init>(Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;)V

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 191
    :cond_6
    invoke-static {v13}, Lasb;->a(I)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 192
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->c:Ljava/util/List;

    move-object/from16 v17, v0

    new-instance v18, Lase;

    move-object/from16 v0, v18

    invoke-direct {v0, v10}, Lase;-><init>(Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;)V

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a(I)V

    goto :goto_2

    .line 201
    .end local v10    # "plugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    .end local v13    # "pluginType":I
    :cond_7
    invoke-static {}, Lart;->a()Lart;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lart;->b()Ljava/util/List;

    move-result-object v4

    .line 202
    .local v4, "defaultData":Ljava/util/List;, "Ljava/util/List<Larv;>;"
    invoke-static {v4}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v16

    if-nez v16, :cond_9

    .line 203
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_8
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Larv;

    .line 204
    .local v11, "pluginData":Larv;
    if-eqz v11, :cond_8

    .line 207
    invoke-interface {v11}, Larv;->b()I

    move-result v15

    .line 208
    .local v15, "type":I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 209
    new-instance v7, Lase;

    invoke-direct {v7, v11}, Lase;-><init>(Larv;)V

    .line 210
    .local v7, "info":Lase;
    invoke-static {v15}, Lasb;->a(I)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->c:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a(I)V

    goto :goto_3

    .line 218
    .end local v4    # "defaultData":Ljava/util/List;, "Ljava/util/List<Larv;>;"
    .end local v7    # "info":Lase;
    .end local v11    # "pluginData":Larv;
    .end local v15    # "type":I
    :cond_9
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f0300da

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->setContentView(I)V

    .line 73
    invoke-direct {p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a()V

    .line 74
    invoke-static {}, Lasg;->a()Lasg;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->d:Lasg;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->c:Ljava/util/List;

    .line 77
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->e:Lari;

    .line 78
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->e:Lari;

    const-string/jumbo v1, "InstalledPluginManagerActivity"

    iget-object v2, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->h:Larn;

    invoke-virtual {v0, v1, v2}, Lari;->a(Ljava/lang/String;Larn;)V

    .line 80
    invoke-direct {p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->b()V

    .line 81
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 428
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 430
    iput-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->g:Landroid/os/Handler;

    .line 433
    :cond_0
    iput-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a:Lcom/iflytek/base/skin/customView/XListView;

    .line 434
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->b:Lasj;

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->b:Lasj;

    invoke-virtual {v0, v1}, Lasj;->a(Landroid/os/Handler;)V

    .line 436
    iput-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->b:Lasj;

    .line 438
    :cond_1
    iput-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->c:Ljava/util/List;

    .line 439
    iput-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->d:Lasg;

    .line 440
    iput-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->e:Lari;

    .line 441
    iput-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->f:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 442
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onDestroy()V

    .line 443
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 114
    invoke-static {p0}, Lare;->a(Landroid/content/Context;)Lare;

    move-result-object v0

    const-string/jumbo v1, "installed_plugin_manager_resume"

    .line 115
    invoke-virtual {v0, v1}, Lare;->b(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 117
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onResume()V

    .line 118
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method
