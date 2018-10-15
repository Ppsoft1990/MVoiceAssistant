.class Lbhg;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Landroid/util/DisplayMetrics;

.field d:I

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:I

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Landroid/content/Context;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "2.0.3"

    iput-object v0, p0, Lbhg;->b:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lbhg;->d:I

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lbhg;->e:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lbhg;->f:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbhg;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lbhg;->l:I

    iput-object v1, p0, Lbhg;->m:Ljava/lang/String;

    iput-object v1, p0, Lbhg;->n:Ljava/lang/String;

    iput-object v1, p0, Lbhg;->o:Landroid/content/Context;

    iput-object v1, p0, Lbhg;->p:Ljava/lang/String;

    iput-object v1, p0, Lbhg;->q:Ljava/lang/String;

    iput-object v1, p0, Lbhg;->r:Ljava/lang/String;

    iput-object v1, p0, Lbhg;->s:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbhg;->o:Landroid/content/Context;

    iget-object v0, p0, Lbhg;->o:Landroid/content/Context;

    invoke-static {v0}, Lbhn;->d(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lbhg;->c:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lbhg;->o:Landroid/content/Context;

    invoke-static {v0}, Lbhn;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbhg;->a:Ljava/lang/String;

    iget-object v0, p0, Lbhg;->o:Landroid/content/Context;

    invoke-static {v0}, Lbfq;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbhg;->h:Ljava/lang/String;

    iget-object v0, p0, Lbhg;->o:Landroid/content/Context;

    invoke-static {v0}, Lbhn;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbhg;->i:Ljava/lang/String;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbhg;->j:Ljava/lang/String;

    iget-object v0, p0, Lbhg;->o:Landroid/content/Context;

    invoke-static {v0}, Lbhn;->o(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lbhg;->l:I

    iget-object v0, p0, Lbhg;->o:Landroid/content/Context;

    invoke-static {v0}, Lbhn;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbhg;->k:Ljava/lang/String;

    iget-object v0, p0, Lbhg;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbhg;->m:Ljava/lang/String;

    iget v0, p0, Lbhg;->d:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lbhg;->o:Landroid/content/Context;

    invoke-static {v0}, Lbhn;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbhg;->p:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lbhg;->o:Landroid/content/Context;

    invoke-static {v0}, Lbhn;->u(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbhg;->q:Ljava/lang/String;

    iget-object v0, p0, Lbhg;->o:Landroid/content/Context;

    invoke-static {v0}, Lbhn;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbhg;->r:Ljava/lang/String;

    invoke-static {}, Lbhn;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbhg;->s:Ljava/lang/String;

    iget-object v0, p0, Lbhg;->o:Landroid/content/Context;

    invoke-static {v0}, Lbhn;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbhg;->n:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lbhf;)V
    .locals 0

    invoke-direct {p0, p1}, Lbhg;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method a(Lorg/json/JSONObject;Ljava/lang/Thread;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    if-nez p2, :cond_4

    iget-object v0, p0, Lbhg;->c:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbhg;->c:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbhg;->c:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "dpi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbhg;->c:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbhg;->c:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lbhg;->o:Landroid/content/Context;

    invoke-static {v0}, Lbfu;->a(Landroid/content/Context;)Lbfu;

    move-result-object v0

    invoke-virtual {v0}, Lbfu;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "bs"

    iget-object v2, p0, Lbhg;->o:Landroid/content/Context;

    invoke-static {v2}, Lbht;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ss"

    iget-object v2, p0, Lbhg;->o:Landroid/content/Context;

    invoke-static {v2}, Lbht;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v1, "wf"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lbhg;->o:Landroid/content/Context;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lbht;->a(Landroid/content/Context;I)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string/jumbo v1, "wflist"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v0, "sen"

    iget-object v1, p0, Lbhg;->p:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v0, "pcn"

    iget-object v1, p0, Lbhg;->o:Landroid/content/Context;

    invoke-static {v1}, Lbhn;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "osn"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "av"

    iget-object v1, p0, Lbhg;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ch"

    iget-object v1, p0, Lbhg;->h:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "mf"

    iget-object v1, p0, Lbhg;->f:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sv"

    iget-object v1, p0, Lbhg;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "osd"

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "prod"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "tags"

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "id"

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "fng"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "lch"

    iget-object v1, p0, Lbhg;->n:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ov"

    iget v1, p0, Lbhg;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "os"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "op"

    iget-object v1, p0, Lbhg;->i:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "lg"

    iget-object v1, p0, Lbhg;->g:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "md"

    iget-object v1, p0, Lbhg;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "tz"

    iget-object v1, p0, Lbhg;->j:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lbhg;->l:I

    if-eqz v0, :cond_3

    const-string/jumbo v0, "jb"

    iget v1, p0, Lbhg;->l:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    const-string/jumbo v0, "sd"

    iget-object v1, p0, Lbhg;->k:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "apn"

    iget-object v1, p0, Lbhg;->m:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "cpu"

    iget-object v1, p0, Lbhg;->q:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "abi"

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "abi2"

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ram"

    iget-object v1, p0, Lbhg;->r:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "rom"

    iget-object v1, p0, Lbhg;->s:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string/jumbo v0, "thn"

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "qq"

    iget-object v1, p0, Lbhg;->o:Landroid/content/Context;

    invoke-static {v1}, Lbfq;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "cui"

    iget-object v1, p0, Lbhg;->o:Landroid/content/Context;

    invoke-static {v1}, Lbfq;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbhg;->r:Ljava/lang/String;

    invoke-static {v0}, Lbhn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbhg;->r:Ljava/lang/String;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v4, :cond_5

    const-string/jumbo v0, "fram"

    iget-object v1, p0, Lbhg;->r:Ljava/lang/String;

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lbhg;->s:Ljava/lang/String;

    invoke-static {v0}, Lbhn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lbhg;->s:Ljava/lang/String;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v4, :cond_6

    const-string/jumbo v0, "from"

    iget-object v1, p0, Lbhg;->s:Ljava/lang/String;

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lbhg;->o:Landroid/content/Context;

    invoke-static {v0}, Lbgp;->a(Landroid/content/Context;)Lbgp;

    move-result-object v0

    iget-object v1, p0, Lbhg;->o:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lbgp;->b(Landroid/content/Context;)Lbhd;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "ui"

    iget-object v1, p0, Lbhg;->o:Landroid/content/Context;

    invoke-static {v1}, Lbgp;->a(Landroid/content/Context;)Lbgp;

    move-result-object v1

    iget-object v2, p0, Lbhg;->o:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lbgp;->b(Landroid/content/Context;)Lbhd;

    move-result-object v1

    invoke-virtual {v1}, Lbhd;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    const-string/jumbo v0, "mid"

    iget-object v1, p0, Lbhg;->o:Landroid/content/Context;

    invoke-static {v1}, Lbfq;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
