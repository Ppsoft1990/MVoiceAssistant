.class public Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "PersonalizedRingtoneActivity.java"


# instance fields
.field private a:Lawu;

.field private b:Lawq;

.field private c:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lawx;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/content/BroadcastReceiver;

.field private h:Lazi;

.field private i:Lawx$a;

.field private j:Landroid/os/Handler;

.field private k:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$a;

.field private l:Lazi$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->h:Lazi;

    .line 176
    new-instance v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$1;-><init>(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->i:Lawx$a;

    .line 207
    new-instance v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$2;-><init>(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->j:Landroid/os/Handler;

    .line 237
    new-instance v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$3;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$3;-><init>(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->k:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$a;

    .line 376
    new-instance v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$6;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$6;-><init>(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->l:Lazi$b;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->c:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Ljava/util/List;Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->b(Ljava/util/List;Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 223
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->a(Z)V

    .line 224
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->b:Lawq;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lawq;->a(Ljava/util/List;)V

    .line 225
    return-void
.end method

.method private a(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->a(Z)V

    .line 234
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->b:Lawq;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->c:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->k:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$a;

    invoke-virtual {v0, v1, p1, v2}, Lawq;->a(Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;ILcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$a;)V

    .line 235
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lawu;->a(Landroid/content/Context;)Lawu;

    move-result-object v1

    invoke-virtual {v1}, Lawu;->a()Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->c:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    .line 168
    if-eqz p1, :cond_0

    .line 169
    const-string/jumbo v1, "EXTRA_SELECTED_PERSONALIZED_RING_DATA"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    .line 170
    .local v0, "outData":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    if-eqz v0, :cond_0

    .line 171
    iput-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->c:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    .line 174
    .end local v0    # "outData":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->a(I)V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 354
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->f:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 357
    :cond_0
    if-eqz p1, :cond_1

    .line 358
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->f:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->f:Landroid/widget/ListView;

    new-instance v1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$5;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$5;-><init>(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->j:Landroid/os/Handler;

    return-object v0
.end method

.method private static b(Ljava/util/List;Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;)Ljava/util/List;
    .locals 2
    .param p1, "headData"    # Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;",
            ">;",
            "Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;>;"
    if-nez p1, :cond_0

    .line 146
    .end local p0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;>;"
    :goto_0
    return-object p0

    .line 138
    .restart local p0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;>;"
    :cond_0
    invoke-static {p0}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    new-instance p0, Ljava/util/ArrayList;

    .end local p0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .restart local p0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;>;"
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_1
    invoke-static {p0, p1}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->c(Ljava/util/List;Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;)Ljava/util/List;

    move-result-object v0

    .line 145
    .local v0, "ringDataList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object p0, v0

    .line 146
    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->a(Z)V

    .line 229
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->b:Lawq;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->c:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    invoke-virtual {v0, v1}, Lawq;->a(Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;)V

    .line 230
    return-void
.end method

.method private static c(Ljava/util/List;Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;)Ljava/util/List;
    .locals 4
    .param p1, "selectedData"    # Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;",
            ">;",
            "Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "ringDataList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;>;"
    if-nez p0, :cond_1

    .line 152
    const/4 p0, 0x0

    .line 163
    .end local p0    # "ringDataList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;>;"
    :cond_0
    :goto_0
    return-object p0

    .line 154
    .restart local p0    # "ringDataList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;>;"
    :cond_1
    if-eqz p1, :cond_0

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v1, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    .line 159
    .local v0, "entity":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 160
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "entity":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    :cond_3
    move-object p0, v1

    .line 163
    goto :goto_0
.end method

.method static synthetic c(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->a()V

    return-void
.end method

.method private c()Z
    .locals 6

    .prologue
    .line 260
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->b:Lawq;

    invoke-virtual {v3}, Lawq;->a()Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    move-result-object v0

    .line 261
    .local v0, "data":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    const-string/jumbo v3, "PersonalizedRingtoneActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "goBack() selected data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    if-eqz v0, :cond_0

    .line 263
    iget-object v3, v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getWording()Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "wording":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 265
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    .local v1, "intentConfirm":Landroid/content/Intent;
    const/16 v3, 0x2712

    invoke-virtual {p0, v1, v3}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 267
    const/4 v3, 0x1

    .line 272
    .end local v1    # "intentConfirm":Landroid/content/Intent;
    .end local v2    # "wording":Ljava/lang/String;
    :goto_0
    return v3

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->d()V

    .line 271
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 272
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)Lawx$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->i:Lawx$a;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 295
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 296
    .local v0, "it":Landroid/content/Intent;
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->b:Lawq;

    invoke-virtual {v2}, Lawq;->a()Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    move-result-object v1

    .line 297
    .local v1, "returnData":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    const-string/jumbo v2, "PersonalizedRingtoneActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setActivityResult() selected data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    if-eqz v1, :cond_1

    .line 299
    const-string/jumbo v2, "EXTRA_SELECTED_PERSONALIZED_RING_DATA"

    iget-object v3, v1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 301
    iget-object v2, v1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    if-eqz v2, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v2

    iget-object v3, v1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->g(Ljava/lang/String;)V

    .line 309
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->setResult(ILandroid/content/Intent;)V

    .line 310
    return-void

    .line 304
    :cond_0
    const-string/jumbo v2, "PersonalizedRingtoneActivity"

    const-string/jumbo v3, "returnData.entity is null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    :cond_1
    const-string/jumbo v2, "PersonalizedRingtoneActivity"

    const-string/jumbo v3, "returnData is null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic e(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)Lawx;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->e:Lawx;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 330
    new-instance v1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$4;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$4;-><init>(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)V

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->g:Landroid/content/BroadcastReceiver;

    .line 347
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.iflytek.cmcc.CALL_RECEIVE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.iflytek.cmcc.schedule.ALARM_ALERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string/jumbo v1, "com.iflytek.cmcc.SMS_RECEIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v2, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 351
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lawr;->a(Landroid/content/Context;)Lawr;

    move-result-object v0

    invoke-virtual {v0}, Lawr;->a()V

    .line 390
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lawy;->a(Landroid/content/Context;)Lawy;

    move-result-object v0

    invoke-virtual {v0}, Lawy;->a()V

    .line 391
    return-void
.end method

.method static synthetic f(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->b()V

    return-void
.end method

.method static synthetic g(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->f()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 277
    const/16 v0, 0x2712

    if-eq v0, p1, :cond_0

    .line 292
    :goto_0
    return-void

    .line 280
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 291
    :goto_1
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 284
    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->d()V

    .line 285
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 286
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->finish()V

    goto :goto_1

    .line 280
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onClickTitleLeftButton()V
    .locals 1

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onClickTitleLeftButton()V

    .line 317
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 78
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 80
    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->setTitleBarVisible(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->setTitleBarBg()V

    .line 83
    const-string/jumbo v4, "style_title_white"

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->setTitleNameStyle(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v4, "image.but_back_nor"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {p0, v4, v5}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->setTitleLeftButtonImage(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 85
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->setSeperatorButton(I)V

    .line 86
    const-string/jumbo v4, "\u7279\u8272\u4eba\u7269 "

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->setTitleName(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->q()V

    .line 90
    new-instance v4, Lazi;

    invoke-direct {v4, p0}, Lazi;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->h:Lazi;

    .line 91
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->h:Lazi;

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->l:Lazi$b;

    invoke-virtual {v4, v5}, Lazi;->a(Lazi$b;)V

    .line 92
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->h:Lazi;

    invoke-virtual {v4}, Lazi;->a()V

    .line 94
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lawu;->a(Landroid/content/Context;)Lawu;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->a:Lawu;

    .line 95
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->a:Lawu;

    invoke-virtual {v4}, Lawu;->b()Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, "netList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;>;"
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lawx;->a(Landroid/content/Context;)Lawx;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->e:Lawx;

    .line 98
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->a(Landroid/content/Intent;)V

    .line 99
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->c:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    invoke-static {v0, v4}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->b(Ljava/util/List;Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->d:Ljava/util/List;

    .line 100
    invoke-static {p0}, Lawu;->a(Landroid/content/Context;)Lawu;

    move-result-object v4

    invoke-virtual {v4}, Lawu;->a()Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    move-result-object v1

    .line 101
    .local v1, "personalizedRingtoneEntity":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->d:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 102
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->d:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    const v4, 0x7f0300d6

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->setContentView(I)V

    .line 106
    const v4, 0x7f0b0534

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->f:Landroid/widget/ListView;

    .line 107
    new-instance v4, Lawq;

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->d:Ljava/util/List;

    invoke-direct {v4, p0, v5}, Lawq;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->b:Lawq;

    .line 108
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->f:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->b:Lawq;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->d:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->a()V

    .line 113
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->e:Lawx;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lawx;->a(Lawx$a;)V

    .line 114
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->e:Lawx;

    invoke-virtual {v4, v7}, Lawx;->a(Z)J

    .line 130
    :goto_0
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->e()V

    .line 131
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v4

    invoke-virtual {v4}, Lhl;->c()Z

    move-result v4

    if-nez v4, :cond_2

    .line 117
    const v4, 0xc3ba6

    invoke-direct {p0, v4}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->a(I)V

    goto :goto_0

    .line 119
    :cond_2
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->e:Lawx;

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->i:Lawx$a;

    invoke-virtual {v4, v5}, Lawx;->a(Lawx$a;)V

    .line 120
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->e:Lawx;

    invoke-virtual {v4, v6}, Lawx;->a(Z)J

    move-result-wide v2

    .line 121
    .local v2, "result":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    .line 122
    invoke-direct {p0, v7}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->a(I)V

    goto :goto_0

    .line 124
    :cond_3
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->b()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 395
    const-string/jumbo v0, "PersonalizedRingtoneActivity"

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->h:Lazi;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->h:Lazi;

    invoke-virtual {v0, v2}, Lazi;->a(Lazi$b;)V

    .line 398
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->h:Lazi;

    invoke-virtual {v0}, Lazi;->b()V

    .line 399
    iput-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->h:Lazi;

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->g:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 403
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, v1}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 404
    iput-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->g:Landroid/content/BroadcastReceiver;

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->j:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->j:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 409
    iput-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->j:Landroid/os/Handler;

    .line 412
    :cond_2
    iput-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->a:Lawu;

    .line 413
    iput-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->c:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    .line 414
    iput-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->d:Ljava/util/List;

    .line 415
    iput-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->f:Landroid/widget/ListView;

    .line 417
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->b:Lawq;

    if-eqz v0, :cond_3

    .line 418
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->b:Lawq;

    invoke-virtual {v0}, Lawq;->b()V

    .line 419
    iput-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->b:Lawq;

    .line 421
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->e:Lawx;

    if-eqz v0, :cond_4

    .line 422
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->e:Lawx;

    invoke-virtual {v0, v2}, Lawx;->a(Lawx$a;)V

    .line 423
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->e:Lawx;

    invoke-virtual {v0}, Lawx;->cancelRequest()V

    .line 424
    iput-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->e:Lawx;

    .line 427
    :cond_4
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onDestroy()V

    .line 428
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 321
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 322
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    const/4 v0, 0x1

    .line 326
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 257
    return-void
.end method
