.class public Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;
.super Landroid/app/Activity;
.source "AlarmNewsDisplayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

.field private b:Lcom/iflytek/base/skin/customView/XTextView;

.field private c:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private d:Z

.field private e:Lcom/iflytek/base/skin/customView/XTextView;

.field private f:Lcom/iflytek/base/skin/customView/XTextView;

.field private g:Lcom/iflytek/base/skin/customView/XTextView;

.field private h:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private i:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private j:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private k:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lavo;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/skin/customView/XImageView;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/skin/customView/XTextView;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lavp;

.field private q:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->b:Lcom/iflytek/base/skin/customView/XTextView;

    .line 54
    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->c:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->d:Z

    .line 57
    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->e:Lcom/iflytek/base/skin/customView/XTextView;

    .line 59
    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->f:Lcom/iflytek/base/skin/customView/XTextView;

    .line 60
    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->g:Lcom/iflytek/base/skin/customView/XTextView;

    .line 62
    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->h:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 63
    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->i:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 64
    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->j:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 65
    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->k:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 67
    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->l:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->m:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->n:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->o:Ljava/util/List;

    .line 74
    new-instance v0, Lavp;

    new-instance v1, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity$1;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;)V

    invoke-direct {v0, p0, v1}, Lavp;-><init>(Landroid/content/Context;Lwd;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->p:Lavp;

    .line 116
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity$2;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->q:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 160
    const-string/jumbo v1, "AlarmNewsDisplayActivity"

    const-string/jumbo v2, "notifyLoadFailed"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 162
    .local v0, "message":Landroid/os/Message;
    const-string/jumbo v1, "\u52a0\u8f7d\u5931\u8d25,\u70b9\u51fb\u91cd\u8bd5"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 163
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 164
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->q:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 165
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 168
    const-string/jumbo v1, "AlarmNewsDisplayActivity"

    const-string/jumbo v2, "notifyLoadSuccess"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->d()V

    .line 170
    iput-boolean v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->d:Z

    .line 171
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 172
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 173
    iput v3, v0, Landroid/os/Message;->what:I

    .line 174
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->q:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 175
    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 306
    const-string/jumbo v1, "AlarmNewsDisplayActivity"

    const-string/jumbo v2, "initIntent()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :try_start_0
    const-string/jumbo v1, "schedule"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AlarmNewsDisplayActivity"

    const-string/jumbo v2, "schedule convert failed"

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 313
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;)Lcom/iflytek/base/skin/customView/XTextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->b:Lcom/iflytek/base/skin/customView/XTextView;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->l:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 321
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/iflytek/viafly/Home;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 325
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.iflytek.cmcc.ACTION_LUANCH_HOME_TO_BROWSER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string/jumbo v3, "from_where"

    const/16 v4, 0x24

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    const-string/jumbo v3, "com.iflytek.cmcc.EXTRA_CODE_SCAN_URL"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_1
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->l:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 334
    .local v2, "type":I
    :goto_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(I)V

    .line 335
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->finish()V

    goto :goto_0

    .line 330
    .end local v2    # "type":I
    :catch_0
    move-exception v0

    .line 331
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "AlarmNewsDisplayActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Nothing available to handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 333
    .end local v0    # "anfe":Landroid/content/ActivityNotFoundException;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method static synthetic c(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;)Lcom/iflytek/base/skin/customView/XLinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->c:Lcom/iflytek/base/skin/customView/XLinearLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->n:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->o:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 257
    const-string/jumbo v0, "AlarmNewsDisplayActivity"

    const-string/jumbo v1, "onClick"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 303
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 260
    :pswitch_1
    const-string/jumbo v0, "AlarmNewsDisplayActivity"

    const-string/jumbo v1, "onClick:alarm_news_display_close"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->finish()V

    goto :goto_0

    .line 264
    :pswitch_2
    const-string/jumbo v0, "AlarmNewsDisplayActivity"

    const-string/jumbo v1, "onClick:alarm_news_display_more_news"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->l:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :pswitch_3
    const-string/jumbo v0, "AlarmNewsDisplayActivity"

    const-string/jumbo v1, "onClick:alarm_news_display_layout_news0"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->m:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavo;

    invoke-virtual {v0}, Lavo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :pswitch_4
    const-string/jumbo v0, "AlarmNewsDisplayActivity"

    const-string/jumbo v1, "onClick:alarm_news_display_layout_news1"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->m:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavo;

    invoke-virtual {v0}, Lavo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :pswitch_5
    const-string/jumbo v0, "AlarmNewsDisplayActivity"

    const-string/jumbo v1, "onClick:alarm_news_display_layout_news2"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->m:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavo;

    invoke-virtual {v0}, Lavo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :pswitch_6
    const-string/jumbo v0, "AlarmNewsDisplayActivity"

    const-string/jumbo v1, "onClick:alarm_news_display_layout_news3"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->m:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavo;

    invoke-virtual {v0}, Lavo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 288
    :pswitch_7
    const-string/jumbo v0, "AlarmNewsDisplayActivity"

    const-string/jumbo v1, "onClick:alarm_news_display_layout_middle_loading"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->d:Z

    if-nez v0, :cond_0

    .line 290
    const-string/jumbo v0, "AlarmNewsDisplayActivity"

    const-string/jumbo v1, "click reloading"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->b:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "\u6b63\u5728\u52a0\u8f7d"

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->p:Lavp;

    invoke-virtual {v0}, Lavp;->a()J

    goto/16 :goto_0

    .line 296
    :pswitch_8
    const-string/jumbo v0, "AlarmNewsDisplayActivity"

    const-string/jumbo v1, "onClick:alarm_news_display_nomore_remind"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_REMIND_ALARM_NEWS__SETTING"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 298
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->finish()V

    goto/16 :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0017
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 179
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 180
    invoke-static {p0}, Lxb;->a(Landroid/content/Context;)Lxb;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->alarm_new_dlg:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lxb;->a(Ljava/lang/String;)V

    .line 182
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->a(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    const-string/jumbo v1, "AlarmNewsDisplayActivity"

    const-string/jumbo v2, "initIntent failed!"

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->finish()V

    .line 186
    :cond_0
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->setContentView(I)V

    .line 188
    const v1, 0x7f0b0017

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->b:Lcom/iflytek/base/skin/customView/XTextView;

    .line 189
    const v1, 0x7f0b0018

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->c:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 191
    const v1, 0x7f0b0029

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->e:Lcom/iflytek/base/skin/customView/XTextView;

    .line 193
    const v1, 0x7f0b0028

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->f:Lcom/iflytek/base/skin/customView/XTextView;

    .line 194
    const v1, 0x7f0b0027

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->g:Lcom/iflytek/base/skin/customView/XTextView;

    .line 196
    const v1, 0x7f0b001a

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->h:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 197
    const v1, 0x7f0b001d

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->i:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 198
    const v1, 0x7f0b0020

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->j:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 199
    const v1, 0x7f0b0023

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->k:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 201
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->b:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, p0}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->c:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1, p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->g:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, p0}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-boolean v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->d:Z

    if-nez v1, :cond_2

    .line 206
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->b:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 207
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->c:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1, v4}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 214
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->e:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, p0}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->f:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, p0}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->h:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1, p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->h:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1, p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 220
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->i:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1, p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->i:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1, p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 222
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->j:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1, p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->j:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1, p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 224
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->k:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1, p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->k:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1, p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 227
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->n:Ljava/util/List;

    const v1, 0x7f0b001b

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XImageView;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->n:Ljava/util/List;

    const v1, 0x7f0b001e

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XImageView;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->n:Ljava/util/List;

    const v1, 0x7f0b0021

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XImageView;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->n:Ljava/util/List;

    const v1, 0x7f0b0024

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XImageView;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->o:Ljava/util/List;

    const v1, 0x7f0b001c

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->o:Ljava/util/List;

    const v1, 0x7f0b001f

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->o:Ljava/util/List;

    const v1, 0x7f0b0022

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->o:Ljava/util/List;

    const v1, 0x7f0b0025

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->p:Lavp;

    invoke-virtual {v1}, Lavp;->a()J

    .line 244
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->c()V

    .line 247
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 249
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 250
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 251
    .local v0, "statusBarColor":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 253
    .end local v0    # "statusBarColor":I
    :cond_1
    return-void

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->b:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 211
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->c:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 378
    const-string/jumbo v0, "AlarmNewsDisplayActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onKeyDown()keycode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "KeyEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->finish()V

    .line 381
    const/4 v0, 0x1

    .line 383
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 394
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 395
    const-string/jumbo v0, "AlarmNewsDisplayActivity"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 388
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 389
    const-string/jumbo v0, "AlarmNewsDisplayActivity"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 357
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 373
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 362
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 363
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v1

    const-string/jumbo v2, "image.mainpage_list_mid_press"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 364
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 365
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 366
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 357
    :sswitch_data_0
    .sparse-switch
        0x7f0b001a -> :sswitch_0
        0x7f0b001d -> :sswitch_0
        0x7f0b0020 -> :sswitch_0
        0x7f0b0023 -> :sswitch_0
    .end sparse-switch
.end method
