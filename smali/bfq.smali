.class public Lbfq;
.super Ljava/lang/Object;


# static fields
.field private static A:I

.field private static B:Ljava/lang/String;

.field private static C:Ljava/lang/String;

.field private static D:Ljava/lang/String;

.field private static E:Ljava/lang/String;

.field private static F:I

.field private static G:I

.field private static H:J

.field private static I:J

.field private static volatile J:Ljava/lang/String;

.field private static K:I

.field private static volatile L:I

.field private static M:I

.field private static N:I

.field private static O:Z

.field private static P:I

.field private static Q:Z

.field private static R:Ljava/lang/String;

.field private static S:Z

.field private static T:Lbhy;

.field static a:Lbhx;

.field static b:Lbhx;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field static e:Ljava/lang/String;

.field static f:Ljava/lang/String;

.field static g:Z

.field static h:I

.field static i:J

.field static j:Z

.field public static k:Z

.field static volatile l:Ljava/lang/String;

.field static m:Z

.field static n:I

.field static o:J

.field static p:I

.field private static q:Lbhc;

.field private static r:Lcom/tencent/wxop/stat/StatReportStrategy;

.field private static s:Z

.field private static t:Z

.field private static u:I

.field private static v:I

.field private static w:I

.field private static x:I

.field private static y:I

.field private static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x64

    const/16 v5, 0x1e

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lbhn;->b()Lbhc;

    move-result-object v0

    sput-object v0, Lbfq;->q:Lbhc;

    new-instance v0, Lbhx;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lbhx;-><init>(I)V

    sput-object v0, Lbfq;->a:Lbhx;

    new-instance v0, Lbhx;

    invoke-direct {v0, v3}, Lbhx;-><init>(I)V

    sput-object v0, Lbfq;->b:Lbhx;

    sget-object v0, Lcom/tencent/wxop/stat/StatReportStrategy;->APP_LAUNCH:Lcom/tencent/wxop/stat/StatReportStrategy;

    sput-object v0, Lbfq;->r:Lcom/tencent/wxop/stat/StatReportStrategy;

    sput-boolean v2, Lbfq;->s:Z

    sput-boolean v3, Lbfq;->t:Z

    const/16 v0, 0x7530

    sput v0, Lbfq;->u:I

    const v0, 0x186a0

    sput v0, Lbfq;->v:I

    sput v5, Lbfq;->w:I

    const/16 v0, 0xa

    sput v0, Lbfq;->x:I

    sput v6, Lbfq;->y:I

    sput v5, Lbfq;->z:I

    sput v3, Lbfq;->A:I

    const-string/jumbo v0, "__HIBERNATE__"

    sput-object v0, Lbfq;->c:Ljava/lang/String;

    const-string/jumbo v0, "__HIBERNATE__TIME"

    sput-object v0, Lbfq;->d:Ljava/lang/String;

    const-string/jumbo v0, "__MTA_KILL__"

    sput-object v0, Lbfq;->e:Ljava/lang/String;

    sput-object v4, Lbfq;->B:Ljava/lang/String;

    const-string/jumbo v0, "mta_channel"

    sput-object v0, Lbfq;->E:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lbfq;->f:Ljava/lang/String;

    const/16 v0, 0xb4

    sput v0, Lbfq;->F:I

    sput-boolean v2, Lbfq;->g:Z

    sput v6, Lbfq;->h:I

    const-wide/16 v0, 0x2710

    sput-wide v0, Lbfq;->i:J

    const/16 v0, 0x400

    sput v0, Lbfq;->G:I

    sput-boolean v3, Lbfq;->j:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lbfq;->H:J

    const-wide/32 v0, 0x493e0

    sput-wide v0, Lbfq;->I:J

    sput-boolean v3, Lbfq;->k:Z

    const-string/jumbo v0, "pingma.qq.com:80"

    sput-object v0, Lbfq;->l:Ljava/lang/String;

    const-string/jumbo v0, "http://pingma.qq.com:80/mstat/report"

    sput-object v0, Lbfq;->J:Ljava/lang/String;

    sput v2, Lbfq;->K:I

    sput v2, Lbfq;->L:I

    const/16 v0, 0x14

    sput v0, Lbfq;->M:I

    sput v2, Lbfq;->N:I

    sput-boolean v2, Lbfq;->O:Z

    const/16 v0, 0x1000

    sput v0, Lbfq;->P:I

    sput-boolean v2, Lbfq;->Q:Z

    sput-object v4, Lbfq;->R:Ljava/lang/String;

    sput-boolean v2, Lbfq;->S:Z

    sput-object v4, Lbfq;->T:Lbhy;

    sput-boolean v3, Lbfq;->m:Z

    sput v2, Lbfq;->n:I

    const-wide/16 v0, 0x2710

    sput-wide v0, Lbfq;->o:J

    const/16 v0, 0x200

    sput v0, Lbfq;->p:I

    return-void
.end method

.method public static a()Lcom/tencent/wxop/stat/StatReportStrategy;
    .locals 1

    sget-object v0, Lbfq;->r:Lcom/tencent/wxop/stat/StatReportStrategy;

    return-object v0
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "_mta_ky_tag_"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lbhs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbht;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Lbfq;->b:Lbhx;

    iget-object v0, v0, Lbhx;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    sget-object v0, Lbfq;->q:Lbhc;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "can\'t find custom key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbhc;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x2760

    invoke-static {p0, v0, v1}, Lbfq;->a(III)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lbfq;->q:Lbhc;

    const-string/jumbo v1, "setSendPeriodMinutes can not exceed the range of [1, 7*24*60] minutes."

    invoke-virtual {v0, v1}, Lbhc;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput p0, Lbfq;->F:I

    goto :goto_0
.end method

.method static a(J)V
    .locals 2

    invoke-static {}, Lbia;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lbfq;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lbhs;->b(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v0, 0x0

    invoke-static {v0}, Lbfq;->a(Z)V

    sget-object v0, Lbfq;->q:Lbhc;

    const-string/jumbo v1, "MTA is disable for current SDK version"

    invoke-virtual {v0, v1}, Lbhc;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static a(Landroid/content/Context;Lbhx;)V
    .locals 3

    iget v0, p1, Lbhx;->a:I

    sget-object v1, Lbfq;->b:Lbhx;

    iget v1, v1, Lbhx;->a:I

    if-ne v0, v1, :cond_1

    sput-object p1, Lbfq;->b:Lbhx;

    iget-object v0, p1, Lbhx;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lbfq;->a(Lorg/json/JSONObject;)V

    sget-object v0, Lbfq;->b:Lbhx;

    iget-object v0, v0, Lbhx;->b:Lorg/json/JSONObject;

    const-string/jumbo v1, "iplist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lbfu;->a(Landroid/content/Context;)Lbfu;

    move-result-object v0

    sget-object v1, Lbfq;->b:Lbhx;

    iget-object v1, v1, Lbhx;->b:Lorg/json/JSONObject;

    const-string/jumbo v2, "iplist"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbfu;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lbhx;->a:I

    sget-object v1, Lbfq;->a:Lbhx;

    iget v1, v1, Lbhx;->a:I

    if-ne v0, v1, :cond_0

    sput-object p1, Lbfq;->a:Lbhx;

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lbhx;Lorg/json/JSONObject;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v4, "v"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iget v0, p1, Lbhx;->d:I

    if-eq v0, v4, :cond_6

    move v0, v1

    :goto_1
    iput v4, p1, Lbhx;->d:I

    move v2, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "c"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v0, "c"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, p1, Lbhx;->b:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lbfq;->q:Lbhc;

    invoke-virtual {v1, v0}, Lbhc;->b(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :cond_2
    :try_start_1
    const-string/jumbo v4, "m"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "m"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lbhx;->c:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lbfq;->q:Lbhc;

    invoke-virtual {v1, v0}, Lbhc;->b(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    if-ne v2, v1, :cond_5

    :try_start_2
    invoke-static {}, Lbia;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbgp;->a(Landroid/content/Context;)Lbgp;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lbgp;->a(Lbhx;)V

    :cond_4
    iget v0, p1, Lbhx;->a:I

    sget-object v1, Lbfq;->b:Lbhx;

    iget v1, v1, Lbhx;->a:I

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Lbhx;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lbfq;->a(Lorg/json/JSONObject;)V

    iget-object v0, p1, Lbhx;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lbfq;->b(Lorg/json/JSONObject;)V

    :cond_5
    invoke-static {p0, p1}, Lbfq;->a(Landroid/content/Context;Lbhx;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, Lbht;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "_mta_ky_tag_"

    invoke-static {p0, v1, v0}, Lbhs;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lbfq;->b:Lbhx;

    iget v2, v2, Lbhx;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Lbfq;->b:Lbhx;

    invoke-static {p0, v2, v0}, Lbfq;->a(Landroid/content/Context;Lbhx;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lbfq;->q:Lbhc;

    invoke-virtual {v1, v0}, Lbhc;->b(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    sget-object v2, Lbfq;->a:Lbhx;

    iget v2, v2, Lbhx;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Lbfq;->a:Lbhx;

    invoke-static {p0, v2, v0}, Lbfq;->a(Landroid/content/Context;Lbhx;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "rs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatReportStrategy;->getStatReportStrategy(I)Lcom/tencent/wxop/stat/StatReportStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    sput-object v0, Lbfq;->r:Lcom/tencent/wxop/stat/StatReportStrategy;

    invoke-static {}, Lbfq;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lbfq;->q:Lbhc;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Change to ReportStrategy:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/StatReportStrategy;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbhc;->h(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Lcom/tencent/wxop/stat/StatReportStrategy;)V
    .locals 3

    sput-object p0, Lbfq;->r:Lcom/tencent/wxop/stat/StatReportStrategy;

    sget-object v0, Lcom/tencent/wxop/stat/StatReportStrategy;->PERIOD:Lcom/tencent/wxop/stat/StatReportStrategy;

    if-eq p0, v0, :cond_0

    const-wide/16 v0, 0x0

    sput-wide v0, Lbfs;->c:J

    :cond_0
    invoke-static {}, Lbfq;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lbfq;->q:Lbhc;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Change to statSendStrategy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbhc;->h(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    sget-object v0, Lbfq;->q:Lbhc;

    const-string/jumbo v1, "the length of installChannel can not exceed the range of 128 bytes."

    invoke-virtual {v0, v1}, Lbhc;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput-object p0, Lbfq;->D:Ljava/lang/String;

    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string/jumbo v0, "rs"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatReportStrategy;->getStatReportStrategy(I)Lcom/tencent/wxop/stat/StatReportStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lbfq;->a(Lcom/tencent/wxop/stat/StatReportStrategy;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lbfq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lbfq;->q:Lbhc;

    const-string/jumbo v1, "rs not found."

    invoke-virtual {v0, v1}, Lbhc;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 2

    sput-boolean p0, Lbfq;->t:Z

    if-nez p0, :cond_0

    sget-object v0, Lbfq;->q:Lbhc;

    const-string/jumbo v1, "!!!!!!MTA StatService has been disabled!!!!!!"

    invoke-virtual {v0, v1}, Lbhc;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static a(III)Z
    .locals 1

    if-lt p0, p1, :cond_0

    if-gt p0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lbhn;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lbhn;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-class v1, Lbfq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbfq;->C:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lbfq;->C:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    :try_start_1
    sget-object v0, Lbfq;->C:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {p0}, Lbhn;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbfq;->C:Ljava/lang/String;

    :cond_1
    sget-object v0, Lbfq;->C:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lbfq;->C:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lbfq;->q:Lbhc;

    const-string/jumbo v2, "AppKey can not be null or empty, please read Developer\'s Guide first!"

    invoke-virtual {v0, v2}, Lbhc;->e(Ljava/lang/Object;)V

    :cond_3
    sget-object v0, Lbfq;->C:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized b(I)V
    .locals 2

    const-class v0, Lbfq;

    monitor-enter v0

    :try_start_0
    sput p0, Lbfq;->L:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_1

    sget-object v0, Lbfq;->q:Lbhc;

    const-string/jumbo v1, "ctx in StatConfig.setAppKey() is null"

    invoke-virtual {v0, v1}, Lbhc;->e(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_3

    :cond_2
    sget-object v0, Lbfq;->q:Lbhc;

    const-string/jumbo v1, "appkey in StatConfig.setAppKey() is null or exceed 256 bytes"

    invoke-virtual {v0, v1}, Lbhc;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lbfq;->C:Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-static {p0}, Lbfq;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbfq;->C:Ljava/lang/String;

    :cond_4
    invoke-static {p1}, Lbfq;->c(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0}, Lbhn;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbfq;->c(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    sget-object v0, Lbfq;->C:Ljava/lang/String;

    invoke-static {p0, v0}, Lbfq;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    sget-object v0, Lbfq;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbhn;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "sm"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "sm"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_b

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    if-lez v0, :cond_3

    invoke-static {}, Lbfq;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lbfq;->q:Lbhc;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "match sleepTime:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " minutes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbhc;->b(Ljava/lang/Object;)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    add-long/2addr v4, v6

    sget-object v0, Lbfq;->d:Ljava/lang/String;

    invoke-static {p0, v0, v4, v5}, Lbhs;->b(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v0, 0x0

    invoke-static {v0}, Lbfq;->a(Z)V

    sget-object v0, Lbfq;->q:Lbhc;

    const-string/jumbo v4, "MTA is disable for current SDK version"

    invoke-virtual {v0, v4}, Lbhc;->c(Ljava/lang/Object;)V

    :cond_3
    const-string/jumbo v0, "sv"

    const-string/jumbo v4, "2.0.3"

    invoke-static {v3, v0, v4}, Lbfq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lbfq;->q:Lbhc;

    const-string/jumbo v2, "match sdk version:2.0.3"

    invoke-virtual {v0, v2}, Lbhc;->b(Ljava/lang/Object;)V

    move v0, v1

    :goto_2
    const-string/jumbo v2, "md"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lbfq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lbfq;->q:Lbhc;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "match MODEL:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbhc;->b(Ljava/lang/Object;)V

    move v0, v1

    :cond_4
    const-string/jumbo v2, "av"

    invoke-static {p0}, Lbhn;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lbfq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Lbfq;->q:Lbhc;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "match app version:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lbhn;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbhc;->b(Ljava/lang/Object;)V

    move v0, v1

    :cond_5
    const-string/jumbo v2, "mf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lbfq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v0, Lbfq;->q:Lbhc;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "match MANUFACTURER:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbhc;->b(Ljava/lang/Object;)V

    move v0, v1

    :cond_6
    const-string/jumbo v2, "osv"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lbfq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v0, Lbfq;->q:Lbhc;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "match android SDK version:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbhc;->b(Ljava/lang/Object;)V

    move v0, v1

    :cond_7
    const-string/jumbo v2, "ov"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lbfq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v0, Lbfq;->q:Lbhc;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "match android SDK version:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbhc;->b(Ljava/lang/Object;)V

    move v0, v1

    :cond_8
    const-string/jumbo v2, "ui"

    invoke-static {p0}, Lbgp;->a(Landroid/content/Context;)Lbgp;

    move-result-object v4

    invoke-virtual {v4, p0}, Lbgp;->b(Landroid/content/Context;)Lbhd;

    move-result-object v4

    invoke-virtual {v4}, Lbhd;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lbfq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v0, Lbfq;->q:Lbhc;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "match imei:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lbgp;->a(Landroid/content/Context;)Lbgp;

    move-result-object v4

    invoke-virtual {v4, p0}, Lbgp;->b(Landroid/content/Context;)Lbhd;

    move-result-object v4

    invoke-virtual {v4}, Lbhd;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbhc;->b(Ljava/lang/Object;)V

    move v0, v1

    :cond_9
    const-string/jumbo v2, "mid"

    invoke-static {p0}, Lbfq;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lbfq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v0, Lbfq;->q:Lbhc;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "match mid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lbfq;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbhc;->b(Ljava/lang/Object;)V

    move v0, v1

    :cond_a
    if-eqz v0, :cond_0

    const-string/jumbo v0, "2.0.3"

    invoke-static {v0}, Lbhn;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lbfq;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lbfq;->q:Lbhc;

    invoke-virtual {v1, v0}, Lbhc;->b(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_b
    :try_start_1
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_d

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto/16 :goto_1

    :cond_c
    move v0, v2

    goto/16 :goto_2

    :cond_d
    move v0, v2

    goto/16 :goto_1
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lbfq;->q:Lbhc;

    const-string/jumbo v1, "statReportUrl cannot be null or empty."

    invoke-virtual {v0, v1}, Lbhc;->e(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sput-object p0, Lbfq;->J:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/net/URI;

    sget-object v1, Lbfq;->J:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbfq;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lbfq;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lbfq;->q:Lbhc;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lbfq;->J:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", domain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lbfq;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbhc;->b(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lbfq;->q:Lbhc;

    invoke-virtual {v1, v0}, Lbhc;->d(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static b(Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lbia;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lbfq;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    sget-object v0, Lbfq;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbfq;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lbfq;->q:Lbhc;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "hibernateVer:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", current version:2.0.3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbhc;->h(Ljava/lang/Object;)V

    :cond_2
    invoke-static {v0}, Lbhn;->b(Ljava/lang/String;)J

    move-result-wide v0

    const-string/jumbo v2, "2.0.3"

    invoke-static {v2}, Lbhn;->b(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    invoke-static {v0, v1}, Lbfq;->a(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lbfq;->q:Lbhc;

    const-string/jumbo v1, "__HIBERNATE__ not found."

    invoke-virtual {v0, v1}, Lbhc;->h(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Lbfq;->j:Z

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lbfq;->s:Z

    return v0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-class v1, Lbfq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbfq;->D:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lbfq;->D:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lbfq;->E:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {p0, v0, v2}, Lbhs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbfq;->D:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lbfq;->D:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {p0}, Lbhn;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbfq;->D:Ljava/lang/String;

    :cond_2
    sget-object v0, Lbfq;->D:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lbfq;->D:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    sget-object v0, Lbfq;->q:Lbhc;

    const-string/jumbo v2, "installChannel can not be null or empty, please read Developer\'s Guide first!"

    invoke-virtual {v0, v2}, Lbhc;->d(Ljava/lang/Object;)V

    :cond_4
    sget-object v0, Lbfq;->D:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static c(I)V
    .locals 0

    if-gez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput p0, Lbfq;->N:I

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    sget-object v0, Lbfq;->q:Lbhc;

    const-string/jumbo v1, "the length of installChannel can not exceed the range of 128 bytes."

    invoke-virtual {v0, v1}, Lbhc;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput-object p1, Lbfq;->D:Ljava/lang/String;

    sget-object v0, Lbfq;->E:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lbhs;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lbfq;->t:Z

    return v0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lbfq;->C:Ljava/lang/String;

    if-nez v2, :cond_2

    sput-object p0, Lbfq;->C:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v2, Lbfq;->C:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lbfq;->C:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbfq;->C:Ljava/lang/String;

    move v0, v1

    goto :goto_0
.end method

.method public static d()I
    .locals 1

    sget v0, Lbfq;->u:I

    return v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "mta.acc.qq"

    sget-object v1, Lbfq;->f:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lbhs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()I
    .locals 1

    sget v0, Lbfq;->y:I

    return v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Lbfq;->q:Lbhc;

    const-string/jumbo v1, "Context for getCustomUid is null."

    invoke-virtual {v0, v1}, Lbhc;->e(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lbfq;->R:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, "MTA_CUSTOM_UID"

    const-string/jumbo v1, ""

    invoke-static {p0, v0, v1}, Lbhs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbfq;->R:Ljava/lang/String;

    :cond_1
    sget-object v0, Lbfq;->R:Ljava/lang/String;

    goto :goto_0
.end method

.method public static f()I
    .locals 1

    sget v0, Lbfq;->z:I

    return v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lbfn;->a(Landroid/content/Context;)Lbfn;

    move-result-object v0

    invoke-virtual {v0}, Lbfn;->a()Lbfj;

    move-result-object v0

    invoke-virtual {v0}, Lbfj;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public static g()I
    .locals 1

    sget v0, Lbfq;->x:I

    return v0
.end method

.method public static h()I
    .locals 1

    sget v0, Lbfq;->A:I

    return v0
.end method

.method static i()I
    .locals 1

    sget v0, Lbfq;->w:I

    return v0
.end method

.method public static j()I
    .locals 1

    sget v0, Lbfq;->v:I

    return v0
.end method

.method public static k()I
    .locals 1

    sget v0, Lbfq;->F:I

    return v0
.end method

.method public static l()I
    .locals 1

    sget v0, Lbfq;->G:I

    return v0
.end method

.method public static m()Z
    .locals 1

    sget-boolean v0, Lbfq;->k:Z

    return v0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    sget-object v0, Lbfq;->J:Ljava/lang/String;

    return-object v0
.end method

.method public static o()I
    .locals 1

    sget v0, Lbfq;->M:I

    return v0
.end method

.method static p()V
    .locals 1

    sget v0, Lbfq;->N:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lbfq;->N:I

    return-void
.end method

.method static q()I
    .locals 1

    sget v0, Lbfq;->N:I

    return v0
.end method

.method public static r()Z
    .locals 1

    sget-boolean v0, Lbfq;->Q:Z

    return v0
.end method

.method public static s()Lbhy;
    .locals 1

    sget-object v0, Lbfq;->T:Lbhy;

    return-object v0
.end method
