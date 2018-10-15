.class public Lahi;
.super Laht;
.source "HomeNewUserGuideHelper.java"


# static fields
.field public static a:Z


# instance fields
.field private c:I

.field private d:Z

.field private e:Lcom/iflytek/viafly/guide/UserGuideView;

.field private f:Lpp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lahi;->a:Z

    return-void
.end method

.method public constructor <init>(Lahu;)V
    .locals 1
    .param p1, "homeContext"    # Lahu;

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1}, Laht;-><init>(Lahu;)V

    .line 47
    iput v0, p0, Lahi;->c:I

    .line 52
    iput-boolean v0, p0, Lahi;->d:Z

    .line 63
    return-void
.end method

.method static synthetic a(Lahi;)Lcom/iflytek/viafly/guide/UserGuideView;
    .locals 1
    .param p0, "x0"    # Lahi;

    .prologue
    .line 40
    iget-object v0, p0, Lahi;->e:Lcom/iflytek/viafly/guide/UserGuideView;

    return-object v0
.end method

.method static synthetic a(Lahi;Lcom/iflytek/viafly/guide/UserGuideView;)Lcom/iflytek/viafly/guide/UserGuideView;
    .locals 0
    .param p0, "x0"    # Lahi;
    .param p1, "x1"    # Lcom/iflytek/viafly/guide/UserGuideView;

    .prologue
    .line 40
    iput-object p1, p0, Lahi;->e:Lcom/iflytek/viafly/guide/UserGuideView;

    return-object p1
.end method

.method static synthetic a(Lahi;Z)V
    .locals 0
    .param p0, "x0"    # Lahi;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lahi;->d(Z)V

    return-void
.end method

.method private d(Z)V
    .locals 3
    .param p1, "isGuideSuccess"    # Z

    .prologue
    const/4 v0, 0x1

    .line 314
    iget-boolean v1, p0, Lahi;->d:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 315
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_WEITHER_GUIDE_FINISHED"

    invoke-virtual {v1, v2, v0}, Lil;->a(Ljava/lang/String;Z)V

    .line 316
    sput-boolean v0, Lahi;->a:Z

    .line 317
    invoke-virtual {p0}, Lahi;->o()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccACTION_USERGUIDE_CLICK"

    invoke-virtual {v1, v2}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 319
    :cond_0
    if-nez p1, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lahi;->e(Z)V

    .line 320
    return-void

    .line 319
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Z)V
    .locals 2
    .param p1, "showFlag"    # Z

    .prologue
    .line 327
    iput-boolean p1, p0, Lahi;->d:Z

    .line 328
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_NEW_GUIDE_SHOW"

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;Z)V

    .line 330
    return-void
.end method

.method private m()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lahi;->e:Lcom/iflytek/viafly/guide/UserGuideView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lahi;->f:Lpp;

    if-nez v0, :cond_0

    .line 97
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->l()Lpp;

    move-result-object v0

    iput-object v0, p0, Lahi;->f:Lpp;

    .line 99
    :cond_0
    iget-object v0, p0, Lahi;->f:Lpp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lahi;->f:Lpp;

    invoke-virtual {v0, v1}, Lpp;->d(Lju;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lahi;->f:Lpp;

    invoke-virtual {v0, v1}, Lpp;->c(Lju;)V

    .line 102
    :cond_1
    invoke-super {p0}, Laht;->a()Z

    move-result v0

    return v0
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 120
    iget-object v0, p0, Lahi;->e:Lcom/iflytek/viafly/guide/UserGuideView;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lahi;->e:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/guide/UserGuideView;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Laht;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 68
    invoke-virtual {p0}, Lahi;->d_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lahi;->j()V

    .line 74
    :cond_0
    invoke-super {p0, p1}, Laht;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public a(Z)Z
    .locals 2
    .param p1, "isFirst"    # Z

    .prologue
    .line 80
    invoke-direct {p0}, Lahi;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lahi;->t()Lcom/iflytek/viafly/Home$b;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iflytek/viafly/Home$b;->g:Z

    .line 83
    :cond_0
    invoke-super {p0, p1}, Laht;->a(Z)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 3

    .prologue
    .line 107
    invoke-virtual {p0}, Lahi;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lazk;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lahi;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccVERSION_CODE"

    .line 110
    invoke-virtual {p0}, Lahi;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->h(Landroid/content/Context;)I

    move-result v2

    .line 109
    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;I)V

    .line 111
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_GUIDE_PAGE_SHOW_V6"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 115
    :cond_0
    invoke-super {p0}, Laht;->c()Z

    move-result v0

    return v0
.end method

.method public c(Z)Z
    .locals 1
    .param p1, "isFirst"    # Z

    .prologue
    .line 88
    iget-object v0, p0, Lahi;->e:Lcom/iflytek/viafly/guide/UserGuideView;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lahi;->e:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/guide/UserGuideView;->a()V

    .line 91
    :cond_0
    invoke-super {p0, p1}, Laht;->c(Z)Z

    move-result v0

    return v0
.end method

.method public d_()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_GUIDE_PAGE_SHOW_V6"

    invoke-virtual {v1, v2, v0}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public g()V
    .locals 4

    .prologue
    .line 133
    iget-object v1, p0, Lahi;->e:Lcom/iflytek/viafly/guide/UserGuideView;

    if-eqz v1, :cond_0

    .line 137
    :try_start_0
    iget-object v1, p0, Lahi;->e:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/guide/UserGuideView;->b()V

    .line 138
    invoke-virtual {p0}, Lahi;->s()Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lahi;->e:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 139
    const/4 v1, 0x0

    iput-object v1, p0, Lahi;->e:Lcom/iflytek/viafly/guide/UserGuideView;

    .line 141
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 143
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lahi;->d(Z)V

    .line 144
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccVERSION_CODE"

    .line 145
    invoke-virtual {p0}, Lahi;->p()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lhl;->h(Landroid/content/Context;)I

    move-result v3

    .line 144
    invoke-virtual {v1, v2, v3}, Lil;->a(Ljava/lang/String;I)V

    .line 147
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_GUIDE_PAGE_SHOW_V6"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lil;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "HomeNewUserGuideHelper"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lahi;->d:Z

    return v0
.end method

.method public j()V
    .locals 5

    .prologue
    .line 216
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lahi;->e(Z)V

    .line 218
    new-instance v2, Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-virtual {p0}, Lahi;->p()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/iflytek/viafly/guide/UserGuideView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lahi;->e:Lcom/iflytek/viafly/guide/UserGuideView;

    .line 223
    invoke-virtual {p0}, Lahi;->s()Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lahi;->e:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 226
    iget-object v2, p0, Lahi;->e:Lcom/iflytek/viafly/guide/UserGuideView;

    iget v3, p0, Lahi;->c:I

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/guide/UserGuideView;->setUserGuideType(I)V

    .line 227
    new-instance v0, Lahi$1;

    invoke-direct {v0, p0}, Lahi$1;-><init>(Lahi;)V

    .line 293
    .local v0, "enterListener":Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lahi;->e:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/guide/UserGuideView;->setEnterListener(Landroid/view/View$OnClickListener;)V

    .line 298
    const-string/jumbo v2, "HomeNewUserGuideHelper"

    const-string/jumbo v3, "append OPERATION_USER_GUIDE OpLog, opCode == FD36014"

    invoke-static {v2, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 302
    .local v1, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "user_type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lahi;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string/jumbo v2, "userguide_enter"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-virtual {p0}, Lahi;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lxg;->a(Landroid/content/Context;)Lxg;

    move-result-object v2

    const-string/jumbo v3, "FD36014"

    .line 306
    invoke-virtual {v2, v3, v1}, Lxg;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 307
    return-void
.end method

.method public k()V
    .locals 0

    .prologue
    .line 333
    invoke-virtual {p0}, Lahi;->g()V

    .line 334
    return-void
.end method
