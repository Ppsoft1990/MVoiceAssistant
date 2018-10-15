.class Ltd$2;
.super Ljava/lang/Object;
.source "ApplicationLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltd;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltd;


# direct methods
.method constructor <init>(Ltd;)V
    .locals 0
    .param p1, "this$0"    # Ltd;

    .prologue
    .line 300
    iput-object p1, p0, Ltd$2;->a:Ltd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 304
    const-string/jumbo v0, "ApplicationLoader"

    const-string/jumbo v1, "initDelayTask"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-static {}, Lcom/iflytek/yd/log/LoggingTime;->resetTime()V

    .line 307
    iget-object v0, p0, Ltd$2;->a:Ltd;

    invoke-static {v0}, Ltd;->b(Ltd;)V

    .line 309
    iget-object v0, p0, Ltd$2;->a:Ltd;

    invoke-static {v0}, Ltd;->c(Ltd;)V

    .line 311
    iget-object v0, p0, Ltd$2;->a:Ltd;

    invoke-static {v0}, Ltd;->d(Ltd;)V

    .line 313
    iget-object v0, p0, Ltd$2;->a:Ltd;

    invoke-static {v0}, Ltd;->a(Ltd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lasw;->a(Landroid/content/Context;)V

    .line 315
    iget-object v0, p0, Ltd$2;->a:Ltd;

    invoke-static {v0}, Ltd;->a(Ltd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lats;->a(Landroid/content/Context;)Lats;

    .line 321
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CLEAR_CALL_SMS_NOTIFICATION"

    invoke-virtual {v0, v1}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    invoke-static {}, Lcom/iflytek/viafly/mms/NotifyManager;->a()Lcom/iflytek/viafly/mms/NotifyManager;

    move-result-object v0

    iget-object v1, p0, Ltd$2;->a:Ltd;

    invoke-static {v1}, Ltd;->a(Ltd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/mms/NotifyManager;->d(Landroid/content/Context;)V

    .line 328
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 329
    iget-object v0, p0, Ltd$2;->a:Ltd;

    sget-object v1, Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;->All:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    invoke-static {v1}, Laxm;->a(Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;)Laxm;

    move-result-object v1

    invoke-static {v0, v1}, Ltd;->a(Ltd;Laxm;)Laxm;

    .line 330
    iget-object v0, p0, Ltd$2;->a:Ltd;

    invoke-static {v0}, Ltd;->e(Ltd;)Laxm;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Ltd$2;->a:Ltd;

    invoke-static {v0}, Ltd;->e(Ltd;)Laxm;

    move-result-object v0

    invoke-virtual {v0}, Laxm;->a()V

    .line 341
    :cond_1
    invoke-static {}, Lhp;->a()Lhp;

    move-result-object v0

    iget-object v1, p0, Ltd$2;->a:Ltd;

    invoke-static {v1}, Ltd;->a(Ltd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhp;->c(Landroid/content/Context;)V

    .line 345
    iget-object v0, p0, Ltd$2;->a:Ltd;

    invoke-static {v0}, Ltd;->f(Ltd;)V

    .line 348
    iget-object v0, p0, Ltd$2;->a:Ltd;

    invoke-static {v0}, Ltd;->a(Ltd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    invoke-virtual {v0}, Lno;->d()V

    .line 350
    invoke-static {}, Lcom/iflytek/common/adaptation/AdaptationManager;->getInstance()Lcom/iflytek/common/adaptation/AdaptationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/AdaptationManager;->uploadAdaptLog()V

    .line 353
    iget-object v0, p0, Ltd$2;->a:Ltd;

    invoke-static {v0}, Ltd;->a(Ltd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbak;->a(Landroid/content/Context;)Lbak;

    move-result-object v0

    invoke-virtual {v0}, Lbak;->a()V

    .line 355
    iget-object v0, p0, Ltd$2;->a:Ltd;

    invoke-static {v0}, Ltd;->g(Ltd;)V

    .line 357
    iget-object v0, p0, Ltd$2;->a:Ltd;

    invoke-static {v0}, Ltd;->a(Ltd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Luo;->a(Landroid/content/Context;)Luo;

    move-result-object v0

    invoke-virtual {v0}, Luo;->a()V

    .line 360
    iget-object v0, p0, Ltd$2;->a:Ltd;

    invoke-static {v0}, Ltd;->a(Ltd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    sget-object v2, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_HOME_START:Lcom/iflytek/common/cmccauth/log/AuthScene;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Lcom/iflytek/common/cmccauth/log/AuthScene;Lnd;)V

    .line 362
    iget-object v0, p0, Ltd$2;->a:Ltd;

    invoke-static {v0, v4}, Ltd;->a(Ltd;Z)Z

    .line 364
    const-string/jumbo v0, "ApplicationLoader"

    const-string/jumbo v1, "initDelayTask end"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Ltd$2;->a:Ltd;

    invoke-static {v0, v4}, Ltd;->a(Ltd;Z)Z

    .line 370
    new-instance v0, Ltv;

    iget-object v1, p0, Ltd$2;->a:Ltd;

    invoke-static {v1}, Ltd;->a(Ltd;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ltv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ltv;->a()V

    .line 371
    const-string/jumbo v0, "ApplicationLoader"

    const-string/jumbo v1, "initDelayTask end"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method
