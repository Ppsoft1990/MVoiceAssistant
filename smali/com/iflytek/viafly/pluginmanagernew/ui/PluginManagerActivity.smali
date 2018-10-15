.class public Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;
.source "PluginManagerActivity.java"


# static fields
.field public static a:Landroid/content/Context;

.field private static i:Lcom/iflytek/yd/ui/BaseFragment;


# instance fields
.field private b:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lasq;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lari;

.field private e:Lasu;

.field private f:Lasn;

.field private g:Lcom/iflytek/base/skin/customView/XRelativeLayout;

.field private h:Z

.field private j:J

.field private k:Landroid/view/View$OnClickListener;

.field private l:Landroid/content/BroadcastReceiver;

.field private m:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->b:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 64
    iput-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->c:Ljava/util/ArrayList;

    .line 68
    invoke-static {}, Lasu;->a()Lasu;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->e:Lasu;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->h:Z

    .line 290
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->j:J

    .line 292
    new-instance v0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$2;-><init>(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->k:Landroid/view/View$OnClickListener;

    .line 331
    new-instance v0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$3;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$3;-><init>(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->l:Landroid/content/BroadcastReceiver;

    .line 350
    new-instance v0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$4;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$4;-><init>(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->m:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->j:J

    return-wide v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;
    .param p1, "x1"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->j:J

    return-wide p1
.end method

.method private a(I)Lasq;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 267
    const-string/jumbo v2, "PluginManagerActivity"

    const-string/jumbo v3, "----->>>> findPluginItemById()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v2, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->c:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-object v0

    .line 273
    :cond_1
    sget-object v2, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;->default_type:Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    invoke-virtual {v2}, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;->value()I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 276
    const/4 v0, 0x0

    .line 278
    .local v0, "basePluginItem":Lasq;
    iget-object v2, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasq;

    .line 279
    .local v1, "item":Lasq;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lasq;->d()I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 280
    move-object v0, v1

    .line 281
    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;I)Lasq;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->a(I)Lasq;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;
    .locals 1
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 409
    const-string/jumbo v0, "notice"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    sget-object v0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->notice:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    .line 414
    :goto_0
    return-object v0

    .line 411
    :cond_0
    const-string/jumbo v0, "banner"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    sget-object v0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->banner:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    goto :goto_0

    .line 414
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->unkown:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    goto :goto_0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 137
    iget-object v2, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->g:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const v3, 0x7f0b0544

    .line 138
    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->b:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 139
    invoke-direct {p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->b()V

    .line 142
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->getSupportFragmentManager()Lh;

    move-result-object v2

    .line 143
    invoke-virtual {v2}, Lh;->a()Lj;

    move-result-object v1

    .line 144
    .local v1, "fragmentTransaction":Lj;
    iget-object v2, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->f:Lasn;

    invoke-virtual {v1, v2, v3}, Lj;->a(ILandroid/support/v4/app/Fragment;)Lj;

    .line 146
    invoke-virtual {v1}, Lj;->b()I

    .line 147
    invoke-virtual {p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->f:Lasn;

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/ui/FragmentMediator;->push(Lcom/iflytek/yd/ui/BaseFragment;)V

    .line 149
    sget-object v2, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->i:Lcom/iflytek/yd/ui/BaseFragment;

    if-eqz v2, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v2

    sget-object v3, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->i:Lcom/iflytek/yd/ui/BaseFragment;

    invoke-virtual {v2, p0, v3}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    .line 151
    const/4 v2, 0x0

    sput-object v2, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->i:Lcom/iflytek/yd/ui/BaseFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v1    # "fragmentTransaction":Lj;
    :cond_0
    :goto_0
    const-string/jumbo v2, "PluginManagerActivity"

    const-string/jumbo v3, "---->>>> initView()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "PluginManagerActivity"

    const-string/jumbo v3, "initView() add plugin manager fragment failed"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "pluginInstallEntry"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 130
    :cond_0
    new-instance v0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$1;-><init>(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;)V

    .line 132
    .local v0, "listener":Lasi$a;
    new-instance v1, Lasi;

    invoke-direct {v1, p0, v0}, Lasi;-><init>(Landroid/content/Context;Lasi$a;)V

    sget-object v2, Lasc;->a:Lasc;

    invoke-virtual {v1, p0, p1, v2, p2}, Lasi;->a(Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;ILasc;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 216
    iget-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->c:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 217
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->c:Ljava/util/ArrayList;

    .line 222
    :goto_0
    invoke-static {p0}, Last;->a(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasq;

    .line 223
    .local v0, "fixedItem":Lasq;
    invoke-virtual {v0, v5}, Lasq;->a(Z)V

    .line 224
    iget-object v4, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 219
    .end local v0    # "fixedItem":Lasq;
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 228
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v1, "installedPlugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lase;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v2, "uninstalledPlugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lase;>;"
    invoke-static {p0, v1, v2}, Lasb;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 232
    invoke-direct {p0, v5, v1}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->a(ZLjava/util/ArrayList;)V

    .line 234
    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->a(ZLjava/util/ArrayList;)V

    .line 235
    const-string/jumbo v3, "PluginManagerActivity"

    const-string/jumbo v4, "----->>>> initBasePluginItems()"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 112
    :cond_0
    const-string/jumbo v4, "EXTRA_ENTRY"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "entry":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lxk;->a(Landroid/content/Context;)Lxk;

    move-result-object v4

    invoke-virtual {v4, v1}, Lxk;->a(Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->a(Ljava/lang/String;)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    move-result-object v2

    .line 116
    .local v2, "pluginInstallEntry":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "com.iflytek.cmccACTION_LAUNCH_PLUGIN_MANAGER_TO_ENTER_PLUGIN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    const-string/jumbo v4, "EXTRA_PLUGIN_TYPE"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 120
    .local v3, "pluginType":I
    invoke-direct {p0, v3, v2}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->a(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    .line 122
    .end local v3    # "pluginType":I
    :cond_1
    const-string/jumbo v4, "PluginManagerActivity"

    const-string/jumbo v5, "----->>>> initIntent()"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Lcom/iflytek/yd/ui/BaseFragment;)V
    .locals 0
    .param p0, "fragment"    # Lcom/iflytek/yd/ui/BaseFragment;

    .prologue
    .line 77
    sput-object p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->i:Lcom/iflytek/yd/ui/BaseFragment;

    .line 78
    return-void
.end method

.method private a(ZLjava/util/ArrayList;)V
    .locals 7
    .param p1, "isInstalled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p2, "listPlugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lase;>;"
    invoke-static {p2}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 242
    iget-object v2, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->c:Ljava/util/ArrayList;

    new-instance v3, Lasv;

    invoke-direct {v3, p0, p1}, Lasv;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lase;

    .line 245
    .local v0, "plugin":Lase;
    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Lase;->b()I

    move-result v1

    .line 249
    .local v1, "pluginType":I
    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    .line 253
    iget-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->e:Lasu;

    invoke-virtual {v3, v1}, Lasu;->b(I)V

    .line 254
    iget-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->c:Ljava/util/ArrayList;

    new-instance v4, Lass;

    iget-object v5, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->d:Lari;

    iget-object v6, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->m:Landroid/os/Handler;

    invoke-direct {v4, p0, v0, v5, v6}, Lass;-><init>(Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;Lase;Lari;Landroid/os/Handler;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 258
    .end local v0    # "plugin":Lase;
    .end local v1    # "pluginType":I
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->m:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 197
    invoke-direct {p0, p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->a(Landroid/content/Context;)V

    .line 198
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 202
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->b:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->removeAllViews()V

    .line 204
    iget-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasq;

    .line 205
    .local v0, "basePluginItem":Lasq;
    invoke-virtual {v0}, Lasq;->b()Landroid/view/View;

    move-result-object v1

    .line 207
    .local v1, "convertView":Landroid/view/View;
    instance-of v4, v0, Lasv;

    if-nez v4, :cond_0

    .line 208
    iget-object v4, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    :cond_0
    iget-object v4, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->b:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v4, v1, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 212
    .end local v0    # "basePluginItem":Lasq;
    .end local v1    # "convertView":Landroid/view/View;
    :cond_1
    const-string/jumbo v3, "PluginManagerActivity"

    const-string/jumbo v4, "----->>>> refreshView()"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 326
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 327
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_REDRAW_PLUGIN_LIST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v2, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 329
    return-void
.end method

.method static synthetic c(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->b()V

    return-void
.end method

.method static synthetic d(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;)Lasu;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->e:Lasu;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    .line 486
    .local v0, "fragmentMediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 487
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/yd/ui/BaseFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 489
    :cond_0
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    .line 513
    .local v0, "fragmentMediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 514
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/yd/ui/BaseFragment;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 516
    :cond_0
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    sput-object p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->a:Landroid/content/Context;

    .line 86
    invoke-static {}, Lari;->a()Lari;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->d:Lari;

    .line 87
    new-instance v0, Lasp;

    iget-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->m:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lasp;-><init>(Landroid/os/Handler;)V

    .line 88
    .local v0, "listener":Lasp;
    iget-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->d:Lari;

    const-string/jumbo v2, "PluginManagerActivity"

    invoke-virtual {v1, v2, v0}, Lari;->a(Ljava/lang/String;Larn;)V

    .line 91
    invoke-virtual {p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 90
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300dc

    const/4 v3, 0x0

    .line 91
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->g:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 93
    new-instance v1, Lasn;

    invoke-direct {v1}, Lasn;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->f:Lasn;

    .line 94
    iget-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->f:Lasn;

    iget-object v2, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->g:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v1, v2}, Lasn;->a(Lcom/iflytek/base/skin/customView/XRelativeLayout;)Lasn;

    .line 95
    invoke-direct {p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->a()V

    .line 96
    invoke-virtual {p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->a(Landroid/content/Intent;)V

    .line 99
    invoke-static {}, Laso;->a()Laso;

    move-result-object v1

    const/4 v2, 0x0

    .line 100
    invoke-virtual {v1, v2}, Laso;->a(Z)V

    .line 101
    invoke-static {}, Laso;->a()Laso;

    move-result-object v1

    invoke-virtual {v1}, Laso;->d()V

    .line 103
    invoke-direct {p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->c()V

    .line 104
    const-string/jumbo v1, "PluginManagerActivity"

    const-string/jumbo v2, "----->>>> onCreate()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 426
    sput-object v3, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->a:Landroid/content/Context;

    .line 428
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v2}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 429
    iput-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->l:Landroid/content/BroadcastReceiver;

    .line 431
    iget-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->d:Lari;

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->d:Lari;

    const-string/jumbo v2, "PluginManagerActivity"

    invoke-virtual {v1, v2}, Lari;->a(Ljava/lang/String;)V

    .line 433
    iput-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->d:Lari;

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->m:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 437
    iget-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->m:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 438
    iput-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->m:Landroid/os/Handler;

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->c:Ljava/util/ArrayList;

    invoke-static {v1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 442
    iget-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasq;

    .line 443
    .local v0, "item":Lasq;
    if-eqz v0, :cond_2

    .line 444
    invoke-virtual {v0}, Lasq;->g()V

    goto :goto_0

    .line 448
    .end local v0    # "item":Lasq;
    :cond_3
    iput-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->f:Lasn;

    .line 449
    iput-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->c:Ljava/util/ArrayList;

    .line 451
    iget-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->b:Lcom/iflytek/base/skin/customView/XLinearLayout;

    if-eqz v1, :cond_4

    .line 452
    iget-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->b:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->removeAllViewsInLayout()V

    .line 453
    iput-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->b:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 455
    :cond_4
    iput-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->g:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 456
    iput-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->e:Lasu;

    .line 457
    iput-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->l:Landroid/content/BroadcastReceiver;

    .line 458
    iput-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->k:Landroid/view/View$OnClickListener;

    .line 459
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onDestroy()V

    .line 460
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 465
    const/16 v2, 0x52

    if-eq p1, v2, :cond_0

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/16 v2, 0x55

    if-eq p1, v2, :cond_0

    const/16 v2, 0x4f

    if-ne p1, v2, :cond_2

    .line 470
    :cond_0
    const/4 v1, 0x0

    .line 471
    .local v1, "intercepted":Z
    invoke-virtual {p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    .line 472
    .local v0, "fragmentMediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 473
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/iflytek/yd/ui/BaseFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 476
    :cond_1
    if-eqz v1, :cond_2

    .line 477
    const/4 v2, 0x1

    .line 480
    .end local v0    # "fragmentMediator":Lcom/iflytek/yd/ui/FragmentMediator;
    .end local v1    # "intercepted":Z
    :goto_0
    return v2

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    .line 495
    .local v0, "fragmentMediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 496
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/iflytek/yd/ui/BaseFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 498
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 185
    :try_start_0
    sget-object v1, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->i:Lcom/iflytek/yd/ui/BaseFragment;

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->i:Lcom/iflytek/yd/ui/BaseFragment;

    invoke-virtual {v1, p0, v2}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    .line 187
    const/4 v1, 0x0

    sput-object v1, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->i:Lcom/iflytek/yd/ui/BaseFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 193
    const-string/jumbo v1, "PluginManagerActivity"

    const-string/jumbo v2, "----->>>> onNewIntent()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManagerActivity"

    const-string/jumbo v2, "onNewIntent() add Fragment"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 420
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    invoke-virtual {v0}, Lari;->b()Z

    .line 421
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onPause()V

    .line 422
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 162
    :try_start_0
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    iget-boolean v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->h:Z

    if-eqz v1, :cond_1

    .line 169
    iput-boolean v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->h:Z

    .line 177
    :cond_0
    :goto_1
    invoke-static {p0}, Lare;->a(Landroid/content/Context;)Lare;

    move-result-object v1

    const-string/jumbo v2, "plugin_manager_resume"

    .line 178
    invoke-virtual {v1, v2}, Lare;->b(Ljava/lang/String;)V

    .line 179
    const-string/jumbo v1, "PluginManagerActivity"

    const-string/jumbo v2, "----->>>> onResume()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "\u754c\u9762\u52a0\u8f7d\u51fa\u9519"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 165
    const-string/jumbo v1, "PluginManagerActivity"

    const-string/jumbo v2, "\u754c\u9762\u52a0\u8f7d\u51fa\u9519"

    invoke-static {v1, v2, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 171
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->m:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->m:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    .line 504
    .local v0, "fragmentMediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 505
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/yd/ui/BaseFragment;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 507
    :cond_0
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method
